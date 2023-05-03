set partNumber $::env(XILINX_PART)
set boardName  $::env(XILINX_BOARD)

set ipName axi_dwidth_converter_512_64

create_project $ipName . -force -part $partNumber
set_property board_part $boardName [current_project]

create_ip -name axi_dwidth_converter -vendor xilinx.com -library ip -version 2.1 -module_name $ipName

set_property -dict [list CONFIG.ADDR_WIDTH {64} CONFIG.SI_DATA_WIDTH {64} CONFIG.MI_DATA_WIDTH {512} CONFIG.SI_ID_WIDTH {5} CONFIG.MI_DATA_WIDTH {512}] [get_ips $ipName]

generate_target {instantiation_template} [get_files ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]

#update_compile_order -fileset sources_1

generate_target all [get_files  ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]

#export_ip_user_files -of_objects [get_files /home/guillermo.izquierdo/project_3/project_3.srcs/sources_1/ip/axi_dwidth_converter_512_64/axi_dwidth_converter_512_64.xci] -no_script -sync -force -quiet

create_ip_run [get_files -of_objects [get_fileset sources_1] ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]

launch_runs -jobs 8 ${ipName}_synth_1
wait_on_run ${ipName}_synth_1
