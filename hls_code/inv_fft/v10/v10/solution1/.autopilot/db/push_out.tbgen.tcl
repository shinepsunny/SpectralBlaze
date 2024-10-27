set moduleName push_out
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {push_out}
set C_modelType { void 0 }
set C_modelArgList {
	{ O int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ out_st int 64 regular {fifo 1 volatile }  }
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "O", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_st", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ O_address0 sc_out sc_lv 12 signal 0 } 
	{ O_ce0 sc_out sc_logic 1 signal 0 } 
	{ O_q0 sc_in sc_lv 32 signal 0 } 
	{ O_address1 sc_out sc_lv 12 signal 0 } 
	{ O_ce1 sc_out sc_logic 1 signal 0 } 
	{ O_q1 sc_in sc_lv 32 signal 0 } 
	{ out_st_din sc_out sc_lv 64 signal 1 } 
	{ out_st_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ out_st_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ out_st_full_n sc_in sc_logic 1 signal 1 } 
	{ out_st_write sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 32 signal 2 } 
	{ p_read1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "O_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "O", "role": "address0" }} , 
 	{ "name": "O_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "ce0" }} , 
 	{ "name": "O_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O", "role": "q0" }} , 
 	{ "name": "O_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "O", "role": "address1" }} , 
 	{ "name": "O_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "ce1" }} , 
 	{ "name": "O_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O", "role": "q1" }} , 
 	{ "name": "out_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_st", "role": "din" }} , 
 	{ "name": "out_st_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "num_data_valid" }} , 
 	{ "name": "out_st_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "fifo_cap" }} , 
 	{ "name": "out_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "full_n" }} , 
 	{ "name": "out_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4"],
		"CDFG" : "push_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "O", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Port" : "O", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Port" : "out_st", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_8ns_8ns_8_12_seq_1_U316", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_71_1_1_U317", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	push_out {
		O {Type I LastRead 3 FirstWrite -1}
		out_st {Type O LastRead -1 FirstWrite 3}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		zext_ln136 {Type I LastRead 0 FirstWrite -1}
		O {Type I LastRead 3 FirstWrite -1}
		out_st {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "145"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "145"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	O { ap_memory {  { O_address0 mem_address 1 12 }  { O_ce0 mem_ce 1 1 }  { O_q0 mem_dout 0 32 }  { O_address1 MemPortADDR2 1 12 }  { O_ce1 MemPortCE2 1 1 }  { O_q1 MemPortDOUT2 0 32 } } }
	out_st { ap_fifo {  { out_st_din fifo_port_we 1 64 }  { out_st_num_data_valid fifo_status_num_data_valid 0 2 }  { out_st_fifo_cap fifo_update 0 2 }  { out_st_full_n fifo_status 0 1 }  { out_st_write fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
}
