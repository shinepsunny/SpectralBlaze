set moduleName fft_stage_2
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
set C_modelName {fft_stage.2}
set C_modelType { int 32 }
set C_modelArgList {
	{ I int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ X int 32 regular {array 4096 { 0 0 } 0 1 }  }
	{ p_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "I", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ I_address0 sc_out sc_lv 12 signal 0 } 
	{ I_ce0 sc_out sc_logic 1 signal 0 } 
	{ I_q0 sc_in sc_lv 32 signal 0 } 
	{ I_address1 sc_out sc_lv 12 signal 0 } 
	{ I_ce1 sc_out sc_logic 1 signal 0 } 
	{ I_q1 sc_in sc_lv 32 signal 0 } 
	{ X_address0 sc_out sc_lv 12 signal 1 } 
	{ X_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_we0 sc_out sc_logic 1 signal 1 } 
	{ X_d0 sc_out sc_lv 32 signal 1 } 
	{ X_address1 sc_out sc_lv 12 signal 1 } 
	{ X_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_we1 sc_out sc_logic 1 signal 1 } 
	{ X_d1 sc_out sc_lv 32 signal 1 } 
	{ p_read sc_in sc_lv 32 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "I", "role": "address0" }} , 
 	{ "name": "I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "ce0" }} , 
 	{ "name": "I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I", "role": "q0" }} , 
 	{ "name": "I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "I", "role": "address1" }} , 
 	{ "name": "I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I", "role": "ce1" }} , 
 	{ "name": "I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I", "role": "q1" }} , 
 	{ "name": "X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "X", "role": "address0" }} , 
 	{ "name": "X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "ce0" }} , 
 	{ "name": "X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "we0" }} , 
 	{ "name": "X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "d0" }} , 
 	{ "name": "X_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "X", "role": "address1" }} , 
 	{ "name": "X_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "ce1" }} , 
 	{ "name": "X_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "we1" }} , 
 	{ "name": "X_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "d1" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "27"],
		"CDFG" : "fft_stage_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "210",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "1", "SubInstance" : "grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "I", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "1", "SubInstance" : "grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_11", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fft_stage_2_Pipeline_VITIS_LOOP_66_2",
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
			{"Name" : "zext_ln70", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "fft_stage_2_Pipeline_SKIP_X_SKIP_Y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "153",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln17", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X_SKIP_Y", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.w_6_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.w_11_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U106", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U107", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U108", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U109", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U110", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U111", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U112", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U113", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U114", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U115", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U116", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U117", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U118", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U119", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U120", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U121", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U122", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U123", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U124", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U125", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_7ns_14_1_1_U132", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_stage_2 {
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_6 {Type I LastRead -1 FirstWrite -1}
		w_11 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2_Pipeline_VITIS_LOOP_66_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln70 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 2 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}}
	fft_stage_2_Pipeline_SKIP_X_SKIP_Y {
		bound {Type I LastRead 0 FirstWrite -1}
		trunc_ln17 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 25}
		w_6 {Type I LastRead -1 FirstWrite -1}
		w_11 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "210"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "210"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	I { ap_memory {  { I_address0 mem_address 1 12 }  { I_ce0 mem_ce 1 1 }  { I_q0 mem_dout 0 32 }  { I_address1 MemPortADDR2 1 12 }  { I_ce1 MemPortCE2 1 1 }  { I_q1 MemPortDOUT2 0 32 } } }
	X { ap_memory {  { X_address0 mem_address 1 12 }  { X_ce0 mem_ce 1 1 }  { X_we0 mem_we 1 1 }  { X_d0 mem_din 1 32 }  { X_address1 MemPortADDR2 1 12 }  { X_ce1 MemPortCE2 1 1 }  { X_we1 MemPortWE2 1 1 }  { X_d1 MemPortDIN2 1 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
}
