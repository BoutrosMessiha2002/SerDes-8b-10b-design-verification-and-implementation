lappend search_path "/home/ICer/Downloads/Lib/synopsys/models"
set lib_name "saed90nm_max.db"
set_app_var target_library $lib_name; #set target_library
set_app_var link_library "* $target_library"; #set link_library

sh rm -rf work
sh mkdir -p work
define_design_lib work -path ./work

set compile_top_all_paths true

analyze -format verilog -lib work ../../rtl/system.v
elaborate system -lib work


current_design
check_design
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

source ../cons/cons.tcl

link
compile -map_effort high -incremental
compile -top

report_timing -max_paths 50 > ../report/timing_report.rpt
report_area > ../report/area_report.rpt
report_power > ../report/power_report.rpt


write_sdc ../output/SerDes.sdc
write -format verilog -hierarchy -output ../output/SerDes.v
write -f ddc -hierarchy -output ../output/SerDes.ddc



