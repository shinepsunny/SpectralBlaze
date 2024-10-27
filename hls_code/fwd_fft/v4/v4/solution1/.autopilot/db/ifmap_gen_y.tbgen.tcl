set moduleName ifmap_gen_y
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
set C_modelName {ifmap_gen_y}
set C_modelType { int 8 }
set C_modelArgList {
	{ c_fft_col_op_st int 32 regular {fifo 0 volatile }  }
	{ ifmap_CF_M_real int 32 regular {array 2048 { 0 3 } 0 1 }  }
	{ ifmap_CF_M_imag int 32 regular {array 2048 { 0 3 } 0 1 }  }
	{ p_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_fft_col_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ifmap_CF_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ifmap_CF_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_fft_col_op_st_dout sc_in sc_lv 32 signal 0 } 
	{ c_fft_col_op_st_empty_n sc_in sc_logic 1 signal 0 } 
	{ c_fft_col_op_st_read sc_out sc_logic 1 signal 0 } 
	{ ifmap_CF_M_real_address0 sc_out sc_lv 11 signal 1 } 
	{ ifmap_CF_M_real_ce0 sc_out sc_logic 1 signal 1 } 
	{ ifmap_CF_M_real_we0 sc_out sc_lv 4 signal 1 } 
	{ ifmap_CF_M_real_d0 sc_out sc_lv 32 signal 1 } 
	{ ifmap_CF_M_imag_address0 sc_out sc_lv 11 signal 2 } 
	{ ifmap_CF_M_imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ ifmap_CF_M_imag_we0 sc_out sc_lv 4 signal 2 } 
	{ ifmap_CF_M_imag_d0 sc_out sc_lv 32 signal 2 } 
	{ p_read sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_fft_col_op_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "dout" }} , 
 	{ "name": "c_fft_col_op_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "empty_n" }} , 
 	{ "name": "c_fft_col_op_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "read" }} , 
 	{ "name": "ifmap_CF_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ifmap_CF_M_real", "role": "address0" }} , 
 	{ "name": "ifmap_CF_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ifmap_CF_M_real", "role": "ce0" }} , 
 	{ "name": "ifmap_CF_M_real_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ifmap_CF_M_real", "role": "we0" }} , 
 	{ "name": "ifmap_CF_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ifmap_CF_M_real", "role": "d0" }} , 
 	{ "name": "ifmap_CF_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ifmap_CF_M_imag", "role": "address0" }} , 
 	{ "name": "ifmap_CF_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ifmap_CF_M_imag", "role": "ce0" }} , 
 	{ "name": "ifmap_CF_M_imag_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ifmap_CF_M_imag", "role": "we0" }} , 
 	{ "name": "ifmap_CF_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ifmap_CF_M_imag", "role": "d0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ifmap_gen_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_fft_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1_VITIS_LOOP_403_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U441", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ifmap_gen_y {
		c_fft_col_op_st {Type I LastRead 0 FirstWrite -1}
		ifmap_CF_M_real {Type O LastRead -1 FirstWrite 1}
		ifmap_CF_M_imag {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c_fft_col_op_st { ap_fifo {  { c_fft_col_op_st_dout fifo_data 0 32 }  { c_fft_col_op_st_empty_n fifo_status 0 1 }  { c_fft_col_op_st_read fifo_update 1 1 } } }
	ifmap_CF_M_real { ap_memory {  { ifmap_CF_M_real_address0 mem_address 1 11 }  { ifmap_CF_M_real_ce0 mem_ce 1 1 }  { ifmap_CF_M_real_we0 mem_we 1 4 }  { ifmap_CF_M_real_d0 mem_din 1 32 } } }
	ifmap_CF_M_imag { ap_memory {  { ifmap_CF_M_imag_address0 mem_address 1 11 }  { ifmap_CF_M_imag_ce0 mem_ce 1 1 }  { ifmap_CF_M_imag_we0 mem_we 1 4 }  { ifmap_CF_M_imag_d0 mem_din 1 32 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
}
