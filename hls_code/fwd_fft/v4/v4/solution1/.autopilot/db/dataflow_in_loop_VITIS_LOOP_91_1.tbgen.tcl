set moduleName dataflow_in_loop_VITIS_LOOP_91_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dataflow_in_loop_VITIS_LOOP_91_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_ifmap_col_op_st int 32 regular {fifo 0 volatile }  }
	{ p_read int 32 regular  }
	{ c_fft_row_op_st int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_ifmap_col_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_fft_row_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ c_ifmap_col_op_st_dout sc_in sc_lv 32 signal 0 } 
	{ c_ifmap_col_op_st_empty_n sc_in sc_logic 1 signal 0 } 
	{ c_ifmap_col_op_st_read sc_out sc_logic 1 signal 0 } 
	{ p_read sc_in sc_lv 32 signal 1 } 
	{ c_fft_row_op_st_din sc_out sc_lv 32 signal 2 } 
	{ c_fft_row_op_st_full_n sc_in sc_logic 1 signal 2 } 
	{ c_fft_row_op_st_write sc_out sc_logic 1 signal 2 } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "c_ifmap_col_op_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "dout" }} , 
 	{ "name": "c_ifmap_col_op_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "empty_n" }} , 
 	{ "name": "c_ifmap_col_op_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "c_fft_row_op_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_fft_row_op_st", "role": "din" }} , 
 	{ "name": "c_fft_row_op_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_row_op_st", "role": "full_n" }} , 
 	{ "name": "c_fft_row_op_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_row_op_st", "role": "write" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "27", "44", "61", "78", "95", "112", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_91_1",
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
			{"ID" : "8", "Name" : "stream_2_buf17_U0"}],
		"OutputProcess" : [
			{"ID" : "112", "Name" : "buf_2_stream24_U0"}],
		"Port" : [
			{"Name" : "c_ifmap_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "stream_2_buf17_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_row_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "buf_2_stream24_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "fft_stage_0_018_U0", "Port" : "w_M_real40"}]},
			{"Name" : "w_M_imag29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "fft_stage_0_018_U0", "Port" : "w_M_imag29"}]},
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "fft_stage_1_019_U0", "Port" : "w_M_real39"}]},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "fft_stage_1_019_U0", "Port" : "w_M_imag28"}]},
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fft_stage_2_020_U0", "Port" : "w_M_real38"}]},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fft_stage_2_020_U0", "Port" : "w_M_imag27"}]},
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "fft_stage_3_021_U0", "Port" : "w_M_real37"}]},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "fft_stage_3_021_U0", "Port" : "w_M_imag26"}]},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fft_stage_4_022_U0", "Port" : "w_M_real36"}]},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "fft_stage_4_022_U0", "Port" : "w_M_imag25"}]},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "fft_stage_5_023_U0", "Port" : "w_M_real"}]},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "fft_stage_5_023_U0", "Port" : "w_M_imag"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_data1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_12_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_23_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_34_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_45_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_56_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_67_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_2_buf17_U0", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "stream_2_buf17",
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
			{"Name" : "input_buffer", "Type" : "Memory", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "1"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_70_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.stream_2_buf17_U0.flow_control_loop_pipe_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0", "Parent" : "0", "Child" : ["11", "12", "13", "15"],
		"CDFG" : "fft_stage_0_018",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "15", "SubInstance" : "grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75", "Port" : "IN_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "15", "SubInstance" : "grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75", "Port" : "OUT_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag29", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.w_M_real40_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.w_M_imag29_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66", "Parent" : "10", "Child" : ["14"],
		"CDFG" : "fft_stage_0_018_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75", "Parent" : "10", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "fft_stage_0_018_Pipeline_SKIP_X",
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
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U77", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U78", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U79", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U80", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U81", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U82", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U83", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U84", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U85", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U86", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0", "Parent" : "0", "Child" : ["28", "42"],
		"CDFG" : "fft_stage_1_019",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "28", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "28", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "w_M_real39", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "w_M_imag28", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Parent" : "27", "Child" : ["29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "fft_stage_1_019_Pipeline_SKIP_X",
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
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.w_M_real39_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.w_M_imag28_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U103", "Parent" : "28"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U104", "Parent" : "28"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U105", "Parent" : "28"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U106", "Parent" : "28"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U107", "Parent" : "28"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U108", "Parent" : "28"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U109", "Parent" : "28"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U110", "Parent" : "28"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U111", "Parent" : "28"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U112", "Parent" : "28"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61", "Parent" : "27", "Child" : ["43"],
		"CDFG" : "fft_stage_1_019_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0", "Parent" : "0", "Child" : ["45", "59"],
		"CDFG" : "fft_stage_2_020",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "45", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "45", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real38", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Parent" : "44", "Child" : ["46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"],
		"CDFG" : "fft_stage_2_020_Pipeline_SKIP_X",
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
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.w_M_real38_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.w_M_imag27_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U122", "Parent" : "45"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U123", "Parent" : "45"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U124", "Parent" : "45"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U125", "Parent" : "45"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U126", "Parent" : "45"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U127", "Parent" : "45"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U128", "Parent" : "45"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U129", "Parent" : "45"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U130", "Parent" : "45"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U131", "Parent" : "45"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "44", "Child" : ["60"],
		"CDFG" : "fft_stage_2_020_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0", "Parent" : "0", "Child" : ["62", "76"],
		"CDFG" : "fft_stage_3_021",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "76", "SubInstance" : "grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "76", "SubInstance" : "grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real37", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag26", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Parent" : "61", "Child" : ["63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75"],
		"CDFG" : "fft_stage_3_021_Pipeline_SKIP_X",
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
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.w_M_real37_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.w_M_imag26_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U141", "Parent" : "62"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U142", "Parent" : "62"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U143", "Parent" : "62"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U144", "Parent" : "62"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U145", "Parent" : "62"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U146", "Parent" : "62"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U147", "Parent" : "62"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U148", "Parent" : "62"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U149", "Parent" : "62"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U150", "Parent" : "62"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "61", "Child" : ["77"],
		"CDFG" : "fft_stage_3_021_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0", "Parent" : "0", "Child" : ["79", "93"],
		"CDFG" : "fft_stage_4_022",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "93", "SubInstance" : "grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "93", "SubInstance" : "grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real36", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag25", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Parent" : "78", "Child" : ["80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92"],
		"CDFG" : "fft_stage_4_022_Pipeline_SKIP_X",
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
			{"Name" : "trunc_ln10", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.w_M_real36_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.w_M_imag25_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U160", "Parent" : "79"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U161", "Parent" : "79"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U162", "Parent" : "79"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U163", "Parent" : "79"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U164", "Parent" : "79"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U165", "Parent" : "79"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U166", "Parent" : "79"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U167", "Parent" : "79"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U168", "Parent" : "79"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U169", "Parent" : "79"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "78", "Child" : ["94"],
		"CDFG" : "fft_stage_4_022_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0", "Parent" : "0", "Child" : ["96", "110"],
		"CDFG" : "fft_stage_5_023",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "96", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "96", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "w_M_real", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "w_M_imag", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Parent" : "95", "Child" : ["97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109"],
		"CDFG" : "fft_stage_5_023_Pipeline_SKIP_X",
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
			{"Name" : "trunc_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.w_M_real_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.w_M_imag_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hadd_16ns_16ns_16_5_full_dsp_1_U179", "Parent" : "96"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hadd_16ns_16ns_16_5_full_dsp_1_U180", "Parent" : "96"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hadd_16ns_16ns_16_5_full_dsp_1_U181", "Parent" : "96"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hsub_16ns_16ns_16_5_full_dsp_1_U182", "Parent" : "96"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hsub_16ns_16ns_16_5_full_dsp_1_U183", "Parent" : "96"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hsub_16ns_16ns_16_5_full_dsp_1_U184", "Parent" : "96"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U185", "Parent" : "96"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U186", "Parent" : "96"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U187", "Parent" : "96"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U188", "Parent" : "96"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59", "Parent" : "95", "Child" : ["111"],
		"CDFG" : "fft_stage_5_023_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2_stream24_U0", "Parent" : "0", "Child" : ["113"],
		"CDFG" : "buf_2_stream24",
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
			{"Name" : "output_buffer", "Type" : "Memory", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "7"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_fft_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.buf_2_stream24_U0.flow_control_loop_pipe_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c6_channel_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c5_channel_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c4_channel_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c3_channel_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c2_channel_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c1_channel_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_91_1 {
		c_ifmap_col_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_fft_row_op_st {Type O LastRead -1 FirstWrite 1}
		w_M_real40 {Type I LastRead -1 FirstWrite -1}
		w_M_imag29 {Type I LastRead -1 FirstWrite -1}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	stream_2_buf17 {
		c_row_op_trans_st {Type I LastRead 0 FirstWrite -1}
		input_buffer {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	fft_stage_0_018 {
		IN_r {Type I LastRead 9 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real40 {Type I LastRead -1 FirstWrite -1}
		w_M_imag29 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_0_018_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_0_018_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 9 FirstWrite -1}
		w1_M_real {Type I LastRead 0 FirstWrite -1}
		w1_M_imag {Type I LastRead 0 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 16}}
	fft_stage_1_019 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_019_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_019_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_2_020 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2_020_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2_020_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_3_021 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_021_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_021_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_4_022 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4_022_Pipeline_SKIP_X {
		trunc_ln10 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4_022_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_5_023 {
		IN_r {Type I LastRead 10 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5_023_Pipeline_SKIP_X {
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 10 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 17}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5_023_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	buf_2_stream24 {
		output_buffer {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30", "Max" : "204"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_ifmap_col_op_st { ap_fifo {  { c_ifmap_col_op_st_dout fifo_data 0 32 }  { c_ifmap_col_op_st_empty_n fifo_status 0 1 }  { c_ifmap_col_op_st_read fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 }  { p_read_ap_vld in_vld 0 1 } } }
	c_fft_row_op_st { ap_fifo {  { c_fft_row_op_st_din fifo_data 1 32 }  { c_fft_row_op_st_full_n fifo_status 0 1 }  { c_fft_row_op_st_write fifo_update 1 1 } } }
}
