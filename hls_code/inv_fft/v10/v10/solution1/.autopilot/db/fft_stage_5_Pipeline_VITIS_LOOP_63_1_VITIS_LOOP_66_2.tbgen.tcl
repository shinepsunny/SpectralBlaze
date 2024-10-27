set moduleName fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2
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
set C_modelName {fft_stage.5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ mul_ln63 int 70 regular  }
	{ zext_ln63 int 8 regular  }
	{ I int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ X_0_0 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ X_0_1 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ X_1_0 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ X_1_1 int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mul_ln63", "interface" : "wire", "bitwidth" : 70, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln63", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
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
	{ mul_ln63 sc_in sc_lv 70 signal 0 } 
	{ zext_ln63 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mul_ln63", "direction": "in", "datatype": "sc_lv", "bitwidth":70, "type": "signal", "bundle":{"name": "mul_ln63", "role": "default" }} , 
 	{ "name": "zext_ln63", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln63", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1_VITIS_LOOP_66_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2 {
		mul_ln63 {Type I LastRead 0 FirstWrite -1}
		zext_ln63 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 4 FirstWrite -1}
		X_0_0 {Type O LastRead -1 FirstWrite 3}
		X_0_1 {Type O LastRead -1 FirstWrite 3}
		X_1_0 {Type O LastRead -1 FirstWrite 3}
		X_1_1 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "131"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "131"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mul_ln63 { ap_none {  { mul_ln63 in_data 0 70 } } }
	zext_ln63 { ap_none {  { zext_ln63 in_data 0 8 } } }
	I { ap_memory {  { I_address0 mem_address 1 12 }  { I_ce0 mem_ce 1 1 }  { I_q0 in_data 0 32 }  { I_address1 MemPortADDR2 1 12 }  { I_ce1 MemPortCE2 1 1 }  { I_q1 in_data 0 32 } } }
	X_0_0 { ap_memory {  { X_0_0_address0 mem_address 1 10 }  { X_0_0_ce0 mem_ce 1 1 }  { X_0_0_we0 mem_we 1 1 }  { X_0_0_d0 mem_din 1 32 } } }
	X_0_1 { ap_memory {  { X_0_1_address0 mem_address 1 10 }  { X_0_1_ce0 mem_ce 1 1 }  { X_0_1_we0 mem_we 1 1 }  { X_0_1_d0 mem_din 1 32 } } }
	X_1_0 { ap_memory {  { X_1_0_address0 mem_address 1 10 }  { X_1_0_ce0 mem_ce 1 1 }  { X_1_0_we0 mem_we 1 1 }  { X_1_0_d0 mem_din 1 32 } } }
	X_1_1 { ap_memory {  { X_1_1_address0 mem_address 1 10 }  { X_1_1_ce0 mem_ce 1 1 }  { X_1_1_we0 mem_we 1 1 }  { X_1_1_d0 mem_din 1 32 } } }
}
