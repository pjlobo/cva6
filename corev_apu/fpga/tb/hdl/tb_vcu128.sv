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
   
   always #5 sys_clk_p =~ sys_clk_p;

   assign sys_clk_n = ~sys_clk_p;

   initial begin
      sys_clk_p <= 1;

      eth_sgmii_rxck_p <= 1; eth_sgmii_rxck_n <= 0;

      eth_sgmii_rx_p <= 0; eth_sgmii_rx_n <= 1;

      eth_int_n <= 0;

      rx <= 1;

      {sys_rst_n, trst_n} <= 0;
      cpu_reset <= 0;

      #200 sys_rst_n <= 1;

      //#1000 cpu_reset <= 0;

      //#5000 cpu_reset <= 1;

      //#1000 cpu_reset <= 0;

      #2000 sys_rst_n <= 0;
      #200  sys_rst_n <= 1;

      // #6000 sys_rst_n <= 0;
      // #2000 sys_rst_n <= 1;

      #6000 cpu_reset <= 1;
      #2000 cpu_reset <= 0;

      //#50000 $finish;
   end

endmodule // tb_vcu128_top
