sh rm /home/ICer/SerDes/pnr/setup/script/SerDes.dlib/SerDes_pl/design.ndm.lock
set design SerDes
 
set design_lib_path /home/ICer/SerDes/pnr/setup/script
open_block $design_lib_path/${design}.dlib:${design}_pl.design
copy_block -from_block ${design}.dlib:${design}_pl.design -to_block ${design}_cts
current_block ${design}_cts.design

set_host_options -max_cores 8

# Pre-CTS checks
check_design -checks pre_clock_tree_stage
# --- Reset all option and configration for skew and latency 
set_ignored_layers -max_routing_layer M8 -min_routing_layer M1

remove_clock_tree_options -all -target_skew -target_latency 
# --- Clock sources  
report_clocks 
report_clock_qor -type structure

# ================================================ #
# ================= Transitions ================== #
# ================================================ # 
# set_driving_cell -lib_cell */*_BUF_2 -pin Z [get_ports clk_i]
set_input_transition -rise 0.2 {fun_sclk scan_clk}
set_input_transition -rise 0.3 {fun_pclk}
set_input_transition -fall 0.2 {fun_sclk fun_pclk scan_clk}
set_clock_groups -asynchronous \
    -group {fun_sclk} \
    -group {fun_pclk}

set_false_path -from [get_clocks fun_sclk] -to [get_clocks fun_pclk]
set_false_path -from [get_clocks fun_pclk] -to [get_clocks fun_sclk]
# ================================================ #
# ============== Clock_Exceptions ================ #
# ================================================ # 
set_lib_cell_purpose -exclude cts [get_lib_cells -of [get_cells *]]

# ================================================ #
# ================= CTS_Cells ==================== #
# ================================================ #
# ----- Prefred ( High drive strength and INV Cells )
# ----- INV Prefred to resisitance of wire interconnect and trainstions  
set_lib_cell_purpose -include cts */INVX2 ; # This prefred Cell high Drive strength  
set_lib_cell_purpose -include cts */INVX4
set_lib_cell_purpose -include cts */*INVX8 ;   
set_lib_cell_purpose -include cts */*INVX16 ;
# ================================================ #
# ================ Skew & Latency ================ #
# ================================================ # 
set_clock_tree_options -target_skew 0.1 -clocks [get_clocks {fun_sclk scan_clk}]
set_clock_tree_options -target_skew 0.15 -clocks [get_clocks {fun_pclk}]
set_clock_tree_options -target_latency 0.7  -clocks [get_clocks {fun_pclk scan_clk}]
set_clock_tree_options -target_latency 0.8 -clocks [get_clocks {fun_sclk}]
set_max_capacitance 5 [get_clocks *]
#report_clock_trees

# ================================================ #
# ====================== NDR ===================== #
# ================================================ #
# defines non-default routing rules in the design.
create_routing_rule clk_network_NDR -multiplier_spacing 2 -multiplier_width 2
# ----- root:from port to first buffer  
set_clock_routing_rules -net_type root -rules clk_network_NDR -max_routing_layer M7 -min_routing_layer M2
# ----- internal : from first buffer to last buffer before sink   
set_clock_routing_rules -net_type internal -rules clk_network_NDR -max_routing_layer M7 -min_routing_layer M2
# ----- Sink >> from last buffer to sink(leaf) without NDR     
set_clock_routing_rules -net_type sink -default_rule -max_routing_layer M7 -min_routing_layer M2

# over all Rules 		
report_routing_rules -verbose 
# Special Clock net all Rules 
report_clock_routing_rules


# ================================================ #
# ================== DRC/Options ================= #
# ================================================ #
set_max_transition -clock_path 0.500 [get_clocks {fun_pclk} ]
set_max_transition -clock_path 0.300 [get_clocks {fun_sclk scan_clk} ]
set_app_options -name cts.common.user_instance_name_prefix -value "CTS_"
# ================================================ #
# ====================== CRP ===================== #
# ================================================ # 
# --- To reduce On-Chip Variation (OCV) effects, clock trees try to share as many buffers as possible. 
set_app_options -name time.remove_clock_reconvergence_pessimism -value true
#set_app_options -name cts.compile.enable_global_route -value true
report_clock_settings

# ================================================ #
# ====================== Opt ===================== #
# ================================================ # 

clock_opt -from build_clock -to build_clock

clock_opt -from route_clock -to route_clock

clock_opt -from route_clock -to final_opto
# ================================================ #
# ================== Connect_PG ================== #
# ================================================ # 
sizeof_collection [get_cells "CTS_*"]
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_drc
check_routes -drc true
# ================================================ #
# =================== Reports ==================== #
# ================================================ #
report_clock_tree_options  >  ../report/clock_tree_options.rpt
report_routing_rules -verbose >  ../report/cts_routing_rules.rpt
report_clock_routing_rules >  ../report/cts_clock_routing_rules.rpt
report_ports -verbose [get_ports *clk*] >  ../report/cts_ports.rpt
report_clock_settings >  ../report/cts_clk_setting.rpt
report_utilization -verbose > ../report/utilization.rpt
check_pg_drc  > ../report/pg_drc_final.rpt
check_routes -drc true > ../report/DRC.rpt
report_design > ../report/design.rpt
report_cell   > ../report/cells.rpt
report_qor    > ../report/qor.rpt
report_timing -delay_type min -nosplit > ../report/timing_min.rpt
report_timing -delay_type max -nosplit > ../report/timing_max.rpt
# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def ../output/${design}.def
write_verilog -include {all} ../output/${design}.v
save_block ;

