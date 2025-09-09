###################################################################

# Created by write_sdc on Tue Aug 26 08:02:23 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_fanout 8 [current_design]
set_max_transition 2 [current_design]
set_max_capacitance 2 [current_design]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[7]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[6]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[5]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[4]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[3]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[2]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[1]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports {data_in_8b[0]}]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports kin]
set_load -pin_load 4 [get_ports rdispout]
set_load -pin_load 4 [get_ports k_err]
set_load -pin_load 4 [get_ports {pdata[7]}]
set_load -pin_load 4 [get_ports {pdata[6]}]
set_load -pin_load 4 [get_ports {pdata[5]}]
set_load -pin_load 4 [get_ports {pdata[4]}]
set_load -pin_load 4 [get_ports {pdata[3]}]
set_load -pin_load 4 [get_ports {pdata[2]}]
set_load -pin_load 4 [get_ports {pdata[1]}]
set_load -pin_load 4 [get_ports {pdata[0]}]
set_load -pin_load 4 [get_ports kout]
set_load -pin_load 4 [get_ports code_err]
set_load -pin_load 4 [get_ports disp_err]
set_case_analysis 1 [get_ports test_mode]
create_clock [get_ports fun_sclk]  -period 25  -waveform {0 12.5}
set_clock_uncertainty -setup 0.1  [get_clocks fun_sclk]
set_clock_uncertainty -hold 0.07  [get_clocks fun_sclk]
create_clock [get_ports fun_pclk]  -period 250  -waveform {0 125}
set_clock_uncertainty -setup 0.1  [get_clocks fun_pclk]
set_clock_uncertainty -hold 0.07  [get_clocks fun_pclk]
create_clock [get_ports scan_clk]  -period 500  -waveform {0 250}
set_false_path   -from [get_clocks fun_sclk]  -to [get_clocks fun_pclk]
set_false_path   -from [get_clocks fun_pclk]  -to [get_clocks fun_sclk]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports kin]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[7]}]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[6]}]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[5]}]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[4]}]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[3]}]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[2]}]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[1]}]
set_input_delay -clock fun_pclk  -max 0.4  [get_ports {data_in_8b[0]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports rdispout]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports k_err]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports kout]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports code_err]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports disp_err]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[7]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[6]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[5]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[4]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[3]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[2]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[1]}]
set_output_delay -clock fun_sclk  -max 0.4  [get_ports {pdata[0]}]
set_clock_groups  -physically_exclusive -name scan_clk_1  -group [get_clocks   \
scan_clk] -group [get_clocks fun_sclk]
set_clock_groups  -physically_exclusive -name scan_clk_2  -group [get_clocks   \
scan_clk] -group [get_clocks fun_pclk]
set_clock_groups  -asynchronous -name fun_sclk_1  -group [get_clocks fun_sclk] \
-group [get_clocks fun_pclk]
set_clock_groups  -asynchronous -name fun_sclk_2  -group [get_clocks fun_sclk] \
-group [get_clocks scan_clk]
set_clock_groups  -asynchronous -name fun_pclk_1  -group [get_clocks fun_pclk] \
-group [get_clocks scan_clk]
