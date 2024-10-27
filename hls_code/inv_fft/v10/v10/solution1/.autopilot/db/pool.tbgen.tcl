set moduleName pool
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
set C_modelName {pool}
set C_modelType { int 64 }
set C_modelArgList {
	{ I_0_0 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ I_0_1 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ I_1_0 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ I_1_1 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ O int 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ p_read int 32 regular  }
	{ actp_regp int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "I_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "I_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "I_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "I_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "actp_regp", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ I_0_0_address0 sc_out sc_lv 10 signal 0 } 
	{ I_0_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ I_0_0_q0 sc_in sc_lv 32 signal 0 } 
	{ I_0_0_address1 sc_out sc_lv 10 signal 0 } 
	{ I_0_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ I_0_0_q1 sc_in sc_lv 32 signal 0 } 
	{ I_0_1_address0 sc_out sc_lv 10 signal 1 } 
	{ I_0_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ I_0_1_q0 sc_in sc_lv 32 signal 1 } 
	{ I_0_1_address1 sc_out sc_lv 10 signal 1 } 
	{ I_0_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ I_0_1_q1 sc_in sc_lv 32 signal 1 } 
	{ I_1_0_address0 sc_out sc_lv 10 signal 2 } 
	{ I_1_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ I_1_0_q0 sc_in sc_lv 32 signal 2 } 
	{ I_1_0_address1 sc_out sc_lv 10 signal 2 } 
	{ I_1_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ I_1_0_q1 sc_in sc_lv 32 signal 2 } 
	{ I_1_1_address0 sc_out sc_lv 10 signal 3 } 
	{ I_1_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ I_1_1_q0 sc_in sc_lv 32 signal 3 } 
	{ I_1_1_address1 sc_out sc_lv 10 signal 3 } 
	{ I_1_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ I_1_1_q1 sc_in sc_lv 32 signal 3 } 
	{ O_address0 sc_out sc_lv 12 signal 4 } 
	{ O_ce0 sc_out sc_logic 1 signal 4 } 
	{ O_we0 sc_out sc_logic 1 signal 4 } 
	{ O_d0 sc_out sc_lv 32 signal 4 } 
	{ p_read sc_in sc_lv 32 signal 5 } 
	{ actp_regp_dout sc_in sc_lv 32 signal 6 } 
	{ actp_regp_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ actp_regp_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ actp_regp_empty_n sc_in sc_logic 1 signal 6 } 
	{ actp_regp_read sc_out sc_logic 1 signal 6 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "I_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_0_0", "role": "address0" }} , 
 	{ "name": "I_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_0_0", "role": "ce0" }} , 
 	{ "name": "I_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_0_0", "role": "q0" }} , 
 	{ "name": "I_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_0_0", "role": "address1" }} , 
 	{ "name": "I_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_0_0", "role": "ce1" }} , 
 	{ "name": "I_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_0_0", "role": "q1" }} , 
 	{ "name": "I_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_0_1", "role": "address0" }} , 
 	{ "name": "I_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_0_1", "role": "ce0" }} , 
 	{ "name": "I_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_0_1", "role": "q0" }} , 
 	{ "name": "I_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_0_1", "role": "address1" }} , 
 	{ "name": "I_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_0_1", "role": "ce1" }} , 
 	{ "name": "I_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_0_1", "role": "q1" }} , 
 	{ "name": "I_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_1_0", "role": "address0" }} , 
 	{ "name": "I_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_1_0", "role": "ce0" }} , 
 	{ "name": "I_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_1_0", "role": "q0" }} , 
 	{ "name": "I_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_1_0", "role": "address1" }} , 
 	{ "name": "I_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_1_0", "role": "ce1" }} , 
 	{ "name": "I_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_1_0", "role": "q1" }} , 
 	{ "name": "I_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_1_1", "role": "address0" }} , 
 	{ "name": "I_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_1_1", "role": "ce0" }} , 
 	{ "name": "I_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_1_1", "role": "q0" }} , 
 	{ "name": "I_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_1_1", "role": "address1" }} , 
 	{ "name": "I_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_1_1", "role": "ce1" }} , 
 	{ "name": "I_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_1_1", "role": "q1" }} , 
 	{ "name": "O_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "O", "role": "address0" }} , 
 	{ "name": "O_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "ce0" }} , 
 	{ "name": "O_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "we0" }} , 
 	{ "name": "O_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O", "role": "d0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "actp_regp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "actp_regp", "role": "dout" }} , 
 	{ "name": "actp_regp_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "actp_regp", "role": "num_data_valid" }} , 
 	{ "name": "actp_regp_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "actp_regp", "role": "fifo_cap" }} , 
 	{ "name": "actp_regp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "actp_regp", "role": "empty_n" }} , 
 	{ "name": "actp_regp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "actp_regp", "role": "read" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "45", "46", "47"],
		"CDFG" : "pool",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "532",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "I_0_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_0_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_0_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_0_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_1_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_1_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "O", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "O", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "actp_regp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "actp_regp_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "pool_Pipeline_VITIS_LOOP_178_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln541", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln178", "Type" : "None", "Direction" : "I"},
			{"Name" : "O", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln175", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln151_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "I_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln151_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "I_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "I_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "I_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter21", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter20", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hdiv_16ns_16ns_16_7_no_dsp_1_U241", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hdiv_16ns_16ns_16_7_no_dsp_1_U242", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U243", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U244", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U245", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U246", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U247", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U248", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U249", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U250", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U251", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U252", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U253", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U254", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U255", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U256", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U257", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U258", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U259", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U260", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U261", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U262", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U263", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U264", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U265", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U266", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U267", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U268", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U269", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U270", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U271", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U272", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U273", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U274", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U275", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U276", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U277", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U278", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U279", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U280", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U281", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U282", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitofp_32ns_32_7_no_dsp_1_U300", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sptohp_32ns_16_2_no_dsp_1_U301", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_4_max_dsp_1_U302", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pool {
		I_0_0 {Type I LastRead 3 FirstWrite -1}
		I_0_1 {Type I LastRead 3 FirstWrite -1}
		I_1_0 {Type I LastRead 3 FirstWrite -1}
		I_1_1 {Type I LastRead 3 FirstWrite -1}
		O {Type O LastRead -1 FirstWrite 21}
		p_read {Type I LastRead 0 FirstWrite -1}
		actp_regp {Type I LastRead 13 FirstWrite -1}}
	pool_Pipeline_VITIS_LOOP_178_2 {
		zext_ln541 {Type I LastRead 0 FirstWrite -1}
		sext_ln178 {Type I LastRead 0 FirstWrite -1}
		O {Type O LastRead -1 FirstWrite 21}
		zext_ln175 {Type I LastRead 0 FirstWrite -1}
		zext_ln151_2 {Type I LastRead 0 FirstWrite -1}
		I_0_0 {Type I LastRead 3 FirstWrite -1}
		zext_ln151_3 {Type I LastRead 0 FirstWrite -1}
		I_0_1 {Type I LastRead 3 FirstWrite -1}
		I_1_0 {Type I LastRead 3 FirstWrite -1}
		I_1_1 {Type I LastRead 3 FirstWrite -1}
		y_cast {Type I LastRead 0 FirstWrite -1}
		or_ln112 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		mul {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "532"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "532"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	I_0_0 { ap_memory {  { I_0_0_address0 mem_address 1 10 }  { I_0_0_ce0 mem_ce 1 1 }  { I_0_0_q0 mem_dout 0 32 }  { I_0_0_address1 MemPortADDR2 1 10 }  { I_0_0_ce1 MemPortCE2 1 1 }  { I_0_0_q1 MemPortDOUT2 0 32 } } }
	I_0_1 { ap_memory {  { I_0_1_address0 mem_address 1 10 }  { I_0_1_ce0 mem_ce 1 1 }  { I_0_1_q0 mem_dout 0 32 }  { I_0_1_address1 MemPortADDR2 1 10 }  { I_0_1_ce1 MemPortCE2 1 1 }  { I_0_1_q1 MemPortDOUT2 0 32 } } }
	I_1_0 { ap_memory {  { I_1_0_address0 mem_address 1 10 }  { I_1_0_ce0 mem_ce 1 1 }  { I_1_0_q0 mem_dout 0 32 }  { I_1_0_address1 MemPortADDR2 1 10 }  { I_1_0_ce1 MemPortCE2 1 1 }  { I_1_0_q1 MemPortDOUT2 0 32 } } }
	I_1_1 { ap_memory {  { I_1_1_address0 mem_address 1 10 }  { I_1_1_ce0 mem_ce 1 1 }  { I_1_1_q0 mem_dout 0 32 }  { I_1_1_address1 MemPortADDR2 1 10 }  { I_1_1_ce1 MemPortCE2 1 1 }  { I_1_1_q1 MemPortDOUT2 0 32 } } }
	O { ap_memory {  { O_address0 mem_address 1 12 }  { O_ce0 mem_ce 1 1 }  { O_we0 mem_we 1 1 }  { O_d0 mem_din 1 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	actp_regp { ap_fifo {  { actp_regp_dout fifo_port_we 0 32 }  { actp_regp_num_data_valid fifo_status_num_data_valid 0 5 }  { actp_regp_fifo_cap fifo_update 0 5 }  { actp_regp_empty_n fifo_status 0 1 }  { actp_regp_read fifo_data 1 1 } } }
}
