set moduleName dataflow_parent_loop_proc14
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
set C_modelName {dataflow_parent_loop_proc14}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctrl2_reg_load_cast int 8 regular  }
	{ c_row_op_st int 32 regular {fifo 0 volatile }  }
	{ p_read int 8 regular  }
	{ c_row_op_trans_st int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctrl2_reg_load_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "c_row_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "c_row_op_trans_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ctrl2_reg_load_cast sc_in sc_lv 8 signal 0 } 
	{ c_row_op_st_dout sc_in sc_lv 32 signal 1 } 
	{ c_row_op_st_empty_n sc_in sc_logic 1 signal 1 } 
	{ c_row_op_st_read sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 8 signal 2 } 
	{ c_row_op_trans_st_din sc_out sc_lv 32 signal 3 } 
	{ c_row_op_trans_st_full_n sc_in sc_logic 1 signal 3 } 
	{ c_row_op_trans_st_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ctrl2_reg_load_cast_ap_vld sc_in sc_logic 1 invld 0 } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ctrl2_reg_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctrl2_reg_load_cast", "role": "default" }} , 
 	{ "name": "c_row_op_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "dout" }} , 
 	{ "name": "c_row_op_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "empty_n" }} , 
 	{ "name": "c_row_op_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "c_row_op_trans_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "din" }} , 
 	{ "name": "c_row_op_trans_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "full_n" }} , 
 	{ "name": "c_row_op_trans_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ctrl2_reg_load_cast_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ctrl2_reg_load_cast", "role": "ap_vld" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_parent_loop_proc14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "70753",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_parent_loop_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_parent_loop_proc_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_439_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc_U0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "4421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_442_3_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_442_3_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_442_3", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0", "Parent" : "1", "Child" : ["3", "4", "5", "8", "11"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_442_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "518",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "ifmap_gen_x_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "ifmap_cons_y_U0"}],
		"Port" : [
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "ifmap_gen_x_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "ifmap_cons_y_U0", "Port" : "c_row_op_trans_st"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0", "Parent" : "2", "Child" : ["6", "7"],
		"CDFG" : "ifmap_gen_x",
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
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_row_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "3"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "4"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_370_1_VITIS_LOOP_373_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.mul_8ns_8ns_16_1_1_U257", "Parent" : "5"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.flow_control_loop_pipe_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0", "Parent" : "2", "Child" : ["9", "10"],
		"CDFG" : "ifmap_cons_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "3"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "4"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_row_op_trans_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_1_VITIS_LOOP_388_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.mul_8ns_8ns_16_1_1_U262", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.flow_control_loop_pipe_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc14 {
		ctrl2_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		c_row_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_row_op_trans_st {Type O LastRead -1 FirstWrite 2}}
	dataflow_parent_loop_proc {
		ctrl2_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		c_row_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_row_op_trans_st {Type O LastRead -1 FirstWrite 2}}
	dataflow_in_loop_VITIS_LOOP_442_3 {
		c_row_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_row_op_trans_st {Type O LastRead -1 FirstWrite 2}}
	ifmap_gen_x {
		c_row_op_st {Type I LastRead 0 FirstWrite -1}
		ifmap_CF_M_real {Type O LastRead -1 FirstWrite 1}
		ifmap_CF_M_imag {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	ifmap_cons_y {
		ifmap_CF_M_real {Type I LastRead 1 FirstWrite -1}
		ifmap_CF_M_imag {Type I LastRead 1 FirstWrite -1}
		c_row_op_trans_st {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "70753"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "70753"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctrl2_reg_load_cast { ap_none {  { ctrl2_reg_load_cast in_data 0 8 }  { ctrl2_reg_load_cast_ap_vld in_vld 0 1 } } }
	c_row_op_st { ap_fifo {  { c_row_op_st_dout fifo_data 0 32 }  { c_row_op_st_empty_n fifo_status 0 1 }  { c_row_op_st_read fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 8 }  { p_read_ap_vld in_vld 0 1 } } }
	c_row_op_trans_st { ap_fifo {  { c_row_op_trans_st_din fifo_data 1 32 }  { c_row_op_trans_st_full_n fifo_status 0 1 }  { c_row_op_trans_st_write fifo_update 1 1 } } }
}