set moduleName pool_Pipeline_VITIS_LOOP_178_2
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
set C_modelName {pool_Pipeline_VITIS_LOOP_178_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln541 int 8 regular  }
	{ sext_ln178 int 32 regular  }
	{ O int 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ zext_ln175 int 8 regular  }
	{ zext_ln151_2 int 10 regular  }
	{ I_0_0 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ zext_ln151_3 int 10 regular  }
	{ I_0_1 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ I_1_0 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ I_1_1 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ y_cast int 1 regular  }
	{ or_ln112 int 1 regular  }
	{ empty int 1 regular  }
	{ mul int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln541", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln178", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln175", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln151_2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "I_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln151_3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "I_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "I_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "I_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln112", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mul", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln541 sc_in sc_lv 8 signal 0 } 
	{ sext_ln178 sc_in sc_lv 32 signal 1 } 
	{ O_address0 sc_out sc_lv 12 signal 2 } 
	{ O_ce0 sc_out sc_logic 1 signal 2 } 
	{ O_we0 sc_out sc_logic 1 signal 2 } 
	{ O_d0 sc_out sc_lv 32 signal 2 } 
	{ zext_ln175 sc_in sc_lv 8 signal 3 } 
	{ zext_ln151_2 sc_in sc_lv 10 signal 4 } 
	{ I_0_0_address0 sc_out sc_lv 10 signal 5 } 
	{ I_0_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ I_0_0_q0 sc_in sc_lv 32 signal 5 } 
	{ I_0_0_address1 sc_out sc_lv 10 signal 5 } 
	{ I_0_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ I_0_0_q1 sc_in sc_lv 32 signal 5 } 
	{ zext_ln151_3 sc_in sc_lv 10 signal 6 } 
	{ I_0_1_address0 sc_out sc_lv 10 signal 7 } 
	{ I_0_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ I_0_1_q0 sc_in sc_lv 32 signal 7 } 
	{ I_0_1_address1 sc_out sc_lv 10 signal 7 } 
	{ I_0_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ I_0_1_q1 sc_in sc_lv 32 signal 7 } 
	{ I_1_0_address0 sc_out sc_lv 10 signal 8 } 
	{ I_1_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ I_1_0_q0 sc_in sc_lv 32 signal 8 } 
	{ I_1_0_address1 sc_out sc_lv 10 signal 8 } 
	{ I_1_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ I_1_0_q1 sc_in sc_lv 32 signal 8 } 
	{ I_1_1_address0 sc_out sc_lv 10 signal 9 } 
	{ I_1_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ I_1_1_q0 sc_in sc_lv 32 signal 9 } 
	{ I_1_1_address1 sc_out sc_lv 10 signal 9 } 
	{ I_1_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ I_1_1_q1 sc_in sc_lv 32 signal 9 } 
	{ y_cast sc_in sc_lv 1 signal 10 } 
	{ or_ln112 sc_in sc_lv 1 signal 11 } 
	{ empty sc_in sc_lv 1 signal 12 } 
	{ mul sc_in sc_lv 16 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln541", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln541", "role": "default" }} , 
 	{ "name": "sext_ln178", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln178", "role": "default" }} , 
 	{ "name": "O_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "O", "role": "address0" }} , 
 	{ "name": "O_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "ce0" }} , 
 	{ "name": "O_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O", "role": "we0" }} , 
 	{ "name": "O_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O", "role": "d0" }} , 
 	{ "name": "zext_ln175", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln175", "role": "default" }} , 
 	{ "name": "zext_ln151_2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln151_2", "role": "default" }} , 
 	{ "name": "I_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_0_0", "role": "address0" }} , 
 	{ "name": "I_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_0_0", "role": "ce0" }} , 
 	{ "name": "I_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_0_0", "role": "q0" }} , 
 	{ "name": "I_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "I_0_0", "role": "address1" }} , 
 	{ "name": "I_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_0_0", "role": "ce1" }} , 
 	{ "name": "I_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_0_0", "role": "q1" }} , 
 	{ "name": "zext_ln151_3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln151_3", "role": "default" }} , 
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
 	{ "name": "y_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_cast", "role": "default" }} , 
 	{ "name": "or_ln112", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "or_ln112", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "mul", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mul", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdiv_16ns_16ns_16_7_no_dsp_1_U241", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdiv_16ns_16ns_16_7_no_dsp_1_U242", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U243", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U244", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U245", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U246", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U247", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U248", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U249", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U250", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U251", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U252", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U253", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U254", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U255", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U256", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U257", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hcmp_16ns_16ns_1_2_no_dsp_1_U258", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U259", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U260", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U261", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U262", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U263", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U264", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U265", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U266", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U267", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U268", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U269", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U270", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U271", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U272", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U273", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U274", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U275", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U276", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U277", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U278", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U279", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U280", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U281", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U282", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "21", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln541 { ap_none {  { zext_ln541 in_data 0 8 } } }
	sext_ln178 { ap_none {  { sext_ln178 in_data 0 32 } } }
	O { ap_memory {  { O_address0 mem_address 1 12 }  { O_ce0 mem_ce 1 1 }  { O_we0 mem_we 1 1 }  { O_d0 mem_din 1 32 } } }
	zext_ln175 { ap_none {  { zext_ln175 in_data 0 8 } } }
	zext_ln151_2 { ap_none {  { zext_ln151_2 in_data 0 10 } } }
	I_0_0 { ap_memory {  { I_0_0_address0 mem_address 1 10 }  { I_0_0_ce0 mem_ce 1 1 }  { I_0_0_q0 in_data 0 32 }  { I_0_0_address1 MemPortADDR2 1 10 }  { I_0_0_ce1 MemPortCE2 1 1 }  { I_0_0_q1 in_data 0 32 } } }
	zext_ln151_3 { ap_none {  { zext_ln151_3 in_data 0 10 } } }
	I_0_1 { ap_memory {  { I_0_1_address0 mem_address 1 10 }  { I_0_1_ce0 mem_ce 1 1 }  { I_0_1_q0 in_data 0 32 }  { I_0_1_address1 MemPortADDR2 1 10 }  { I_0_1_ce1 MemPortCE2 1 1 }  { I_0_1_q1 in_data 0 32 } } }
	I_1_0 { ap_memory {  { I_1_0_address0 mem_address 1 10 }  { I_1_0_ce0 mem_ce 1 1 }  { I_1_0_q0 in_data 0 32 }  { I_1_0_address1 MemPortADDR2 1 10 }  { I_1_0_ce1 MemPortCE2 1 1 }  { I_1_0_q1 in_data 0 32 } } }
	I_1_1 { ap_memory {  { I_1_1_address0 mem_address 1 10 }  { I_1_1_ce0 mem_ce 1 1 }  { I_1_1_q0 in_data 0 32 }  { I_1_1_address1 MemPortADDR2 1 10 }  { I_1_1_ce1 MemPortCE2 1 1 }  { I_1_1_q1 in_data 0 32 } } }
	y_cast { ap_none {  { y_cast in_data 0 1 } } }
	or_ln112 { ap_none {  { or_ln112 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	mul { ap_none {  { mul in_data 0 16 } } }
}
