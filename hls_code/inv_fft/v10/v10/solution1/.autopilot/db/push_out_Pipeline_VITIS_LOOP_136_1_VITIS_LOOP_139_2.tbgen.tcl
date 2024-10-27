set moduleName push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2
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
set C_modelName {push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound int 71 regular  }
	{ zext_ln136 int 8 regular  }
	{ O int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ out_st int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 71, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln136", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "O", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_st", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_st_din sc_out sc_lv 64 signal 3 } 
	{ out_st_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ out_st_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ out_st_full_n sc_in sc_logic 1 signal 3 } 
	{ out_st_write sc_out sc_logic 1 signal 3 } 
	{ bound sc_in sc_lv 71 signal 0 } 
	{ zext_ln136 sc_in sc_lv 8 signal 1 } 
	{ O_address0 sc_out sc_lv 12 signal 2 } 
	{ O_ce0 sc_out sc_logic 1 signal 2 } 
	{ O_q0 sc_in sc_lv 32 signal 2 } 
	{ O_address1 sc_out sc_lv 12 signal 2 } 
	{ O_ce1 sc_out sc_logic 1 signal 2 } 
	{ O_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_st", "role": "din" }} , 
 	{ "name": "out_st_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "num_data_valid" }} , 
 	{ "name": "out_st_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "fifo_cap" }} , 
 	{ "name": "out_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "full_n" }} , 
 	{ "name": "out_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "write" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":71, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "zext_ln136", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln136", "role": "default" }} , 
 	{ "name": "O_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "O", "role": "address0" }} , 
 	{ "name": "O_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "ce0" }} , 
 	{ "name": "O_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O", "role": "q0" }} , 
 	{ "name": "O_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "O", "role": "address1" }} , 
 	{ "name": "O_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "ce1" }} , 
 	{ "name": "O_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln136", "Type" : "None", "Direction" : "I"},
			{"Name" : "O", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_1_VITIS_LOOP_139_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		zext_ln136 {Type I LastRead 0 FirstWrite -1}
		O {Type I LastRead 3 FirstWrite -1}
		out_st {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound { ap_none {  { bound in_data 0 71 } } }
	zext_ln136 { ap_none {  { zext_ln136 in_data 0 8 } } }
	O { ap_memory {  { O_address0 mem_address 1 12 }  { O_ce0 mem_ce 1 1 }  { O_q0 in_data 0 32 }  { O_address1 MemPortADDR2 1 12 }  { O_ce1 MemPortCE2 1 1 }  { O_q1 in_data 0 32 } } }
	out_st { ap_fifo {  { out_st_din fifo_port_we 1 64 }  { out_st_num_data_valid fifo_status_num_data_valid 0 2 }  { out_st_fifo_cap fifo_update 0 2 }  { out_st_full_n fifo_status 0 1 }  { out_st_write fifo_data 1 1 } } }
}
