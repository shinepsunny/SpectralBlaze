set moduleName fft_stage_0_0_Pipeline_VITIS_LOOP_40_1
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
set C_modelName {fft_stage.0.0_Pipeline_VITIS_LOOP_40_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln40 int 8 regular  }
	{ IN_r int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ OUT_r int 32 regular {array 64 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln40", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "IN_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln40 sc_in sc_lv 8 signal 0 } 
	{ IN_r_address0 sc_out sc_lv 6 signal 1 } 
	{ IN_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ IN_r_q0 sc_in sc_lv 32 signal 1 } 
	{ IN_r_address1 sc_out sc_lv 6 signal 1 } 
	{ IN_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ IN_r_q1 sc_in sc_lv 32 signal 1 } 
	{ OUT_r_address0 sc_out sc_lv 6 signal 2 } 
	{ OUT_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ OUT_r_we0 sc_out sc_logic 1 signal 2 } 
	{ OUT_r_d0 sc_out sc_lv 32 signal 2 } 
	{ OUT_r_address1 sc_out sc_lv 6 signal 2 } 
	{ OUT_r_ce1 sc_out sc_logic 1 signal 2 } 
	{ OUT_r_we1 sc_out sc_logic 1 signal 2 } 
	{ OUT_r_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln40", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln40", "role": "default" }} , 
 	{ "name": "IN_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "IN_r", "role": "address0" }} , 
 	{ "name": "IN_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ce0" }} , 
 	{ "name": "IN_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "q0" }} , 
 	{ "name": "IN_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "IN_r", "role": "address1" }} , 
 	{ "name": "IN_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ce1" }} , 
 	{ "name": "IN_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "q1" }} , 
 	{ "name": "OUT_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OUT_r", "role": "address0" }} , 
 	{ "name": "OUT_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ce0" }} , 
 	{ "name": "OUT_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "we0" }} , 
 	{ "name": "OUT_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "d0" }} , 
 	{ "name": "OUT_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OUT_r", "role": "address1" }} , 
 	{ "name": "OUT_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ce1" }} , 
 	{ "name": "OUT_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "we1" }} , 
 	{ "name": "OUT_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fft_stage_0_0_Pipeline_VITIS_LOOP_40_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "zext_ln40", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_stage_0_0_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln40 { ap_none {  { zext_ln40 in_data 0 8 } } }
	IN_r { ap_memory {  { IN_r_address0 mem_address 1 6 }  { IN_r_ce0 mem_ce 1 1 }  { IN_r_q0 mem_dout 0 32 }  { IN_r_address1 MemPortADDR2 1 6 }  { IN_r_ce1 MemPortCE2 1 1 }  { IN_r_q1 MemPortDOUT2 0 32 } } }
	OUT_r { ap_memory {  { OUT_r_address0 mem_address 1 6 }  { OUT_r_ce0 mem_ce 1 1 }  { OUT_r_we0 mem_we 1 1 }  { OUT_r_d0 mem_din 1 32 }  { OUT_r_address1 MemPortADDR2 1 6 }  { OUT_r_ce1 MemPortCE2 1 1 }  { OUT_r_we1 MemPortWE2 1 1 }  { OUT_r_d1 MemPortDIN2 1 32 } } }
}