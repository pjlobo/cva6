`timescale  1 ns / 1 ps

module tb_vcu128;
   logic sys_clk_p, sys_clk_n;
   logic sys_rst_n;
   logic trst_n;
   logic [7:0] led;

   logic cpu_reset;
   
   logic [16:0] c0_ddr4_adr;
   logic [1:0]  c0_ddr4_ba;
   logic [0:0]  c0_ddr4_cke;
   logic [1:0]  c0_ddr4_cs_n;
   wire  [8:0]  c0_ddr4_dm_dbi_n;
   wire  [71:0] c0_ddr4_dq;
   wire  [8:0]  c0_ddr4_dqs_c;
   wire  [8:0]  c0_ddr4_dqs_t;
   logic [0:0]  c0_ddr4_odt;
   logic [0:0]  c0_ddr4_bg;
   logic        c0_ddr4_reset_n;
   logic        c0_ddr4_act_n;
   logic [0:0]  c0_ddr4_ck_c;
   logic [0:0]  c0_ddr4_ck_t;

   logic eth_rst_n;
   logic eth_sgmii_rxck_p;
   logic eth_sgmii_rxck_n;
   logic eth_sgmii_rx_p;
   logic eth_sgmii_rx_n;
   logic eth_int_n;
   logic eth_sgmii_tx_p;
   logic eth_sgmii_tx_n;
   wire  eth_mdio;
   logic eth_mdc;

   logic spi_mosi;
   logic spi_miso;
   logic spi_ss;
   logic spi_clk_o;

   logic tck;
   logic tms;
   logic tdi;
   logic tdo;
   logic rx;
   logic tx;
   
   ariane_xilinx i_ariane_xilinx (.sys_clk_p, .sys_clk_n, .sys_rst_n, .trst_n, .led, .cpu_reset,
                                  .c0_ddr4_adr, .c0_ddr4_ba, .c0_ddr4_cke, .c0_ddr4_cs_n, .c0_ddr4_dm_dbi_n,
                                  .c0_ddr4_dq, .c0_ddr4_dqs_c, .c0_ddr4_dqs_t, .c0_ddr4_odt, .c0_ddr4_bg, .c0_ddr4_reset_n,
                                  .c0_ddr4_act_n, .c0_ddr4_ck_c, .c0_ddr4_ck_t,
                                  .eth_rst_n, .eth_sgmii_rxck_p, .eth_sgmii_rxck_n, .eth_sgmii_rx_p, .eth_sgmii_rx_n,
                                  .eth_int_n, .eth_sgmii_tx_p, .eth_sgmii_tx_n, .eth_mdio, .eth_mdc,
                                  .spi_mosi, .spi_miso, .spi_ss, .spi_clk_o,
                                  .tck, .tms, .tdi, .tdo, .rx, .tx
                                  );

`ifdef TB_VCU128_DDR4_MODEL
   
   // DDR4 Verilog model by Micron Technologies, Inc.
   `include "arch_defines.v"
   import arch_package::*;
   parameter UTYPE_density CONFIGURED_DENSITY = _8G;
   parameter int CONFIGURED_DQ_BITS = 16;
   parameter int CONFIGURED_RANKS = 1;
   `include "timing_tasks.sv"
   UTYPE_TimingParameters timing;
   UTYPE_dutconfig _dut_config;
   
   wire model_enable;
   assign model_enable = 1'b1;

   logic iDDR4_PWR, iDDR4_VREF_CA, iDDR4_VREF_DQ;

   DDR4_if #(.CONFIGURED_DQ_BITS(16)) iDDR4_U17();
   ddr4_model #(.CONFIGURED_DQ_BITS(16), .CONFIGURED_DENSITY(_8G), .CONFIGURED_RANKS(1))
     i_U17(.model_enable(model_enable), .iDDR4(iDDR4_U17));

   alias  iDDR4_U17.DQ[7:0] = c0_ddr4_dq[15:8];
   alias  iDDR4_U17.DQ[15:8] = c0_ddr4_dq[71:64];
   assign iDDR4_U17.ADDR[13:0] = c0_ddr4_adr[13:0];
   assign iDDR4_U17.WE_n_A14 = c0_ddr4_adr[14];
   assign iDDR4_U17.CAS_n_A15 = c0_ddr4_adr[15];
   assign iDDR4_U17.RAS_n_A16 = c0_ddr4_adr[16];
   assign iDDR4_U17.ADDR_17 = 1'b0; //c0_ddr4_adr[17];
   assign iDDR4_U17.CK[0] = c0_ddr4_ck_c;
   assign iDDR4_U17.CK[1] = c0_ddr4_ck_t;
   assign iDDR4_U17.ACT_n = c0_ddr4_act_n;
   assign iDDR4_U17.RESET_n = c0_ddr4_reset_n;
   assign iDDR4_U17.CS_n = c0_ddr4_cs_n[0];
   assign iDDR4_U17.CKE = c0_ddr4_cke;
   assign iDDR4_U17.ODT = c0_ddr4_odt;
   assign iDDR4_U17.BG = c0_ddr4_bg;
   assign iDDR4_U17.BA[1:0] = c0_ddr4_ba[1:0];
   alias  iDDR4_U17.DM_n[0] = c0_ddr4_dm_dbi_n[1];
   alias  iDDR4_U17.DM_n[1] = c0_ddr4_dm_dbi_n[8];
   alias  iDDR4_U17.DQS_t[0] = c0_ddr4_dqs_t[1];
   alias  iDDR4_U17.DQS_t[1] = c0_ddr4_dqs_t[8];
   alias  iDDR4_U17.DQS_c[0] = c0_ddr4_dqs_c[1];
   alias  iDDR4_U17.DQS_c[1] = c0_ddr4_dqs_c[8];
   assign iDDR4_U17.ZQ = 1'b1;
   assign iDDR4_U17.PWR = iDDR4_PWR;
   assign iDDR4_U17.VREF_CA = iDDR4_VREF_CA;
   assign iDDR4_U17.VREF_DQ = iDDR4_VREF_DQ;
   assign iDDR4_U17.PARITY = 1'b0;
   assign iDDR4_U17.TEN = 1'b0;
   assign iDDR4_U17.ALERT_n = 1'b1;
   
   DDR4_if #(.CONFIGURED_DQ_BITS(16)) iDDR4_U74();
   ddr4_model #(.CONFIGURED_DQ_BITS(16), .CONFIGURED_DENSITY(_8G), .CONFIGURED_RANKS(1))
     i_U74(.model_enable(model_enable), .iDDR4(iDDR4_U74));
   
   alias  iDDR4_U74.DQ[7:0] = c0_ddr4_dq[23:16];
   alias  iDDR4_U74.DQ[15:8] = c0_ddr4_dq[7:0];
   // Clamshell: 4 addr pairs ([13, 11], [8, 7], [6, 5] and [4, 3]) and the BA lines are interchanged
   assign iDDR4_U74.ADDR[2:0] = c0_ddr4_adr[2:0];
   assign iDDR4_U74.ADDR[3] = c0_ddr4_adr[4];
   assign iDDR4_U74.ADDR[4] = c0_ddr4_adr[3];
   assign iDDR4_U74.ADDR[5] = c0_ddr4_adr[6];
   assign iDDR4_U74.ADDR[6] = c0_ddr4_adr[5];
   assign iDDR4_U74.ADDR[7] = c0_ddr4_adr[8];
   assign iDDR4_U74.ADDR[8] = c0_ddr4_adr[7];
   assign iDDR4_U74.ADDR[10:9] = c0_ddr4_adr[10:9];
   assign iDDR4_U74.ADDR[11] = c0_ddr4_adr[13];
   assign iDDR4_U74.ADDR[12] = c0_ddr4_adr[12];
   assign iDDR4_U74.ADDR[13] = c0_ddr4_adr[11];
   assign iDDR4_U74.WE_n_A14 = c0_ddr4_adr[14];
   assign iDDR4_U74.CAS_n_A15 = c0_ddr4_adr[15];
   assign iDDR4_U74.RAS_n_A16 = c0_ddr4_adr[16];
   assign iDDR4_U74.ADDR_17 = 1'b0; //c0_ddr4_adr[17];
   assign iDDR4_U74.BG = c0_ddr4_bg;
   assign iDDR4_U74.BA[0] = c0_ddr4_ba[1];
   assign iDDR4_U74.BA[1] = c0_ddr4_ba[0];
   assign iDDR4_U74.CK[0] = c0_ddr4_ck_c;
   assign iDDR4_U74.CK[1] = c0_ddr4_ck_t;
   assign iDDR4_U74.ACT_n = c0_ddr4_act_n;
   assign iDDR4_U74.RESET_n = c0_ddr4_reset_n;
   assign iDDR4_U74.CS_n = c0_ddr4_cs_n[1];
   assign iDDR4_U74.CKE = c0_ddr4_cke;
   assign iDDR4_U74.ODT = c0_ddr4_odt;
   alias  iDDR4_U74.DM_n[0] = c0_ddr4_dm_dbi_n[2];
   alias  iDDR4_U74.DM_n[1] = c0_ddr4_dm_dbi_n[0];
   alias  iDDR4_U74.DQS_t[0] = c0_ddr4_dqs_t[2];
   alias  iDDR4_U74.DQS_t[1] = c0_ddr4_dqs_t[0];
   alias  iDDR4_U74.DQS_c[0] = c0_ddr4_dqs_c[2];
   alias  iDDR4_U74.DQS_c[1] = c0_ddr4_dqs_c[0];
   assign iDDR4_U74.ZQ = 1'b1;
   assign iDDR4_U74.PWR = iDDR4_PWR;
   assign iDDR4_U74.VREF_CA = iDDR4_VREF_CA;
   assign iDDR4_U74.VREF_DQ = iDDR4_VREF_DQ;
   assign iDDR4_U74.PARITY = 1'b0;
   assign iDDR4_U74.TEN = 1'b0;
   assign iDDR4_U74.ALERT_n = 1'b1;
   
   DDR4_if #(.CONFIGURED_DQ_BITS(16)) iDDR4_U18();
   ddr4_model #(.CONFIGURED_DQ_BITS(16), .CONFIGURED_DENSITY(_8G), .CONFIGURED_RANKS(1))
     i_U18(.model_enable(model_enable), .iDDR4(iDDR4_U18));
   
   alias  iDDR4_U18.DQ[7:0] = c0_ddr4_dq[31:24];
   alias  iDDR4_U18.DQ[15:8] = c0_ddr4_dq[55:48];
   assign iDDR4_U18.ADDR[13:0] = c0_ddr4_adr[13:0];
   assign iDDR4_U18.WE_n_A14 = c0_ddr4_adr[14];
   assign iDDR4_U18.CAS_n_A15 = c0_ddr4_adr[15];
   assign iDDR4_U18.RAS_n_A16 = c0_ddr4_adr[16];
   assign iDDR4_U18.ADDR_17 = 1'b0; //c0_ddr4_adr[17];
   assign iDDR4_U18.CK[0] = c0_ddr4_ck_c;
   assign iDDR4_U18.CK[1] = c0_ddr4_ck_t;
   assign iDDR4_U18.ACT_n = c0_ddr4_act_n;
   assign iDDR4_U18.RESET_n = c0_ddr4_reset_n;
   assign iDDR4_U18.CS_n = c0_ddr4_cs_n[0];
   assign iDDR4_U18.CKE = c0_ddr4_cke;
   assign iDDR4_U18.ODT = c0_ddr4_odt;
   assign iDDR4_U18.BG = c0_ddr4_bg;
   assign iDDR4_U18.BA[1:0] = c0_ddr4_ba[1:0];
   alias  iDDR4_U18.DM_n[0] = c0_ddr4_dm_dbi_n[3];
   alias  iDDR4_U18.DM_n[1] = c0_ddr4_dm_dbi_n[6];
   alias  iDDR4_U18.DQS_t[0] = c0_ddr4_dqs_t[3];
   alias  iDDR4_U18.DQS_t[1] = c0_ddr4_dqs_t[6];
   alias  iDDR4_U18.DQS_c[0] = c0_ddr4_dqs_c[3];
   alias  iDDR4_U18.DQS_c[1] = c0_ddr4_dqs_c[6];
   assign iDDR4_U18.ZQ = 1'b1;
   assign iDDR4_U18.PWR = iDDR4_PWR;
   assign iDDR4_U18.VREF_CA = iDDR4_VREF_CA;
   assign iDDR4_U18.VREF_DQ = iDDR4_VREF_DQ;
   assign iDDR4_U18.PARITY = 1'b0;
   assign iDDR4_U18.TEN = 1'b0;
   assign iDDR4_U18.ALERT_n = 1'b1;
   
   DDR4_if #(.CONFIGURED_DQ_BITS(16)) iDDR4_U73();
   ddr4_model #(.CONFIGURED_DQ_BITS(16), .CONFIGURED_DENSITY(_8G), .CONFIGURED_RANKS(1))
     i_U73(.model_enable(model_enable), .iDDR4(iDDR4_U73));
   
   alias  iDDR4_U73.DQ[7:0] = c0_ddr4_dq[39:32];
   alias  iDDR4_U73.DQ[15:8] = c0_ddr4_dq[63:56];
   // Clamshell: 4 addr pairs ([13, 11], [8, 7], [6, 5] and [4, 3]) and the BA lines are interchanged
   assign iDDR4_U73.ADDR[2:0] = c0_ddr4_adr[2:0];
   assign iDDR4_U73.ADDR[2:0] = c0_ddr4_adr[2:0];
   assign iDDR4_U73.ADDR[3] = c0_ddr4_adr[4];
   assign iDDR4_U73.ADDR[4] = c0_ddr4_adr[3];
   assign iDDR4_U73.ADDR[5] = c0_ddr4_adr[6];
   assign iDDR4_U73.ADDR[6] = c0_ddr4_adr[5];
   assign iDDR4_U73.ADDR[7] = c0_ddr4_adr[8];
   assign iDDR4_U73.ADDR[8] = c0_ddr4_adr[7];
   assign iDDR4_U73.ADDR[10:9] = c0_ddr4_adr[10:9];
   assign iDDR4_U73.ADDR[11] = c0_ddr4_adr[13];
   assign iDDR4_U73.ADDR[12] = c0_ddr4_adr[12];
   assign iDDR4_U73.ADDR[13] = c0_ddr4_adr[11];
   assign iDDR4_U73.WE_n_A14 = c0_ddr4_adr[14];
   assign iDDR4_U73.CAS_n_A15 = c0_ddr4_adr[15];
   assign iDDR4_U73.RAS_n_A16 = c0_ddr4_adr[16];
   assign iDDR4_U73.ADDR_17 = 1'b0; //c0_ddr4_adr[17];
   assign iDDR4_U73.BG = c0_ddr4_bg;
   assign iDDR4_U73.BA[0] = c0_ddr4_ba[1];
   assign iDDR4_U73.BA[1] = c0_ddr4_ba[0];
   assign iDDR4_U73.CK[0] = c0_ddr4_ck_c;
   assign iDDR4_U73.CK[1] = c0_ddr4_ck_t;
   assign iDDR4_U73.ACT_n = c0_ddr4_act_n;
   assign iDDR4_U73.RESET_n = c0_ddr4_reset_n;
   assign iDDR4_U73.CS_n = c0_ddr4_cs_n[1];
   assign iDDR4_U73.CKE = c0_ddr4_cke;
   assign iDDR4_U73.ODT = c0_ddr4_odt;
   alias  iDDR4_U73.DM_n[0] = c0_ddr4_dm_dbi_n[4];
   alias  iDDR4_U73.DM_n[1] = c0_ddr4_dm_dbi_n[7];
   alias  iDDR4_U73.DQS_t[0] = c0_ddr4_dqs_t[4];
   alias  iDDR4_U73.DQS_t[1] = c0_ddr4_dqs_t[7];
   alias  iDDR4_U73.DQS_c[0] = c0_ddr4_dqs_c[4];
   alias  iDDR4_U73.DQS_c[1] = c0_ddr4_dqs_c[7];
   assign iDDR4_U73.ZQ = 1'b1;
   assign iDDR4_U73.PWR = iDDR4_PWR;
   assign iDDR4_U73.VREF_CA = iDDR4_VREF_CA;
   assign iDDR4_U73.VREF_DQ = iDDR4_VREF_DQ;
   assign iDDR4_U73.PARITY = 1'b0;
   assign iDDR4_U73.TEN = 1'b0;
   assign iDDR4_U73.ALERT_n = 1'b1;
   
   DDR4_if #(.CONFIGURED_DQ_BITS(16)) iDDR4_U19();
   ddr4_model #(.CONFIGURED_DQ_BITS(16), .CONFIGURED_DENSITY(_8G), .CONFIGURED_RANKS(1))
     i_U19(.model_enable(model_enable), .iDDR4(iDDR4_U19));
   
   alias  iDDR4_U19.DQ[7:0] = c0_ddr4_dq[47:40];
   // alias  iDDR4_U19.DQ[15:8] = c0_ddr4_dq[XX:XX]; // NC
   assign iDDR4_U19.ADDR[13:0] = c0_ddr4_adr[13:0];
   assign iDDR4_U19.WE_n_A14 = c0_ddr4_adr[14];
   assign iDDR4_U19.CAS_n_A15 = c0_ddr4_adr[15];
   assign iDDR4_U19.RAS_n_A16 = c0_ddr4_adr[16];
   assign iDDR4_U19.ADDR_17 = 1'b0; //c0_ddr4_adr[17];
   assign iDDR4_U19.CK[0] = c0_ddr4_ck_c;
   assign iDDR4_U19.CK[1] = c0_ddr4_ck_t;
   assign iDDR4_U19.ACT_n = c0_ddr4_act_n;
   assign iDDR4_U19.RESET_n = c0_ddr4_reset_n;
   assign iDDR4_U19.CS_n = c0_ddr4_cs_n[0];
   assign iDDR4_U19.CKE = c0_ddr4_cke;
   assign iDDR4_U19.ODT = c0_ddr4_odt;
   assign iDDR4_U19.BG = c0_ddr4_bg;
   assign iDDR4_U19.BA[1:0] = c0_ddr4_ba[1:0];
   alias  iDDR4_U19.DM_n[0] = c0_ddr4_dm_dbi_n[5];
   assign  iDDR4_U19.DM_n[1] = 1'b1;
   alias  iDDR4_U19.DQS_t[0] = c0_ddr4_dqs_t[5];
   assign  iDDR4_U19.DQS_t[1] = 1'b1;
   alias  iDDR4_U19.DQS_c[0] = c0_ddr4_dqs_c[5];
   assign  iDDR4_U19.DQS_c[1] = 1'b0;
   assign iDDR4_U19.ZQ = 1'b1;
   assign iDDR4_U19.PWR = iDDR4_PWR;
   assign iDDR4_U19.VREF_CA = iDDR4_VREF_CA;
   assign iDDR4_U19.VREF_DQ = iDDR4_VREF_DQ;
   assign iDDR4_U19.PARITY = 1'b0;
   assign iDDR4_U19.TEN = 1'b0;
   assign iDDR4_U19.ALERT_n = 1'b1;

   // task power_up();
   //    iDDR4_PWR <= 0;
   //    iDDR4_VREF_CA <= 0;
   //    iDDR4_VREF_DQ <= 0;
   //    #(timing.tRESET);
   //    iDDR4_PWR <= 1;
   //    iDDR4_VREF_CA <= 1;
   //    iDDR4_VREF_DQ <= 1;
   //    #(timing.tPWRUP);
   //    //iDDR4.RESET_n <= 1;

   //    // #(timing.tRESETCKE);
   //    // deselect(timing.tPDc);
   //    // odt_out <= 1'b0;
   //    // // After CKE is registered HIGH and after tXPR has been satisfied, MRS commands may be issued.
   //    // @(negedge clk_val) deselect(timing.tXPR/timing.tCK);
   //    // active_cmd.cmd = cmdPDX;
   //    // active_cmd.tCK = timing.tCK;
   //    // _state.UpdateTable(active_cmd);
   // endtask
   assign iDDR4_PWR = 1'b1;
   assign iDDR4_VREF_CA = 1'b1;
   assign iDDR4_VREF_DQ = 1'b1;

   // Used in protected_modelsim/timing_tasks.sv
   function int GetWidth();
      return _dut_config.by_mode;
   endfunction

`endif // TB_VCU128_DDR4_MODEL

   always #5 sys_clk_p =~ sys_clk_p;

   assign sys_clk_n = ~sys_clk_p;

   initial begin
      sys_clk_p <= 1;

      eth_sgmii_rxck_p <= 1; eth_sgmii_rxck_n <= 0;

      eth_sgmii_rx_p <= 0; eth_sgmii_rx_n <= 1;

      eth_int_n <= 0;

      rx <= 1;

      {sys_rst_n, trst_n} <= 0;
      cpu_reset = 1;

 #200 sys_rst_n <= 1;
      cpu_reset <= 0;

      //#5000 cpu_reset <= 1;

      //#1000 cpu_reset <= 0;

      //#2000 sys_rst_n <= 0;
      //#200  sys_rst_n <= 1;

      // #6000 sys_rst_n <= 0;
      // #2000 sys_rst_n <= 1;

      // #6000 cpu_reset <= 1;
      // #2000 cpu_reset <= 0;

      //#50000 $finish;
   end

endmodule // tb_vcu128_top
