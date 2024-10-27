set moduleName buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound4 int 47 regular  }
	{ buffer1_0 int 16 regular {array 8192 { 0 3 } 0 1 }  }
	{ buffer1_1 int 16 regular {array 8192 { 0 3 } 0 1 }  }
	{ bound int 39 regular  }
	{ div_cast int 8 regular  }
	{ conv_i_i72 int 8 regular  }
	{ icmp_ln1027 int 1 regular  }
	{ out_st int 64 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bound4", "interface" : "wire", "bitwidth" : 47, "direction" : "READONLY"} , 
 	{ "Name" : "buffer1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 39, "direction" : "READONLY"} , 
 	{ "Name" : "div_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv_i_i72", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1027", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_st", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_st_dout sc_in sc_lv 64 signal 7 } 
	{ out_st_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ out_st_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ out_st_empty_n sc_in sc_logic 1 signal 7 } 
	{ out_st_read sc_out sc_logic 1 signal 7 } 
	{ bound4 sc_in sc_lv 47 signal 0 } 
	{ buffer1_0_address0 sc_out sc_lv 13 signal 1 } 
	{ buffer1_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer1_0_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer1_0_d0 sc_out sc_lv 16 signal 1 } 
	{ buffer1_1_address0 sc_out sc_lv 13 signal 2 } 
	{ buffer1_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer1_1_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer1_1_d0 sc_out sc_lv 16 signal 2 } 
	{ bound sc_in sc_lv 39 signal 3 } 
	{ div_cast sc_in sc_lv 8 signal 4 } 
	{ conv_i_i72 sc_in sc_lv 8 signal 5 } 
	{ icmp_ln1027 sc_in sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_st", "role": "dout" }} , 
 	{ "name": "out_st_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "num_data_valid" }} , 
 	{ "name": "out_st_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "fifo_cap" }} , 
 	{ "name": "out_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "empty_n" }} , 
 	{ "name": "out_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "read" }} , 
 	{ "name": "bound4", "direction": "in", "datatype": "sc_lv", "bitwidth":47, "type": "signal", "bundle":{"name": "bound4", "role": "default" }} , 
 	{ "name": "buffer1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_0", "role": "address0" }} , 
 	{ "name": "buffer1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_0", "role": "ce0" }} , 
 	{ "name": "buffer1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_0", "role": "we0" }} , 
 	{ "name": "buffer1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_0", "role": "d0" }} , 
 	{ "name": "buffer1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_1", "role": "address0" }} , 
 	{ "name": "buffer1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1", "role": "ce0" }} , 
 	{ "name": "buffer1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1", "role": "we0" }} , 
 	{ "name": "buffer1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_1", "role": "d0" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":39, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "div_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "div_cast", "role": "default" }} , 
 	{ "name": "conv_i_i72", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_i_i72", "role": "default" }} , 
 	{ "name": "icmp_ln1027", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1027", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "1572",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "div_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i72", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1027", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U369", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3 {
		bound4 {Type I LastRead 0 FirstWrite -1}
		buffer1_0 {Type O LastRead -1 FirstWrite 4}
		buffer1_1 {Type O LastRead -1 FirstWrite 4}
		bound {Type I LastRead 0 FirstWrite -1}
		div_cast {Type I LastRead 0 FirstWrite -1}
		conv_i_i72 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1027 {Type I LastRead 0 FirstWrite -1}
		out_st {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "1572"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "1572"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound4 { ap_none {  { bound4 in_data 0 47 } } }
	buffer1_0 { ap_memory {  { buffer1_0_address0 mem_address 1 13 }  { buffer1_0_ce0 mem_ce 1 1 }  { buffer1_0_we0 mem_we 1 1 }  { buffer1_0_d0 mem_din 1 16 } } }
	buffer1_1 { ap_memory {  { buffer1_1_address0 mem_address 1 13 }  { buffer1_1_ce0 mem_ce 1 1 }  { buffer1_1_we0 mem_we 1 1 }  { buffer1_1_d0 mem_din 1 16 } } }
	bound { ap_none {  { bound in_data 0 39 } } }
	div_cast { ap_none {  { div_cast in_data 0 8 } } }
	conv_i_i72 { ap_none {  { conv_i_i72 in_data 0 8 } } }
	icmp_ln1027 { ap_none {  { icmp_ln1027 in_data 0 1 } } }
	out_st { ap_fifo {  { out_st_dout fifo_port_we 0 64 }  { out_st_num_data_valid fifo_status_num_data_valid 0 2 }  { out_st_fifo_cap fifo_update 0 2 }  { out_st_empty_n fifo_status 0 1 }  { out_st_read fifo_data 1 1 } } }
}
