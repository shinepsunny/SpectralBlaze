set moduleName Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9
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
set C_modelName {Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ mul_ln205 int 16 regular  }
	{ p_cast int 16 regular  }
	{ bound4 int 24 regular  }
	{ bound int 16 regular  }
	{ p_cast3_cast int 8 regular  }
	{ cmp_i_not_mid115 int 1 regular  }
	{ p_cast6 int 8 regular  }
	{ icmp_ln1057 int 1 regular  }
	{ burst_buffer1 int 128 regular {array 1984 { 1 3 } 1 1 }  }
	{ burst_buffer2 int 128 regular {array 1984 { 1 3 } 1 1 }  }
	{ c_ifmap_patch_st int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mul_ln205", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bound4", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast3_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_not_mid115", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1057", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "burst_buffer1", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "burst_buffer2", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "c_ifmap_patch_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_ifmap_patch_st_din sc_out sc_lv 32 signal 10 } 
	{ c_ifmap_patch_st_full_n sc_in sc_logic 1 signal 10 } 
	{ c_ifmap_patch_st_write sc_out sc_logic 1 signal 10 } 
	{ mul_ln205 sc_in sc_lv 16 signal 0 } 
	{ p_cast sc_in sc_lv 16 signal 1 } 
	{ bound4 sc_in sc_lv 24 signal 2 } 
	{ bound sc_in sc_lv 16 signal 3 } 
	{ p_cast3_cast sc_in sc_lv 8 signal 4 } 
	{ cmp_i_not_mid115 sc_in sc_lv 1 signal 5 } 
	{ p_cast6 sc_in sc_lv 8 signal 6 } 
	{ icmp_ln1057 sc_in sc_lv 1 signal 7 } 
	{ burst_buffer1_address0 sc_out sc_lv 11 signal 8 } 
	{ burst_buffer1_ce0 sc_out sc_logic 1 signal 8 } 
	{ burst_buffer1_q0 sc_in sc_lv 128 signal 8 } 
	{ burst_buffer2_address0 sc_out sc_lv 11 signal 9 } 
	{ burst_buffer2_ce0 sc_out sc_logic 1 signal 9 } 
	{ burst_buffer2_q0 sc_in sc_lv 128 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_ifmap_patch_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "din" }} , 
 	{ "name": "c_ifmap_patch_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "full_n" }} , 
 	{ "name": "c_ifmap_patch_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "write" }} , 
 	{ "name": "mul_ln205", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mul_ln205", "role": "default" }} , 
 	{ "name": "p_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_cast", "role": "default" }} , 
 	{ "name": "bound4", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bound4", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "p_cast3_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_cast3_cast", "role": "default" }} , 
 	{ "name": "cmp_i_not_mid115", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_not_mid115", "role": "default" }} , 
 	{ "name": "p_cast6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_cast6", "role": "default" }} , 
 	{ "name": "icmp_ln1057", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1057", "role": "default" }} , 
 	{ "name": "burst_buffer1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "burst_buffer1", "role": "address0" }} , 
 	{ "name": "burst_buffer1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "burst_buffer1", "role": "ce0" }} , 
 	{ "name": "burst_buffer1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "burst_buffer1", "role": "q0" }} , 
 	{ "name": "burst_buffer2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "burst_buffer2", "role": "address0" }} , 
 	{ "name": "burst_buffer2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "burst_buffer2", "role": "ce0" }} , 
 	{ "name": "burst_buffer2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "burst_buffer2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mul_ln205", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_not_mid115", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast6", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1057", "Type" : "None", "Direction" : "I"},
			{"Name" : "burst_buffer1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "burst_buffer2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_ifmap_patch_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_ifmap_patch_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_8ns_16_4_1_U12", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9 {
		mul_ln205 {Type I LastRead 0 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		bound4 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		p_cast3_cast {Type I LastRead 0 FirstWrite -1}
		cmp_i_not_mid115 {Type I LastRead 0 FirstWrite -1}
		p_cast6 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1057 {Type I LastRead 0 FirstWrite -1}
		burst_buffer1 {Type I LastRead 3 FirstWrite -1}
		burst_buffer2 {Type I LastRead 3 FirstWrite -1}
		c_ifmap_patch_st {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3142"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3142"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mul_ln205 { ap_none {  { mul_ln205 in_data 0 16 } } }
	p_cast { ap_none {  { p_cast in_data 0 16 } } }
	bound4 { ap_none {  { bound4 in_data 0 24 } } }
	bound { ap_none {  { bound in_data 0 16 } } }
	p_cast3_cast { ap_none {  { p_cast3_cast in_data 0 8 } } }
	cmp_i_not_mid115 { ap_none {  { cmp_i_not_mid115 in_data 0 1 } } }
	p_cast6 { ap_none {  { p_cast6 in_data 0 8 } } }
	icmp_ln1057 { ap_none {  { icmp_ln1057 in_data 0 1 } } }
	burst_buffer1 { ap_memory {  { burst_buffer1_address0 mem_address 1 11 }  { burst_buffer1_ce0 mem_ce 1 1 }  { burst_buffer1_q0 mem_dout 0 128 } } }
	burst_buffer2 { ap_memory {  { burst_buffer2_address0 mem_address 1 11 }  { burst_buffer2_ce0 mem_ce 1 1 }  { burst_buffer2_q0 mem_dout 0 128 } } }
	c_ifmap_patch_st { ap_fifo {  { c_ifmap_patch_st_din fifo_data 1 32 }  { c_ifmap_patch_st_full_n fifo_status 0 1 }  { c_ifmap_patch_st_write fifo_update 1 1 } } }
}
