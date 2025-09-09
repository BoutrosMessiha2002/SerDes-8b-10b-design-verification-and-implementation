
set design SerDes
sh rm /home/ICer/SerDes/pnr/setup/script/SerDes.dlib/_setup/design.ndm.lock

 
set design_lib_path /home/ICer/SerDes/pnr/setup/script
open_block $design_lib_path/${design}.dlib:_setup.design
copy_block -from_block ${design}.dlib:_setup.design -to_block ${design}_fp
current_block ${design}_fp.design
#start_gui

set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction horizontal
set_attribute [get_layers {M2 M4 M6 M8}] routing_direction vertical

set_attribute [get_layers {M1}] track_offset 0.03
set_attribute [get_layers {M2}] track_offset 0.03

set_ignored_layers -max_routing_layer [get_layers {M8}]
set_ignored_layers -max_routing_layer [get_layers {M9}]

set Name_unit [get_site_defs]
set_attribute [get_site_defs $Name_unit] is_default true
set_attribute [get_site_defs  $Name_unit] symmetry {Y}

initialize_floorplan -core_utilization 0.5 -shape R -orientation N -core_offset {15} -side_ratio {1 1} -flip_first_row false

place_pins -ports [get_ports *]


save_block 


