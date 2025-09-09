set_app_var search_path /home/ICer/Downloads/Lib
set ref_path /home/ICer/SerDes/ndm/ndm_libs/saed90nm_max.ndm
set tf_path ${search_path}/process/astro/tech/astroTechFile.tf

create_lib -technology $tf_path -ref_libs $ref_path SerDes.dlib

read_verilog -top system /home/ICer/SerDes/dft/output/SerDes.v

read_sdc /home/ICer/SerDes/dft/output/SerDes.sdc

set Tech $search_path/Technology_Kit/starrcxt
set_case_analysis 0 [get_ports test_mode]

read_parasitic_tech -layermap $Tech/tech2itf.map -tlup $Tech/tluplus/saed90nm_1p9m_1t_Cmax.tluplus  -name maxTLU

read_parasitic_tech -layermap $Tech/tech2itf.map -tlup $Tech/tluplus/saed90nm_1p9m_1t_Cmin.tluplus  -name minTLU

set_parasitic_parameters -late_spec maxTLU -early_spec minTLU

save_block -as _setup SerDes.dlib:system.design
