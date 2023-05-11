# Copyright 2023 Universidad Politécnica de Madrid
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
# Licensed under the Solderpad Hardware License v 2.1 (the “License”);
# you may not use this file except in compliance with the License, or,
# at your option, the Apache License version 2.0. You may obtain a
# copy of the License at https://solderpad.org/licenses/SHL-2.1. Unless
# required by applicable law or agreed to in writing, any work
# distributed under the License is distributed on an “AS IS” BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied. See the License for the specific language governing
# permissions and limitations under the License.
#
# Author: Pedro J. Lobo <pedro.lobo@upm.es>
# Date: 2023-05-10
# Description: Makefile for the VCU128 testbench.

library      ?= work
toplevel     ?= tb_vcu128 glbl
src-list     := sources.list
inc-path     := $(shell pwd)/hdl/
src          := $(shell xargs printf '\n%s' < $(src-list)  | cut -b 1-)
#src-vlog     := $(shell xargs printf '\n%s' < $(src-list) | grep -E ".*\.(v|sv|svh) " | cut -b 1-)
src-vlog     := $(shell grep -E '\.(v|sv|svh)$$' $(src-list) | xargs printf '\n%s' | cut -b 1-)
#src-vhdl     := $(shell xargs printf '\n%s' < $(src-list) | grep -E ".*\.vhdl?" | cut -b 1-)
src-vhdl     := $(shell grep -E "\.vhdl?$$" $(src-list) | xargs printf '\n%s' | cut -b 1-)
#compile_flag += +cover+i_dut -incr -64 -nologo -svinputport=compat -override_timescale 1ns/1ps -suppress 2583 -suppress 13262 +cover
compile_flags_vlog += -64 -nologo -svinputport=compat -suppress 2583 -mfcu ${CVA6_REPO_DIR}/corev_apu/fpga/src/vcu128.svh
compile_flags_vcom += -64 -nologo
#sim_opts     += -64 -coverage -classdebug -voptargs="+acc"
#sim_opts     += -L unisims_ver -L secureip -suppress 3837 -suppress 12003
sim_opts     += -64 -L unisims_ver -L secureip -classdebug -voptargs="+acc+$(library)+tb_vcu128." -suppress 3837 -suppress 12003
questa_version ?= ${QUESTASIM_VERSION}
#incdir       += ../common/ ../../axi/include/
incdir       += ${CVA6_REPO_DIR}/vendor/pulp-platform/axi/include ${CVA6_REPO_DIR}/corev_apu/register_interface/include ${CVA6_REPO_DIR}/vendor/pulp-platform/common_cells/include

SRCS = $(src)

# Iterate over all include directories and write them with +incdir+ prefixed
# +incdir+ works for Verilator and QuestaSim
list_incdir := $(foreach dir, ${incdir}, +incdir+$(dir))

all:
	@echo "src:"
	@echo $(src)
	@echo "src-vlog:"
	@echo $(src-vlog)
	@echo "src-vhdl:"
	@echo $(src-vhdl)

build: clean $(library)/.build

$(library)/.build:
	vlib${questa_version} $(library)
	vlog${questa_version} -work $(library) -pedanticerrors $(list_incdir) $(compile_flags_vlog) $(src-vlog)
	vcom${questa_version} -work $(library) -pedanticerrors $(list_incdir) $(compile_flags_vcom) $(src-vhdl)
	touch $@

vivado_libs:
	vivado -mode batch -source vivado_compile_libs.tcl

modelsim.ini: vivado_libs $(library)/.build
	vmap $(library) $(library)
	vmap unisims_ver vivado_libs/unisims_ver
	vmap secureip vivado_libs/secureip

# this starts modelsim with gui
sim: $(library)/.build vivado_libs modelsim.ini
	vsim${questa_version} -64 -lib $(library) $(toplevel) -do "do wave.do ; run 30us" $(sim_opts)

# batch mode without gui
#simc: build vivado_libs
#	vsim${questa_version} -lib $(library) $(toplevel) -c -do "run -all; exit" $(sim_opts)

clean:
	-rm -rf $(library) modelsim.ini transcript
	-rm -rf vivado_libs compile_simlib.log cxl_error.log .cxl.* .Xil vivado.log vivado.jou
	-rm -rf trace_hart_*.log

.PHONY: clean simc sim build
