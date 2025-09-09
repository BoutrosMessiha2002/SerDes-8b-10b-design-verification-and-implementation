################################################################################
#
# Design name:  SerDes_routing
#
# Created by icc2 write_sdc on Tue Sep  9 00:06:35 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /home/ICer/SerDes/pnr/setup/script/setup.tcl, line 12
set_case_analysis 0 [get_ports {test_mode}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 35
create_clock -name fun_sclk -period 25 -waveform {0 12.5} [get_ports {fun_sclk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 38
create_clock -name fun_pclk -period 250 -waveform {0 125} [get_ports {fun_pclk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 41
create_clock -name scan_clk -period 500 -waveform {0 250} [get_ports {scan_clk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 67
set_clock_groups -name scan_clk_1 -physically_exclusive -group [get_clocks \
    {scan_clk}] -group [get_clocks {fun_sclk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 69
set_clock_groups -name scan_clk_2 -physically_exclusive -group [get_clocks \
    {scan_clk}] -group [get_clocks {fun_pclk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 71
set_clock_groups -name fun_sclk_1 -asynchronous -group [get_clocks {fun_sclk}] \
    -group [get_clocks {fun_pclk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 73
set_clock_groups -name fun_sclk_2 -asynchronous -group [get_clocks {fun_sclk}] \
    -group [get_clocks {scan_clk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 75
set_clock_groups -name fun_pclk_1 -asynchronous -group [get_clocks {fun_pclk}] \
    -group [get_clocks {scan_clk}]
set_propagated_clock [get_clocks {fun_sclk}]
set_propagated_clock [get_clocks {fun_pclk}]
set_propagated_clock [get_clocks {scan_clk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 42
set_false_path -from [get_clocks {fun_sclk}] -to [get_clocks {fun_pclk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 43
set_false_path -from [get_clocks {fun_pclk}] -to [get_clocks {fun_sclk}]
set_load -pin_load 4 [get_ports {rdispout}]
set_load -pin_load 4 [get_ports {k_err}]
set_load -pin_load 4 [get_ports {pdata[7]}]
set_load -pin_load 4 [get_ports {pdata[6]}]
set_load -pin_load 4 [get_ports {pdata[5]}]
set_load -pin_load 4 [get_ports {pdata[4]}]
set_load -pin_load 4 [get_ports {pdata[3]}]
set_load -pin_load 4 [get_ports {pdata[2]}]
set_load -pin_load 4 [get_ports {pdata[1]}]
set_load -pin_load 4 [get_ports {pdata[0]}]
set_load -pin_load 4 [get_ports {kout}]
set_load -pin_load 4 [get_ports {code_err}]
set_load -pin_load 4 [get_ports {disp_err}]
# Set latency for io paths.
# -origin user
set_clock_latency -min 0.7551 [get_clocks {fun_sclk}]
# -origin user
set_clock_latency -max 0.76664 [get_clocks {fun_sclk}]
# -origin user
set_clock_latency -min 0.72691 [get_clocks {fun_pclk}]
# -origin user
set_clock_latency -max 0.753555 [get_clocks {fun_pclk}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {fun_pclk}]
set_propagated_clock  [get_ports {fun_sclk}]
set_clock_uncertainty -setup 0.1 [get_clocks {fun_sclk}]
set_clock_uncertainty -hold 0.07 [get_clocks {fun_sclk}]
set_clock_uncertainty -setup 0.1 [get_clocks {fun_pclk}]
set_clock_uncertainty -hold 0.07 [get_clocks {fun_pclk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 12
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[7]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 13
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[6]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 14
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[5]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 15
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[4]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 16
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[3]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 17
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[2]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 18
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[1]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 19
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[0]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 20
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {kin}]
set_input_transition 0.2 [get_ports {fun_sclk}]
set_input_transition -rise 0.3 [get_ports {fun_pclk}]
set_input_transition -fall 0.2 [get_ports {fun_pclk}]
set_input_transition 0.2 [get_ports {scan_clk}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 45
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[7]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 46
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[6]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 47
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[5]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 48
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[4]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 49
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[3]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 50
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[2]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 51
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[1]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 52
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports \
    {data_in_8b[0]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 44
set_input_delay -clock [get_clocks {fun_pclk}] -max 0.4 [get_ports {kin}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 53
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {rdispout}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 54
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {k_err}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 58
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[7]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 59
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[6]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 60
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[5]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 61
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[4]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 62
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[3]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 63
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[2]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 64
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[1]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 65
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {pdata[0]}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 55
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {kout}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 56
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {code_err}]
# /home/ICer/SerDes/dft/output/SerDes.sdc, line 57
set_output_delay -clock [get_clocks {fun_sclk}] -max 0.4 [get_ports {disp_err}]
set_max_transition 2 [current_design]
set_max_transition 0.3 [get_clocks {fun_sclk}] -clock_path
set_max_transition 0.5 [get_clocks {fun_pclk}] -clock_path
set_max_transition 0.3 [get_clocks {scan_clk}] -clock_path
set_max_capacitance 2 [current_design]
