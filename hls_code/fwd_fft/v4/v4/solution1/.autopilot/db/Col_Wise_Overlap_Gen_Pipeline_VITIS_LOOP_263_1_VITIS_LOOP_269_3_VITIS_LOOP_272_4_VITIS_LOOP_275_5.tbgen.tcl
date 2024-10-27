set moduleName Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5
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
set C_modelName {Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ sub_i_i int 9 regular  }
	{ bound42 int 48 regular  }
	{ c_ifmap_col_op_st int 32 regular {fifo 1 volatile }  }
	{ bound16 int 32 regular  }
	{ cmp_i_i_mid157 int 1 regular  }
	{ trunc_ln int 8 regular  }
	{ icmp_ln1057 int 1 regular  }
	{ bound int 16 regular  }
	{ icmp_ln1057_21 int 1 regular  }
	{ bound4 int 24 regular  }
	{ icmp_ln1057_22 int 1 regular  }
	{ trunc_ln40 int 8 regular  }
	{ Col_Buffer int 32 regular {fifo 2 volatile }  }
	{ c_ifmap_patch_st int 32 regular {fifo 0 volatile }  }
	{ p_cast1 int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sub_i_i", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bound42", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "c_ifmap_col_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bound16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i_mid157", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1057", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1057_21", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bound4", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1057_22", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln40", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Col_Buffer", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "c_ifmap_patch_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_ifmap_patch_st_dout sc_in sc_lv 32 signal 13 } 
	{ c_ifmap_patch_st_empty_n sc_in sc_logic 1 signal 13 } 
	{ c_ifmap_patch_st_read sc_out sc_logic 1 signal 13 } 
	{ c_ifmap_col_op_st_din sc_out sc_lv 32 signal 2 } 
	{ c_ifmap_col_op_st_full_n sc_in sc_logic 1 signal 2 } 
	{ c_ifmap_col_op_st_write sc_out sc_logic 1 signal 2 } 
	{ Col_Buffer_din sc_out sc_lv 32 signal 12 } 
	{ Col_Buffer_full_n sc_in sc_logic 1 signal 12 } 
	{ Col_Buffer_write sc_out sc_logic 1 signal 12 } 
	{ Col_Buffer_dout sc_in sc_lv 32 signal 12 } 
	{ Col_Buffer_empty_n sc_in sc_logic 1 signal 12 } 
	{ Col_Buffer_read sc_out sc_logic 1 signal 12 } 
	{ sub_i_i sc_in sc_lv 9 signal 0 } 
	{ bound42 sc_in sc_lv 48 signal 1 } 
	{ bound16 sc_in sc_lv 32 signal 3 } 
	{ cmp_i_i_mid157 sc_in sc_lv 1 signal 4 } 
	{ trunc_ln sc_in sc_lv 8 signal 5 } 
	{ icmp_ln1057 sc_in sc_lv 1 signal 6 } 
	{ bound sc_in sc_lv 16 signal 7 } 
	{ icmp_ln1057_21 sc_in sc_lv 1 signal 8 } 
	{ bound4 sc_in sc_lv 24 signal 9 } 
	{ icmp_ln1057_22 sc_in sc_lv 1 signal 10 } 
	{ trunc_ln40 sc_in sc_lv 8 signal 11 } 
	{ p_cast1 sc_in sc_lv 8 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_ifmap_patch_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "dout" }} , 
 	{ "name": "c_ifmap_patch_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "empty_n" }} , 
 	{ "name": "c_ifmap_patch_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "read" }} , 
 	{ "name": "c_ifmap_col_op_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "din" }} , 
 	{ "name": "c_ifmap_col_op_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "full_n" }} , 
 	{ "name": "c_ifmap_col_op_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "write" }} , 
 	{ "name": "Col_Buffer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Col_Buffer", "role": "din" }} , 
 	{ "name": "Col_Buffer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Col_Buffer", "role": "full_n" }} , 
 	{ "name": "Col_Buffer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Col_Buffer", "role": "write" }} , 
 	{ "name": "Col_Buffer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Col_Buffer", "role": "dout" }} , 
 	{ "name": "Col_Buffer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Col_Buffer", "role": "empty_n" }} , 
 	{ "name": "Col_Buffer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Col_Buffer", "role": "read" }} , 
 	{ "name": "sub_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "sub_i_i", "role": "default" }} , 
 	{ "name": "bound42", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bound42", "role": "default" }} , 
 	{ "name": "bound16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bound16", "role": "default" }} , 
 	{ "name": "cmp_i_i_mid157", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i_mid157", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "icmp_ln1057", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1057", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "icmp_ln1057_21", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1057_21", "role": "default" }} , 
 	{ "name": "bound4", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bound4", "role": "default" }} , 
 	{ "name": "icmp_ln1057_22", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1057_22", "role": "default" }} , 
 	{ "name": "trunc_ln40", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trunc_ln40", "role": "default" }} , 
 	{ "name": "p_cast1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_cast1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "172035",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sub_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound42", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_ifmap_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_ifmap_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bound16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_mid157", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1057", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1057_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1057_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln40", "Type" : "None", "Direction" : "I"},
			{"Name" : "Col_Buffer", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "Col_Buffer_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "Col_Buffer_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_ifmap_patch_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_ifmap_patch_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5 {
		sub_i_i {Type I LastRead 0 FirstWrite -1}
		bound42 {Type I LastRead 0 FirstWrite -1}
		c_ifmap_col_op_st {Type O LastRead -1 FirstWrite 3}
		bound16 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_mid157 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		icmp_ln1057 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		icmp_ln1057_21 {Type I LastRead 0 FirstWrite -1}
		bound4 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1057_22 {Type I LastRead 0 FirstWrite -1}
		trunc_ln40 {Type I LastRead 0 FirstWrite -1}
		Col_Buffer {Type IO LastRead 3 FirstWrite 3}
		c_ifmap_patch_st {Type I LastRead 3 FirstWrite -1}
		p_cast1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "172035"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "172035"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sub_i_i { ap_none {  { sub_i_i in_data 0 9 } } }
	bound42 { ap_none {  { bound42 in_data 0 48 } } }
	c_ifmap_col_op_st { ap_fifo {  { c_ifmap_col_op_st_din fifo_data 1 32 }  { c_ifmap_col_op_st_full_n fifo_status 0 1 }  { c_ifmap_col_op_st_write fifo_update 1 1 } } }
	bound16 { ap_none {  { bound16 in_data 0 32 } } }
	cmp_i_i_mid157 { ap_none {  { cmp_i_i_mid157 in_data 0 1 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 8 } } }
	icmp_ln1057 { ap_none {  { icmp_ln1057 in_data 0 1 } } }
	bound { ap_none {  { bound in_data 0 16 } } }
	icmp_ln1057_21 { ap_none {  { icmp_ln1057_21 in_data 0 1 } } }
	bound4 { ap_none {  { bound4 in_data 0 24 } } }
	icmp_ln1057_22 { ap_none {  { icmp_ln1057_22 in_data 0 1 } } }
	trunc_ln40 { ap_none {  { trunc_ln40 in_data 0 8 } } }
	Col_Buffer { ap_fifo {  { Col_Buffer_din fifo_data 1 32 }  { Col_Buffer_full_n fifo_status 0 1 }  { Col_Buffer_write fifo_update 1 1 }  { Col_Buffer_dout fifo_data 0 32 }  { Col_Buffer_empty_n fifo_status 0 1 }  { Col_Buffer_read fifo_update 1 1 } } }
	c_ifmap_patch_st { ap_fifo {  { c_ifmap_patch_st_dout fifo_data 0 32 }  { c_ifmap_patch_st_empty_n fifo_status 0 1 }  { c_ifmap_patch_st_read fifo_update 1 1 } } }
	p_cast1 { ap_none {  { p_cast1 in_data 0 8 } } }
}
