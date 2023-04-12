// Copyright 2023 Universidad Politecnica de Madrid.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

// Description: Set FPGA defines depending on which board we are using
// Author: Pedro Lobo <pedro.lobo@upm.es>

`ifdef GENESYSII
 `define ARIANE_XILINX_ETH_RGMII
 `define ARIANE_XILINX_MEM_DDR3
 `define ARIANE_XILINX_CPU_RESET_ACTIVE_LOW
`elsif KC705
 `define ARIANE_XILINX_ETH_RGMII
 `define ARIANE_XILINX_MEM_DDR3
 `define ARIANE_XILINX_CPU_RESET_ACTIVE_HIGH
`elsif VC707
 `define ARIANE_XILINX_ETH_SGMII
 `define ARIANE_XILINX_MEM_DDR3
 `define ARIANE_XILINX_CPU_RESET_ACTIVE_HIGH
`elsif VCU118
 `define ARIANE_XILINX_ETH_SGMII
 `define ARIANE_XILINX_MEM_DDR4
 `define ARIANE_XILINX_MEM_DDR4_DQ_WIDTH 64
 `define ARIANE_XILINX_MEM_DDR4_DQS_WIDTH 8
 `define ARIANE_XILINX_MEM_DDR4_CS_WIDTH 1
 `define ARIANE_XILINX_CPU_RESET_ACTIVE_HIGH
`elsif VCU128
 `define ARIANE_XILINX_ETH_SGMII
 `define ARIANE_XILINX_MEM_DDR4
 `define ARIANE_XILINX_MEM_DDR4_DQ_WIDTH 72
 `define ARIANE_XILINX_MEM_DDR4_DQS_WIDTH 9
 `define ARIANE_XILINX_MEM_DDR4_CS_WIDTH 2
 `define ARIANE_XILINX_CPU_RESET_ACTIVE_HIGH
`else
 // This is *not* valid SystemVerilog and will trigger a syntax error but it
 // will stop compilation if no board constant is defined, which is the desired
 // effect. Unfortunately, SystemVerilog has no equivalent to C's #error
 $fatal(1, "One of the board constants (GENESYSII, KC705...) has to be defined")
`endif
