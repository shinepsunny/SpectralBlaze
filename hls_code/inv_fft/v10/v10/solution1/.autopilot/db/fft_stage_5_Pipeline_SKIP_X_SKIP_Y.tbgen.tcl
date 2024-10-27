set moduleName fft_stage_5_Pipeline_SKIP_X_SKIP_Y
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
set C_modelName {fft_stage.5_Pipeline_SKIP_X_SKIP_Y}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound int 14 regular  }
	{ trunc_ln10 int 7 regular  }
	{ I int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ X_0_0 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ X_0_1 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ X_1_0 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ X_1_1 int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln10", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "I", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bound sc_in sc_lv 14 signal 0 } 
	{ trunc_ln10 sc_in sc_lv 7 signal 1 } 
	{ I_address0 sc_out sc_lv 12 signal 2 } 
	{ I_ce0 sc_out sc_logic 1 signal 2 } 
	{ I_q0 sc_in sc_lv 32 signal 2 } 
	{ I_address1 sc_out sc_lv 12 signal 2 } 
	{ I_ce1 sc_out sc_logic 1 signal 2 } 
	{ I_q1 sc_in sc_lv 32 signal 2 } 
	{ X_0_0_address0 sc_out sc_lv 10 signal 3 } 
	{ X_0_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ X_0_0_we0 sc_out sc_logic 1 signal 3 } 
	{ X_0_0_d0 sc_out sc_lv 32 signal 3 } 
	{ X_0_1_address0 sc_out sc_lv 10 signal 4 } 
	{ X_0_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ X_0_1_we0 sc_out sc_logic 1 signal 4 } 
	{ X_0_1_d0 sc_out sc_lv 32 signal 4 } 
	{ X_1_0_address0 sc_out sc_lv 10 signal 5 } 
	{ X_1_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ X_1_0_we0 sc_out sc_logic 1 signal 5 } 
	{ X_1_0_d0 sc_out sc_lv 32 signal 5 } 
	{ X_1_1_address0 sc_out sc_lv 10 signal 6 } 
	{ X_1_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ X_1_1_we0 sc_out sc_logic 1 signal 6 } 
	{ X_1_1_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "trunc_ln10", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "trunc_ln10", "role": "default" }} , 
 	{ "name": "I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "I", "role": "address0" }} , 
 	{ "name": "I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "ce0" }} , 
 	{ "name": "I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I", "role": "q0" }} , 
 	{ "name": "I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "I", "role": "address1" }} , 
 	{ "name": "I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "ce1" }} , 
 	{ "name": "I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I", "role": "q1" }} , 
 	{ "name": "X_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_0_0", "role": "address0" }} , 
 	{ "name": "X_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_0_0", "role": "ce0" }} , 
 	{ "name": "X_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_0_0", "role": "we0" }} , 
 	{ "name": "X_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_0_0", "role": "d0" }} , 
 	{ "name": "X_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_0_1", "role": "address0" }} , 
 	{ "name": "X_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_0_1", "role": "ce0" }} , 
 	{ "name": "X_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_0_1", "role": "we0" }} , 
 	{ "name": "X_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_0_1", "role": "d0" }} , 
 	{ "name": "X_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_1_0", "role": "address0" }} , 
 	{ "name": "X_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_1_0", "role": "ce0" }} , 
 	{ "name": "X_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_1_0", "role": "we0" }} , 
 	{ "name": "X_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_1_0", "role": "d0" }} , 
 	{ "name": "X_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_1_1", "role": "address0" }} , 
 	{ "name": "X_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_1_1", "role": "ce0" }} , 
 	{ "name": "X_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_1_1", "role": "we0" }} , 
 	{ "name": "X_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_1_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "fft_stage_5_Pipeline_SKIP_X_SKIP_Y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln10", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X_SKIP_Y", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_9_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_14_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_5_full_dsp_1_U211", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_5_full_dsp_1_U212", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_5_full_dsp_1_U213", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_5_full_dsp_1_U214", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_5_full_dsp_1_U215", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hsub_16ns_16ns_16_5_full_dsp_1_U216", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hsub_16ns_16ns_16_5_full_dsp_1_U217", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hsub_16ns_16ns_16_5_full_dsp_1_U218", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hsub_16ns_16ns_16_5_full_dsp_1_U219", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_4_max_dsp_1_U220", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_4_max_dsp_1_U221", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_4_max_dsp_1_U222", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_stage_5_Pipeline_SKIP_X_SKIP_Y {
		bound {Type I LastRead 0 FirstWrite -1}
		trunc_ln10 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 10 FirstWrite -1}
		X_0_0 {Type O LastRead -1 FirstWrite 27}
		X_0_1 {Type O LastRead -1 FirstWrite 27}
		X_1_0 {Type O LastRead -1 FirstWrite 27}
		X_1_1 {Type O LastRead -1 FirstWrite 27}
		w_9 {Type I LastRead -1 FirstWrite -1}
		w_14 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "283"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "283"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound { ap_none {  { bound in_data 0 14 } } }
	trunc_ln10 { ap_none {  { trunc_ln10 in_data 0 7 } } }
	I { ap_memory {  { I_address0 mem_address 1 12 }  { I_ce0 mem_ce 1 1 }  { I_q0 in_data 0 32 }  { I_address1 MemPortADDR2 1 12 }  { I_ce1 MemPortCE2 1 1 }  { I_q1 in_data 0 32 } } }
	X_0_0 { ap_memory {  { X_0_0_address0 mem_address 1 10 }  { X_0_0_ce0 mem_ce 1 1 }  { X_0_0_we0 mem_we 1 1 }  { X_0_0_d0 mem_din 1 32 } } }
	X_0_1 { ap_memory {  { X_0_1_address0 mem_address 1 10 }  { X_0_1_ce0 mem_ce 1 1 }  { X_0_1_we0 mem_we 1 1 }  { X_0_1_d0 mem_din 1 32 } } }
	X_1_0 { ap_memory {  { X_1_0_address0 mem_address 1 10 }  { X_1_0_ce0 mem_ce 1 1 }  { X_1_0_we0 mem_we 1 1 }  { X_1_0_d0 mem_din 1 32 } } }
	X_1_1 { ap_memory {  { X_1_1_address0 mem_address 1 10 }  { X_1_1_ce0 mem_ce 1 1 }  { X_1_1_we0 mem_we 1 1 }  { X_1_1_d0 mem_din 1 32 } } }
}
