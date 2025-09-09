create_clock -name fun_sclk -period 25 -waveform {0 12.5}  [get_ports fun_sclk]

create_clock -name fun_pclk -period 250 -waveform {0 125}  [get_ports fun_pclk]
set_dont_touch_network [get_clocks {fun_sclk fun_pclk}]

set_clock_uncertainty -setup 0.1 [get_clocks fun_sclk]
set_clock_uncertainty -setup 0.1 [get_clocks fun_pclk]

set_clock_uncertainty -hold 0.07 [get_clocks fun_sclk]
set_clock_uncertainty -hold 0.07 [get_clocks fun_pclk]

set_max_transition 2 [current_design]
set_max_capacitance 2 [current_design]
set_driving_cell -lib_cell NBUFFX2 -pin Z [get_ports "kin data_in_8b"]
set_load 4 [get_ports "rdispout k_err kout code_err disp_err pdata"]

set_input_delay -clock fun_pclk -max 0.4 [get_ports "kin data_in_8b"]
set_output_delay -clock fun_sclk -max 0.4  [get_ports "rdispout k_err kout code_err disp_err pdata"]

set_clock_groups -asynchronous -group fun_sclk -group fun_pclk

set_false_path -from [get_clocks fun_sclk] -to [get_clocks fun_pclk]
set_false_path -from [get_clocks fun_pclk] -to [get_clocks fun_sclk]

set_app_var compile_ultra_ungroup_dw false
