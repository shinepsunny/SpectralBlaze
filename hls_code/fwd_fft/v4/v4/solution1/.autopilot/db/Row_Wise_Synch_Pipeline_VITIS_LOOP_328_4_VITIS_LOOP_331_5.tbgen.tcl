set moduleName Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5
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
set C_modelName {Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound int 16 regular  }
	{ c_row_op_st int 32 regular {fifo 1 volatile }  }
	{ select_ln317_3 int 1 regular  }
	{ Row_Buffer int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "c_row_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln317_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Row_Buffer", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Row_Buffer_dout sc_in sc_lv 32 signal 3 } 
	{ Row_Buffer_empty_n sc_in sc_logic 1 signal 3 } 
	{ Row_Buffer_read sc_out sc_logic 1 signal 3 } 
	{ c_row_op_st_din sc_out sc_lv 32 signal 1 } 
	{ c_row_op_st_full_n sc_in sc_logic 1 signal 1 } 
	{ c_row_op_st_write sc_out sc_logic 1 signal 1 } 
	{ bound sc_in sc_lv 16 signal 0 } 
	{ select_ln317_3 sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Row_Buffer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Row_Buffer", "role": "dout" }} , 
 	{ "name": "Row_Buffer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Row_Buffer", "role": "empty_n" }} , 
 	{ "name": "Row_Buffer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Row_Buffer", "role": "read" }} , 
 	{ "name": "c_row_op_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "din" }} , 
 	{ "name": "c_row_op_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "full_n" }} , 
 	{ "name": "c_row_op_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "write" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "select_ln317_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "select_ln317_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_row_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "select_ln317_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Row_Buffer", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Row_Buffer_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_328_4_VITIS_LOOP_331_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5 {
		bound {Type I LastRead 0 FirstWrite -1}
		c_row_op_st {Type O LastRead -1 FirstWrite 1}
		select_ln317_3 {Type I LastRead 0 FirstWrite -1}
		Row_Buffer {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound { ap_none {  { bound in_data 0 16 } } }
	c_row_op_st { ap_fifo {  { c_row_op_st_din fifo_data 1 32 }  { c_row_op_st_full_n fifo_status 0 1 }  { c_row_op_st_write fifo_update 1 1 } } }
	select_ln317_3 { ap_none {  { select_ln317_3 in_data 0 1 } } }
	Row_Buffer { ap_fifo {  { Row_Buffer_dout fifo_data 0 32 }  { Row_Buffer_empty_n fifo_status 0 1 }  { Row_Buffer_read fifo_update 1 1 } } }
}
