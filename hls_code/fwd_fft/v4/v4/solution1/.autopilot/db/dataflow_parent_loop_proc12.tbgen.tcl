set moduleName dataflow_parent_loop_proc12
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
set C_modelName {dataflow_parent_loop_proc12}
set C_modelType { void 0 }
set C_modelArgList {
	{ n int 32 regular  }
	{ c_row_op_trans_st int 32 regular {fifo 0 volatile }  }
	{ p_read int 32 regular  }
	{ c_fft_col_op_st int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_row_op_trans_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_fft_col_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ n sc_in sc_lv 32 signal 0 } 
	{ c_row_op_trans_st_dout sc_in sc_lv 32 signal 1 } 
	{ c_row_op_trans_st_empty_n sc_in sc_logic 1 signal 1 } 
	{ c_row_op_trans_st_read sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 32 signal 2 } 
	{ c_fft_col_op_st_din sc_out sc_lv 32 signal 3 } 
	{ c_fft_col_op_st_full_n sc_in sc_logic 1 signal 3 } 
	{ c_fft_col_op_st_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "c_row_op_trans_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "dout" }} , 
 	{ "name": "c_row_op_trans_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "empty_n" }} , 
 	{ "name": "c_row_op_trans_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "c_fft_col_op_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "din" }} , 
 	{ "name": "c_fft_col_op_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "full_n" }} , 
 	{ "name": "c_fft_col_op_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_parent_loop_proc12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "301235",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_139_1_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_139_1_U0"}],
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real41"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag30"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real42"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag31"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real43"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag32"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real44"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag33"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real45"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag34"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real46"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag35"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_139_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "11", "28", "45", "62", "79", "96", "113", "115", "116", "117", "118", "119", "120", "121"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_139_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "9", "Name" : "stream_2_buf_U0"}],
		"OutputProcess" : [
			{"ID" : "113", "Name" : "buf_2_stream_U0"}],
		"Port" : [
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "stream_2_buf_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "buf_2_stream_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fft_stage_0_0_U0", "Port" : "w_M_real41"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "fft_stage_0_0_U0", "Port" : "w_M_imag30"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "fft_stage_1_0_U0", "Port" : "w_M_real42"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "fft_stage_1_0_U0", "Port" : "w_M_imag31"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_stage_2_0_U0", "Port" : "w_M_real43"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_stage_2_0_U0", "Port" : "w_M_imag32"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "fft_stage_3_0_U0", "Port" : "w_M_real44"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "fft_stage_3_0_U0", "Port" : "w_M_imag33"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "fft_stage_4_0_U0", "Port" : "w_M_real45"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "fft_stage_4_0_U0", "Port" : "w_M_imag34"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "fft_stage_5_0_U0", "Port" : "w_M_real46"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "fft_stage_5_0_U0", "Port" : "w_M_imag35"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0", "Parent" : "1", "Child" : ["10"],
		"CDFG" : "stream_2_buf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_row_op_trans_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_buffer", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "2"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_70_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0.flow_control_loop_pipe_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0", "Parent" : "1", "Child" : ["12", "13", "14", "16"],
		"CDFG" : "fft_stage_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Port" : "IN_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Port" : "OUT_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.w_M_real41_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.w_M_imag30_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Parent" : "11", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Parent" : "11", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "fft_stage_0_0_Pipeline_SKIP_X",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln18", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w1_M_real", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_M_imag", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U296", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U297", "Parent" : "16"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U298", "Parent" : "16"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U299", "Parent" : "16"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U300", "Parent" : "16"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U301", "Parent" : "16"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U302", "Parent" : "16"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U303", "Parent" : "16"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U304", "Parent" : "16"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U305", "Parent" : "16"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0", "Parent" : "1", "Child" : ["29", "43"],
		"CDFG" : "fft_stage_1_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "43", "SubInstance" : "grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "45", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "43", "SubInstance" : "grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "w_M_real42", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "w_M_imag31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Parent" : "28", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "fft_stage_1_0_Pipeline_SKIP_X",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln18", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.w_M_real42_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.w_M_imag31_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U317", "Parent" : "29"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U318", "Parent" : "29"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U319", "Parent" : "29"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U320", "Parent" : "29"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U321", "Parent" : "29"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U322", "Parent" : "29"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U323", "Parent" : "29"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U324", "Parent" : "29"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U325", "Parent" : "29"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U326", "Parent" : "29"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Parent" : "28", "Child" : ["44"],
		"CDFG" : "fft_stage_1_0_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0", "Parent" : "1", "Child" : ["46", "60"],
		"CDFG" : "fft_stage_2_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "46", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "46", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real43", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag32", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Parent" : "45", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "fft_stage_2_0_Pipeline_SKIP_X",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln18", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.w_M_real43_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.w_M_imag32_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U336", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U337", "Parent" : "46"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U338", "Parent" : "46"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U339", "Parent" : "46"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U340", "Parent" : "46"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U341", "Parent" : "46"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U342", "Parent" : "46"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U343", "Parent" : "46"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U344", "Parent" : "46"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U345", "Parent" : "46"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "45", "Child" : ["61"],
		"CDFG" : "fft_stage_2_0_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0", "Parent" : "1", "Child" : ["63", "77"],
		"CDFG" : "fft_stage_3_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "45", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "77", "SubInstance" : "grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "77", "SubInstance" : "grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "45", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real44", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag33", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Parent" : "62", "Child" : ["64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "fft_stage_3_0_Pipeline_SKIP_X",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln18", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.w_M_real44_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.w_M_imag33_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U355", "Parent" : "63"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U356", "Parent" : "63"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U357", "Parent" : "63"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U358", "Parent" : "63"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U359", "Parent" : "63"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U360", "Parent" : "63"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U361", "Parent" : "63"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U362", "Parent" : "63"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U363", "Parent" : "63"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U364", "Parent" : "63"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "62", "Child" : ["78"],
		"CDFG" : "fft_stage_3_0_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0", "Parent" : "1", "Child" : ["80", "94"],
		"CDFG" : "fft_stage_4_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "94", "SubInstance" : "grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "94", "SubInstance" : "grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real45", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag34", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Parent" : "79", "Child" : ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93"],
		"CDFG" : "fft_stage_4_0_Pipeline_SKIP_X",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln14", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.w_M_real45_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.w_M_imag34_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U374", "Parent" : "80"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U375", "Parent" : "80"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U376", "Parent" : "80"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U377", "Parent" : "80"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U378", "Parent" : "80"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U379", "Parent" : "80"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U380", "Parent" : "80"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U381", "Parent" : "80"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U382", "Parent" : "80"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U383", "Parent" : "80"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "79", "Child" : ["95"],
		"CDFG" : "fft_stage_4_0_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0", "Parent" : "1", "Child" : ["97", "111"],
		"CDFG" : "fft_stage_5_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real46", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag35", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Parent" : "96", "Child" : ["98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110"],
		"CDFG" : "fft_stage_5_0_Pipeline_SKIP_X",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln6", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.w_M_real46_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.w_M_imag35_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U393", "Parent" : "97"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U394", "Parent" : "97"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U395", "Parent" : "97"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U396", "Parent" : "97"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U397", "Parent" : "97"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U398", "Parent" : "97"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U399", "Parent" : "97"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U400", "Parent" : "97"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U401", "Parent" : "97"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U402", "Parent" : "97"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "96", "Child" : ["112"],
		"CDFG" : "fft_stage_5_0_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0", "Parent" : "1", "Child" : ["114"],
		"CDFG" : "buf_2_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_buffer", "Type" : "Memory", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "8"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_fft_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0.flow_control_loop_pipe_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U", "Parent" : "1"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U", "Parent" : "1"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U", "Parent" : "1"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U", "Parent" : "1"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U", "Parent" : "1"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U", "Parent" : "1"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc12 {
		n {Type I LastRead 0 FirstWrite -1}
		c_row_op_trans_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type O LastRead -1 FirstWrite 1}
		w_M_real41 {Type I LastRead -1 FirstWrite -1}
		w_M_imag30 {Type I LastRead -1 FirstWrite -1}
		w_M_real42 {Type I LastRead -1 FirstWrite -1}
		w_M_imag31 {Type I LastRead -1 FirstWrite -1}
		w_M_real43 {Type I LastRead -1 FirstWrite -1}
		w_M_imag32 {Type I LastRead -1 FirstWrite -1}
		w_M_real44 {Type I LastRead -1 FirstWrite -1}
		w_M_imag33 {Type I LastRead -1 FirstWrite -1}
		w_M_real45 {Type I LastRead -1 FirstWrite -1}
		w_M_imag34 {Type I LastRead -1 FirstWrite -1}
		w_M_real46 {Type I LastRead -1 FirstWrite -1}
		w_M_imag35 {Type I LastRead -1 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_139_1 {
		c_row_op_trans_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type O LastRead -1 FirstWrite 1}
		w_M_real41 {Type I LastRead -1 FirstWrite -1}
		w_M_imag30 {Type I LastRead -1 FirstWrite -1}
		w_M_real42 {Type I LastRead -1 FirstWrite -1}
		w_M_imag31 {Type I LastRead -1 FirstWrite -1}
		w_M_real43 {Type I LastRead -1 FirstWrite -1}
		w_M_imag32 {Type I LastRead -1 FirstWrite -1}
		w_M_real44 {Type I LastRead -1 FirstWrite -1}
		w_M_imag33 {Type I LastRead -1 FirstWrite -1}
		w_M_real45 {Type I LastRead -1 FirstWrite -1}
		w_M_imag34 {Type I LastRead -1 FirstWrite -1}
		w_M_real46 {Type I LastRead -1 FirstWrite -1}
		w_M_imag35 {Type I LastRead -1 FirstWrite -1}}
	stream_2_buf {
		c_row_op_trans_st {Type I LastRead 0 FirstWrite -1}
		input_buffer {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	fft_stage_0_0 {
		IN_r {Type I LastRead 9 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real41 {Type I LastRead -1 FirstWrite -1}
		w_M_imag30 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_0_0_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_0_0_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 9 FirstWrite -1}
		w1_M_real {Type I LastRead 0 FirstWrite -1}
		w1_M_imag {Type I LastRead 0 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 16}}
	fft_stage_1_0 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real42 {Type I LastRead -1 FirstWrite -1}
		w_M_imag31 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_0_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real42 {Type I LastRead -1 FirstWrite -1}
		w_M_imag31 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_0_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_2_0 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real43 {Type I LastRead -1 FirstWrite -1}
		w_M_imag32 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2_0_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real43 {Type I LastRead -1 FirstWrite -1}
		w_M_imag32 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2_0_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_3_0 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real44 {Type I LastRead -1 FirstWrite -1}
		w_M_imag33 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_0_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real44 {Type I LastRead -1 FirstWrite -1}
		w_M_imag33 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_0_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_4_0 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real45 {Type I LastRead -1 FirstWrite -1}
		w_M_imag34 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4_0_Pipeline_SKIP_X {
		trunc_ln14 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real45 {Type I LastRead -1 FirstWrite -1}
		w_M_imag34 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4_0_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_5_0 {
		IN_r {Type I LastRead 10 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real46 {Type I LastRead -1 FirstWrite -1}
		w_M_imag35 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5_0_Pipeline_SKIP_X {
		trunc_ln6 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 10 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 17}
		w_M_real46 {Type I LastRead -1 FirstWrite -1}
		w_M_imag35 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5_0_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	buf_2_stream {
		output_buffer {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "301235"}
	, {"Name" : "Interval", "Min" : "28", "Max" : "301235"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 32 } } }
	c_row_op_trans_st { ap_fifo {  { c_row_op_trans_st_dout fifo_data 0 32 }  { c_row_op_trans_st_empty_n fifo_status 0 1 }  { c_row_op_trans_st_read fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 }  { p_read_ap_vld in_vld 0 1 } } }
	c_fft_col_op_st { ap_fifo {  { c_fft_col_op_st_din fifo_data 1 32 }  { c_fft_col_op_st_full_n fifo_status 0 1 }  { c_fft_col_op_st_write fifo_update 1 1 } } }
}
