############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project v4
set_top fwd_fft
add_files src/globals.hpp
add_files src/main.cpp
add_files src/types.hpp
add_files -tb tb/main_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2"

create_clock -period 2 -name default
#source "./v4/solution2/directives.tcl"
csim_design -clean
csynth_design
cosim_design -wave_debug -enable_dataflow_profiling
export_design -format ip_catalog
