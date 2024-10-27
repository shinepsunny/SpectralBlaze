set moduleName collect_input_Pipeline_VITIS_LOOP_91_2
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
set C_modelName {collect_input_Pipeline_VITIS_LOOP_91_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ empty int 11 regular  }
	{ zext_ln173_3 int 12 regular  }
	{ I int 32 regular {array 4096 { 0 0 } 0 1 }  }
	{ in_st int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln173_3", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "I", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_st", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_st_dout sc_in sc_lv 128 signal 3 } 
	{ in_st_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ in_st_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ in_st_empty_n sc_in sc_logic 1 signal 3 } 
	{ in_st_read sc_out sc_logic 1 signal 3 } 
	{ empty sc_in sc_lv 11 signal 0 } 
	{ zext_ln173_3 sc_in sc_lv 12 signal 1 } 
	{ I_address0 sc_out sc_lv 12 signal 2 } 
	{ I_ce0 sc_out sc_logic 1 signal 2 } 
	{ I_we0 sc_out sc_logic 1 signal 2 } 
	{ I_d0 sc_out sc_lv 32 signal 2 } 
	{ I_address1 sc_out sc_lv 12 signal 2 } 
	{ I_ce1 sc_out sc_logic 1 signal 2 } 
	{ I_we1 sc_out sc_logic 1 signal 2 } 
	{ I_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "in_st", "role": "dout" }} , 
 	{ "name": "in_st_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_st", "role": "num_data_valid" }} , 
 	{ "name": "in_st_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_st", "role": "fifo_cap" }} , 
 	{ "name": "in_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_st", "role": "empty_n" }} , 
 	{ "name": "in_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_st", "role": "read" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "zext_ln173_3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln173_3", "role": "default" }} , 
 	{ "name": "I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "I", "role": "address0" }} , 
 	{ "name": "I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "ce0" }} , 
 	{ "name": "I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "we0" }} , 
 	{ "name": "I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I", "role": "d0" }} , 
 	{ "name": "I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "I", "role": "address1" }} , 
 	{ "name": "I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "ce1" }} , 
 	{ "name": "I_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "we1" }} , 
 	{ "name": "I_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "collect_input_Pipeline_VITIS_LOOP_91_2",
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
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln173_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	collect_input_Pipeline_VITIS_LOOP_91_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln173_3 {Type I LastRead 0 FirstWrite -1}
		I {Type O LastRead -1 FirstWrite 1}
		in_st {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 11 } } }
	zext_ln173_3 { ap_none {  { zext_ln173_3 in_data 0 12 } } }
	I { ap_memory {  { I_address0 mem_address 1 12 }  { I_ce0 mem_ce 1 1 }  { I_we0 mem_we 1 1 }  { I_d0 mem_din 1 32 }  { I_address1 MemPortADDR2 1 12 }  { I_ce1 MemPortCE2 1 1 }  { I_we1 MemPortWE2 1 1 }  { I_d1 MemPortDIN2 1 32 } } }
	in_st { ap_fifo {  { in_st_dout fifo_port_we 0 128 }  { in_st_num_data_valid fifo_status_num_data_valid 0 2 }  { in_st_fifo_cap fifo_update 0 2 }  { in_st_empty_n fifo_status 0 1 }  { in_st_read fifo_data 1 1 } } }
}
