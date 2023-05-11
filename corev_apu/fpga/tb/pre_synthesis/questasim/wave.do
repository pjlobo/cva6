onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider tb_vcu128
add wave -noupdate /tb_vcu128/sys_clk_p
add wave -noupdate /tb_vcu128/sys_rst_n
add wave -noupdate /tb_vcu128/cpu_reset
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_act_n
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_adr
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_ba
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_bg
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_ck_c
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_ck_t
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_cke
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_cs_n
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_dm_dbi_n
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_dq
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_dqs_c
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_dqs_t
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_odt
add wave -noupdate -group c0_ddr4 /tb_vcu128/c0_ddr4_reset_n
add wave -noupdate -group eth /tb_vcu128/eth_int_n
add wave -noupdate -group eth /tb_vcu128/eth_mdc
add wave -noupdate -group eth /tb_vcu128/eth_mdio
add wave -noupdate -group eth /tb_vcu128/eth_rst_n
add wave -noupdate -group eth /tb_vcu128/eth_sgmii_rx_n
add wave -noupdate -group eth /tb_vcu128/eth_sgmii_rx_p
add wave -noupdate -group eth /tb_vcu128/eth_sgmii_rxck_n
add wave -noupdate -group eth /tb_vcu128/eth_sgmii_rxck_p
add wave -noupdate -group eth /tb_vcu128/eth_sgmii_tx_n
add wave -noupdate -group eth /tb_vcu128/eth_sgmii_tx_p
add wave -noupdate -group spi /tb_vcu128/spi_clk_o
add wave -noupdate -group spi /tb_vcu128/spi_miso
add wave -noupdate -group spi /tb_vcu128/spi_mosi
add wave -noupdate -group spi /tb_vcu128/spi_ss
add wave -noupdate -group jtag_dm /tb_vcu128/tck
add wave -noupdate -group jtag_dm /tb_vcu128/tdi
add wave -noupdate -group jtag_dm /tb_vcu128/tdo
add wave -noupdate -group jtag_dm /tb_vcu128/tms
add wave -noupdate -group jtag_dm /tb_vcu128/trst_n
add wave -noupdate /tb_vcu128/rx
add wave -noupdate /tb_vcu128/tx
add wave -noupdate /tb_vcu128/led
add wave -noupdate -divider i_ariane_xilinx
add wave -noupdate /tb_vcu128/i_ariane_xilinx/addr_map
add wave -noupdate /tb_vcu128/i_ariane_xilinx/axi_adapter_size
add wave -noupdate /tb_vcu128/i_ariane_xilinx/axi_ariane_req
add wave -noupdate /tb_vcu128/i_ariane_xilinx/axi_ariane_resp
add wave -noupdate /tb_vcu128/i_ariane_xilinx/axi_clint_req
add wave -noupdate /tb_vcu128/i_ariane_xilinx/axi_clint_resp
add wave -noupdate /tb_vcu128/i_ariane_xilinx/AXI_XBAR_CFG
add wave -noupdate /tb_vcu128/i_ariane_xilinx/AxiAddrWidth
add wave -noupdate /tb_vcu128/i_ariane_xilinx/AxiDataWidth
add wave -noupdate /tb_vcu128/i_ariane_xilinx/AxiIdWidthMaster
add wave -noupdate /tb_vcu128/i_ariane_xilinx/AxiIdWidthSlaves
add wave -noupdate /tb_vcu128/i_ariane_xilinx/AxiUserWidth
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_act_n
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_adr
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_ba
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_bg
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_ck_c
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_ck_t
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_cke
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_cs_n
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_dm_dbi_n
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_dq
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_dqs_c
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_dqs_t
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_odt
add wave -noupdate -group i_ariane_xilinx/c0_ddr4 /tb_vcu128/i_ariane_xilinx/c0_ddr4_reset_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/ddr_clock_out
add wave -noupdate /tb_vcu128/i_ariane_xilinx/ddr_sync_reset
add wave -noupdate /tb_vcu128/i_ariane_xilinx/clk
add wave -noupdate /tb_vcu128/i_ariane_xilinx/cpu_reset
add wave -noupdate /tb_vcu128/i_ariane_xilinx/cpu_resetn
add wave -noupdate -group i_ariane_xilinx/debug /tb_vcu128/i_ariane_xilinx/debug_req
add wave -noupdate -group i_ariane_xilinx/debug /tb_vcu128/i_ariane_xilinx/debug_req_irq
add wave -noupdate -group i_ariane_xilinx/debug /tb_vcu128/i_ariane_xilinx/debug_req_ready
add wave -noupdate -group i_ariane_xilinx/debug /tb_vcu128/i_ariane_xilinx/debug_req_valid
add wave -noupdate -group i_ariane_xilinx/debug /tb_vcu128/i_ariane_xilinx/debug_resp
add wave -noupdate -group i_ariane_xilinx/debug /tb_vcu128/i_ariane_xilinx/debug_resp_ready
add wave -noupdate -group i_ariane_xilinx/debug /tb_vcu128/i_ariane_xilinx/debug_resp_valid
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_axi_m_req
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_axi_m_resp
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_add
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_be
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_gnt
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_r_rdata
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_r_valid
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_req
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_wdata
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_master_we
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_slave_addr
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_slave_be
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_slave_rdata
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_slave_req
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_slave_wdata
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dm_slave_we
add wave -noupdate -group i_ariane_xilinx/dm /tb_vcu128/i_ariane_xilinx/dmactive
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_araddr
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arburst
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arcache
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arlen
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arlock
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arprot
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arqos
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arready
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arsize
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_arvalid
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awaddr
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awburst
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awcache
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awlen
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awlock
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awprot
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awqos
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awready
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awsize
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_awvalid
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_bready
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_bresp
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_bvalid
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_rdata
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_rlast
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_rready
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_rresp
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_rvalid
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_wdata
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_wlast
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_wready
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_wstrb
add wave -noupdate -group i_ariane_xilinx/dram /tb_vcu128/i_ariane_xilinx/dram_dwidth_axi_wvalid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_clk
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_int_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_mdc
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_mdio
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_rst_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_sgmii_rx_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_sgmii_rx_p
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_sgmii_rxck_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_sgmii_rxck_p
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_sgmii_tx_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/eth_sgmii_tx_p
add wave -noupdate /tb_vcu128/i_ariane_xilinx/ipi
add wave -noupdate /tb_vcu128/i_ariane_xilinx/irq
add wave -noupdate /tb_vcu128/i_ariane_xilinx/led
add wave -noupdate /tb_vcu128/i_ariane_xilinx/NBSlave
add wave -noupdate /tb_vcu128/i_ariane_xilinx/ndmreset
add wave -noupdate /tb_vcu128/i_ariane_xilinx/ndmreset_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/NumWords
add wave -noupdate /tb_vcu128/i_ariane_xilinx/pc_asserted
add wave -noupdate /tb_vcu128/i_ariane_xilinx/phy_tx_clk
add wave -noupdate /tb_vcu128/i_ariane_xilinx/pll_locked
add wave -noupdate /tb_vcu128/i_ariane_xilinx/rom_addr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/rom_rdata
add wave -noupdate /tb_vcu128/i_ariane_xilinx/rom_req
add wave -noupdate /tb_vcu128/i_ariane_xilinx/rst
add wave -noupdate /tb_vcu128/i_ariane_xilinx/rst_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/rtc
add wave -noupdate /tb_vcu128/i_ariane_xilinx/rx
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_araddr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arburst
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arcache
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arlen
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arlock
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arprot
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arqos
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arready
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arregion
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arsize
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_arvalid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awaddr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awburst
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awcache
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awlen
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awlock
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awprot
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awqos
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awready
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awregion
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awsize
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_awvalid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_bid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_bready
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_bresp
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_bvalid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_rdata
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_rid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_rlast
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_rready
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_rresp
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_rvalid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_wdata
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_wlast
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_wready
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_wstrb
add wave -noupdate /tb_vcu128/i_ariane_xilinx/s_axi_wvalid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/sd_clk_sys
add wave -noupdate /tb_vcu128/i_ariane_xilinx/spi_clk_i
add wave -noupdate /tb_vcu128/i_ariane_xilinx/spi_clk_o
add wave -noupdate /tb_vcu128/i_ariane_xilinx/spi_miso
add wave -noupdate /tb_vcu128/i_ariane_xilinx/spi_mosi
add wave -noupdate /tb_vcu128/i_ariane_xilinx/spi_ss
add wave -noupdate /tb_vcu128/i_ariane_xilinx/sw
add wave -noupdate /tb_vcu128/i_ariane_xilinx/sys_clk_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/sys_clk_p
add wave -noupdate /tb_vcu128/i_ariane_xilinx/sys_rst_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/tck
add wave -noupdate /tb_vcu128/i_ariane_xilinx/tdi
add wave -noupdate /tb_vcu128/i_ariane_xilinx/tdo
add wave -noupdate /tb_vcu128/i_ariane_xilinx/test_en
add wave -noupdate /tb_vcu128/i_ariane_xilinx/timer_irq
add wave -noupdate /tb_vcu128/i_ariane_xilinx/tms
add wave -noupdate /tb_vcu128/i_ariane_xilinx/trst_n
add wave -noupdate /tb_vcu128/i_ariane_xilinx/tx
add wave -noupdate -divider i_ariane_xilinx/i_axi_xbar
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/addr_map_i
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/AXI_USER_WIDTH
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/AxiIdWidthMstPorts
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/Cfg
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/clk_i
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/default_mst_port_i
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/en_default_mst_port_i
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/mst_reqs
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/mst_resps
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/rst_ni
add wave -noupdate -expand -subitemconfig {{/tb_vcu128/i_ariane_xilinx/i_axi_xbar/slv_reqs[0]} -expand} /tb_vcu128/i_ariane_xilinx/i_axi_xbar/slv_reqs
add wave -noupdate -expand -subitemconfig {{/tb_vcu128/i_ariane_xilinx/i_axi_xbar/slv_resps[0]} -expand} /tb_vcu128/i_ariane_xilinx/i_axi_xbar/slv_resps
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_axi_xbar/test_i
add wave -noupdate -divider i_ariane_xilinx/i_ariane/i_cva6/tracer_if
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/clk
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/commit_ack
add wave -noupdate -expand /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/commit_instr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/debug_mode
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/exception
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/fetch_ack
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/fetch_valid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/flush
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/flush_unissued
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/instruction
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/issue_ack
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/issue_sbe
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/ld_kill
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/ld_paddr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/ld_valid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/priv_lvl
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/resolve_branch
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/rstn
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/st_paddr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/st_valid
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/waddr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/wdata
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/we_fpr
add wave -noupdate /tb_vcu128/i_ariane_xilinx/i_ariane/i_cva6/tracer_if/we_gpr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6110000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 344
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {30000 ns}
