set partNumber $::env(XILINX_PART)
set boardName  $::env(XILINX_BOARD)
set boardNameShort $::env(BOARD)

set ipName xlnx_ddr4

create_project $ipName . -force -part $partNumber
set_property board_part $boardName [current_project]

create_ip -name ddr4 -vendor xilinx.com -library ip -version 2.2 -module_name $ipName

if {$boardNameShort eq "vcu128"} {
  set_property -dict [list CONFIG.C0_CLOCK_BOARD_INTERFACE {default_100mhz_clk} CONFIG.C0.DDR4_Clamshell {true} CONFIG.C0_DDR4_BOARD_INTERFACE {ddr4_sdram} CONFIG.C0.DDR4_InputClockPeriod {10000} CONFIG.C0.DDR4_CLKOUT0_DIVIDE {3} CONFIG.C0.DDR4_MemoryPart {MT40A512M16HA-075E} CONFIG.C0.DDR4_DataWidth {72} CONFIG.C0.DDR4_DataMask {NO_DM_NO_DBI} CONFIG.C0.DDR4_Ecc {true} CONFIG.C0.DDR4_AxiSelection {true} CONFIG.C0.DDR4_AxiDataWidth {512} CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {100} CONFIG.C0.BANK_GROUP_WIDTH {1} CONFIG.C0.CS_WIDTH {2}] [get_ips $ipName]
} else {
  puts "ERROR: unknown board, boardName = $boardName, boardNameShort = $boardNameShort\n"
  exit 2
}

generate_target {instantiation_template} [get_files ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]

generate_target all [get_files  ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]

#catch { config_ip_cache -export [get_ips -all ddr4_0] }
#export_ip_user_files -of_objects [get_files /home/guillermo.izquierdo/project_1/project_1.srcs/sources_1/ip/ddr4_0/ddr4_0.xci] -no_script -sync -force -quiet
#create_ip_run [get_files -of_objects [get_fileset sources_1] /home/guillermo.izquierdo/project_1/project_1.srcs/sources_1/ip/ddr4_0/ddr4_0.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]
#launch_runs -jobs 6 ddr4_0_synth_1
launch_runs -jobs 8 ${ipName}_synth_1
wait_on_run ${ipName}_synth_1
