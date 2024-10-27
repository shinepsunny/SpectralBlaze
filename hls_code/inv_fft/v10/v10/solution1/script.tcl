############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project v10
set_top IFFT_AP
add_files src/fft.cpp
add_files src/globals.hpp
add_files src/types.hpp
add_files -tb tb/main.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu7cg-fbvb900-1-i}
create_clock -period 5 -name default
config_export -display_name VR_IFFT -format ip_catalog -output /home/shine/Desktop/fft_story/vivado/ip_repo -rtl verilog -version 1.0
set_clock_uncertainty 2
#source "./v10/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -O -wave_debug -enable_dataflow_profiling -trace_level all
export_design -rtl verilog -format ip_catalog -output /home/shine/Desktop/fft_story/vivado/ip_repo
