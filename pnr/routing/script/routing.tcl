sh rm /home/ICer/SerDes/pnr/setup/script/SerDes.dlib/SerDes_cts/design.ndm.lock
set design SerDes
set design_lib_path /home/ICer/SerDes/pnr/setup/script
open_block $design_lib_path/${design}.dlib:${design}_cts.design
copy_block -from_block ${design}.dlib:${design}_cts.design -to_block ${design}_routing
current_block ${design}_routing.design

check_design -checks pre_route_stage
route_global
route_track
route_detail
check_pg_drc
check_routes


set FillerCells " */SHFILL1*"
create_stdcell_fillers -lib_cells $FillerCells
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_drc
check_routes -drc true
remove_stdcell_fillers_with_violation
check_legality
report_timing -max_paths 10 > ../report/timing.rpt
report_timing -max_paths 10 -delay_type min > ../report/hold_timing.rpt
check_routes -drc true > ../report/check_routes.rpt
check_pg_drc > ../report/final_drc.rpt
write_verilog  ../output/${design}_routing_Netlist.v
write_sdc -output ../output/${design}_routing_SDC.sdc
write_parasitics -format SPEF -output ../output/${design}_Routing_Spef.spef
write_def ../output/${design}_Routing_def.def
write_gds -view design -lib_cell_view frame -output_pin all -fill include -exclude_empty_block -long_names -keep_data_type ../../GDS/${design}_Routing_GDS.gds
save_block
