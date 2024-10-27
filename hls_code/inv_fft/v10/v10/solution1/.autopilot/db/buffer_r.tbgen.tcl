set moduleName buffer_r
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
set C_modelName {buffer}
set C_modelType { int 16 }
set C_modelArgList {
	{ out_st int 64 regular {fifo 0 volatile }  }
	{ buffer1_0 int 16 regular {array 8192 { 0 3 } 0 1 }  }
	{ buffer1_1 int 16 regular {array 8192 { 0 3 } 0 1 }  }
	{ ctrl1_reg_3 int 8 regular  }
	{ ctrl2_reg_0 int 8 regular  }
	{ actp_reg_3 int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_st", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "buffer1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctrl1_reg_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl2_reg_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "actp_reg_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_st_dout sc_in sc_lv 64 signal 0 } 
	{ out_st_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ out_st_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ out_st_empty_n sc_in sc_logic 1 signal 0 } 
	{ out_st_read sc_out sc_logic 1 signal 0 } 
	{ buffer1_0_address0 sc_out sc_lv 13 signal 1 } 
	{ buffer1_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer1_0_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer1_0_d0 sc_out sc_lv 16 signal 1 } 
	{ buffer1_1_address0 sc_out sc_lv 13 signal 2 } 
	{ buffer1_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer1_1_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer1_1_d0 sc_out sc_lv 16 signal 2 } 
	{ ctrl1_reg_3 sc_in sc_lv 8 signal 3 } 
	{ ctrl2_reg_0 sc_in sc_lv 8 signal 4 } 
	{ actp_reg_3 sc_in sc_lv 8 signal 5 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_st", "role": "dout" }} , 
 	{ "name": "out_st_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "num_data_valid" }} , 
 	{ "name": "out_st_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "fifo_cap" }} , 
 	{ "name": "out_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "empty_n" }} , 
 	{ "name": "out_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "read" }} , 
 	{ "name": "buffer1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_0", "role": "address0" }} , 
 	{ "name": "buffer1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_0", "role": "ce0" }} , 
 	{ "name": "buffer1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_0", "role": "we0" }} , 
 	{ "name": "buffer1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_0", "role": "d0" }} , 
 	{ "name": "buffer1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_1", "role": "address0" }} , 
 	{ "name": "buffer1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1", "role": "ce0" }} , 
 	{ "name": "buffer1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1", "role": "we0" }} , 
 	{ "name": "buffer1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_1", "role": "d0" }} , 
 	{ "name": "ctrl1_reg_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctrl1_reg_3", "role": "default" }} , 
 	{ "name": "ctrl2_reg_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctrl2_reg_0", "role": "default" }} , 
 	{ "name": "actp_reg_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "actp_reg_3", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "5", "6"],
		"CDFG" : "buffer_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "1588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "out_st", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "buffer1_0", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "buffer1_1", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "ctrl1_reg_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_reg_3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58.mul_8ns_8ns_16_1_1_U369", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_8ns_8ns_8_12_seq_1_U378", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_39_1_1_U379", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16ns_47_1_1_U380", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	buffer_r {
		out_st {Type I LastRead 3 FirstWrite -1}
		buffer1_0 {Type O LastRead -1 FirstWrite 4}
		buffer1_1 {Type O LastRead -1 FirstWrite 4}
		ctrl1_reg_3 {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg_0 {Type I LastRead 14 FirstWrite -1}
		actp_reg_3 {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "20", "Max" : "1588"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "1588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_st { ap_fifo {  { out_st_dout fifo_port_we 0 64 }  { out_st_num_data_valid fifo_status_num_data_valid 0 2 }  { out_st_fifo_cap fifo_update 0 2 }  { out_st_empty_n fifo_status 0 1 }  { out_st_read fifo_data 1 1 } } }
	buffer1_0 { ap_memory {  { buffer1_0_address0 mem_address 1 13 }  { buffer1_0_ce0 mem_ce 1 1 }  { buffer1_0_we0 mem_we 1 1 }  { buffer1_0_d0 mem_din 1 16 } } }
	buffer1_1 { ap_memory {  { buffer1_1_address0 mem_address 1 13 }  { buffer1_1_ce0 mem_ce 1 1 }  { buffer1_1_we0 mem_we 1 1 }  { buffer1_1_d0 mem_din 1 16 } } }
	ctrl1_reg_3 { ap_none {  { ctrl1_reg_3 in_data 0 8 } } }
	ctrl2_reg_0 { ap_none {  { ctrl2_reg_0 in_data 0 8 } } }
	actp_reg_3 { ap_none {  { actp_reg_3 in_data 0 8 } } }
}
