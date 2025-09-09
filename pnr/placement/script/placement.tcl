sh rm /home/ICer/SerDes/pnr/setup/script/SerDes.dlib/SerDes_pp/design.ndm.lock
set design SerDes
 
set design_lib_path /home/ICer/SerDes/pnr/setup/script
open_block $design_lib_path/${design}.dlib:${design}_pp.design
copy_block -from_block ${design}.dlib:${design}_pp.design -to_block ${design}_pl
current_block ${design}_pl.design




read_def ../../../dft/output/${design}.def
check_design -checks pre_placement_stage

set_app_option  -name place.coarse.congestion_driven_max_util -value 0.7
set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_"
set_app_options -name opt.common.max_fanout   -value 20
set_app_options -name opt.tie_cell.max_fanout -value 20

get_lib_cell */NA*
get_lib_cell */IN*


add_spare_cells -cell_name SpareCell  -lib_cell "*/NAND2X2 */INVX1"  -num_instances 5

spread_spare_cells -cells [get_cells Spare*] -random_distribution
place_eco_cells -cells [get_cells Spare*] -legalize_only

set spare_cells [get_cells Spare*]
connect_pg_net -all_blocks -automatic

set_attribute [get_lib_cells saed90nm_max/TIEH] dont_use false  
set_attribute [get_lib_cells saed90nm_max/TIEH] dont_touch false
set_lib_cell_purpose -include all {saed90nm_max/TIEH}

set_attribute [get_lib_cells saed90nm_max/TIEL] dont_use false  
set_attribute [get_lib_cells saed90nm_max/TIEL] dont_touch false
set_lib_cell_purpose -include all {saed90nm_max/TIEL}

add_tie_cells -objects $spare_cells \
			  -tie_low_lib_cells  saed90nm_max/TIEL \
			  -tie_high_lib_cells saed90nm_max/TIEH \
		      -legalize
set_dont_touch $spare_cells
set_fixed_objects $spare_cells

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
connect_pg_net -all_blocks -automatic

check_pg_drc > ../report/before_placement_drc_spare.rpt

create_placement  -effort high  \
				  -timing_driven -buffering_aware_timing_driven \
				  -congestion -congestion_effort  medium   -incremental
				  
legalize_placement -incremental
check_pg_drc  > ../report/drc_legalized.rpt

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_drc > ../report/After_placement_drc.rpt

check_legality -verbose  > ../report/legality.rpt
check_routability   > ../report/routeability.rpt
report_utilization > ../report/utilization.rpt
check_pg_drc  > ../report/drc_final.rpt
report_design > ../report/design.rpt
report_cell   > ../report/cells.rpt
report_timing > ../report/timing.rpt

write_def ../output/${design}.def
write_verilog -include {all} ../output/${design}.v
save_block ; 
