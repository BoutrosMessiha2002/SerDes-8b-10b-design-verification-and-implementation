set LIB_PATH "/home/ICer/Downloads/Lib/synopsys/models"
set NETLIST_PATH "/home/ICer/SerDes/synthesis/output"
set LIB_NAME "saed90nm_max.db"

lappend search_path "$LIB_PATH"
lappend search_path "$NETLIST_PATH"

set worst_case "$LIB_NAME"
set num 5

set_app_var target_library [list $worst_case]
set_app_var link_library "* $target_library"

sh rm -rf work
sh mkdir -p work
define_design_lib work -path ./work
remove_design -all

set design SerDes
set_svf ${design}.svf


read_ddc ${design}.ddc
read_sdc ${design}.sdc
link
current_design


set_scan_configuration -chain_count $num  -style multiplexed_flip_flop  -clock_mixing no_mix

set_dft_signal -view existing_dft   -port [get_ports scan_clk] -type ScanClock -timing {45 55} 
set_dft_signal -view existing_dft   -port [get_ports scan_rst] -type Reset -active 0
set_dft_signal -view existing_dft   -port [get_ports test_mode] -type TestMode -active 1
create_port scan_en -direction in
set_dft_signal -view spec -port [get_ports scan_en] -active 1 -type ScanEnable

for {set i 1} {$i<[expr $num+1]} {incr i} {
create_port scan_in_$i -direction in
set_dft_signal -view spec -port [get_ports scan_in_$i] -type ScanDataIn

create_port scan_out_$i -direction out
set_dft_signal -view spec -port [get_ports scan_out_$i] -type ScanDataOut
}

create_test_protocol
set_dft_insertion_configuration -preserve_design_name true -synthesis_optimization none
source ../cons/cons.tcl

set_fix_multiple_port_nets -all -buffer_constants
link
compile -scan -map_effort medium
#DFT DRC

dft_drc -verbose
preview_dft -show all

insert_dft
dft_drc
check_design
report_timing > ../report/dft_timing.rpt
dft_drc -coverage_estimate > ../report/rpt_dft.drc_coverage
dft_drc > ../report/drc.rpt
report_area > ../report/dft_area.rpt
report_qor > ../report/dft_qor.rpt
report_constraint -all_violators  > ../report/dft_violations.rpt
report_scan_path -chain all > ../report/scan_chains.rpt
report_dft_signal -view existing_dft  > ../report/dft_existing_dft.rpt
report_dft_signal -view spec > ../report/dft_spec.rpt


# ################################## #
# ============ Outputs ============= #
# ################################## #
set verilogout_no_tri	 true
set verilogout_equation  false
write -format ddc  -hierarchy -output ../output/${design}.ddc
write -format verilog  -hierarchy -output ../output/${design}.v
write_test_model -output ../output/${design}.ctl
write_sdc ../output/${design}.sdc 
# ---- SPF_File (STIL Protcol File) ---- # 
write_test_protocol -out ../output/${design}.spf
# ---- SDF_File (Standard Delay Format) ---- # 
write_sdf  ../output/${design}.sdf
# ---- def_File (reorder scan chains placment step) ---- #
write_scan_def -output ../output/${design}.def
set_svf -off

set_case_analysis 0 test_mode





