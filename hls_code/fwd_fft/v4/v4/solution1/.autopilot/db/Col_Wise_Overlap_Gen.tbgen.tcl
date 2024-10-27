set moduleName Col_Wise_Overlap_Gen
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
set C_modelName {Col_Wise_Overlap_Gen}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_ifmap_patch_st int 32 regular {fifo 0 volatile }  }
	{ c_ifmap_col_op_st int 32 regular {fifo 1 volatile }  }
	{ ctrl1_reg int 32 regular {fifo 0}  }
	{ ctrl2_reg int 32 regular {fifo 0}  }
	{ layer1_reg int 32 regular {fifo 0}  }
	{ ctrl1_reg_c20 int 32 regular {fifo 1}  }
	{ ctrl2_reg_c25 int 32 regular {fifo 1}  }
	{ layer1_reg_c30 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_ifmap_patch_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_ifmap_col_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctrl1_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl2_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer1_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl1_reg_c20", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctrl2_reg_c25", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer1_reg_c30", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ c_ifmap_patch_st_dout sc_in sc_lv 32 signal 0 } 
	{ c_ifmap_patch_st_empty_n sc_in sc_logic 1 signal 0 } 
	{ c_ifmap_patch_st_read sc_out sc_logic 1 signal 0 } 
	{ c_ifmap_col_op_st_din sc_out sc_lv 32 signal 1 } 
	{ c_ifmap_col_op_st_full_n sc_in sc_logic 1 signal 1 } 
	{ c_ifmap_col_op_st_write sc_out sc_logic 1 signal 1 } 
	{ ctrl1_reg_dout sc_in sc_lv 32 signal 2 } 
	{ ctrl1_reg_empty_n sc_in sc_logic 1 signal 2 } 
	{ ctrl1_reg_read sc_out sc_logic 1 signal 2 } 
	{ ctrl2_reg_dout sc_in sc_lv 32 signal 3 } 
	{ ctrl2_reg_empty_n sc_in sc_logic 1 signal 3 } 
	{ ctrl2_reg_read sc_out sc_logic 1 signal 3 } 
	{ layer1_reg_dout sc_in sc_lv 32 signal 4 } 
	{ layer1_reg_empty_n sc_in sc_logic 1 signal 4 } 
	{ layer1_reg_read sc_out sc_logic 1 signal 4 } 
	{ ctrl1_reg_c20_din sc_out sc_lv 32 signal 5 } 
	{ ctrl1_reg_c20_full_n sc_in sc_logic 1 signal 5 } 
	{ ctrl1_reg_c20_write sc_out sc_logic 1 signal 5 } 
	{ ctrl2_reg_c25_din sc_out sc_lv 32 signal 6 } 
	{ ctrl2_reg_c25_full_n sc_in sc_logic 1 signal 6 } 
	{ ctrl2_reg_c25_write sc_out sc_logic 1 signal 6 } 
	{ layer1_reg_c30_din sc_out sc_lv 32 signal 7 } 
	{ layer1_reg_c30_full_n sc_in sc_logic 1 signal 7 } 
	{ layer1_reg_c30_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "c_ifmap_patch_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "dout" }} , 
 	{ "name": "c_ifmap_patch_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "empty_n" }} , 
 	{ "name": "c_ifmap_patch_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_patch_st", "role": "read" }} , 
 	{ "name": "c_ifmap_col_op_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "din" }} , 
 	{ "name": "c_ifmap_col_op_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "full_n" }} , 
 	{ "name": "c_ifmap_col_op_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_ifmap_col_op_st", "role": "write" }} , 
 	{ "name": "ctrl1_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "dout" }} , 
 	{ "name": "ctrl1_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "empty_n" }} , 
 	{ "name": "ctrl1_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "read" }} , 
 	{ "name": "ctrl2_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "dout" }} , 
 	{ "name": "ctrl2_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "empty_n" }} , 
 	{ "name": "ctrl2_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "read" }} , 
 	{ "name": "layer1_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_reg", "role": "dout" }} , 
 	{ "name": "layer1_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg", "role": "empty_n" }} , 
 	{ "name": "layer1_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg", "role": "read" }} , 
 	{ "name": "ctrl1_reg_c20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl1_reg_c20", "role": "din" }} , 
 	{ "name": "ctrl1_reg_c20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg_c20", "role": "full_n" }} , 
 	{ "name": "ctrl1_reg_c20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg_c20", "role": "write" }} , 
 	{ "name": "ctrl2_reg_c25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl2_reg_c25", "role": "din" }} , 
 	{ "name": "ctrl2_reg_c25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg_c25", "role": "full_n" }} , 
 	{ "name": "ctrl2_reg_c25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg_c25", "role": "write" }} , 
 	{ "name": "layer1_reg_c30_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_reg_c30", "role": "din" }} , 
 	{ "name": "layer1_reg_c30_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg_c30", "role": "full_n" }} , 
 	{ "name": "layer1_reg_c30_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg_c30", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7"],
		"CDFG" : "Col_Wise_Overlap_Gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "172045",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_ifmap_patch_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1001", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116", "Port" : "c_ifmap_patch_st", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "c_ifmap_col_op_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1001", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116", "Port" : "c_ifmap_col_op_st", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c30_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U59", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_32ns_48_2_1_U60", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_16ns_24_4_1_U61", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_24ns_32_4_1_U62", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Col_Buffer_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Col_Wise_Overlap_Gen {
		c_ifmap_patch_st {Type I LastRead 3 FirstWrite -1}
		c_ifmap_col_op_st {Type O LastRead -1 FirstWrite 3}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg_c20 {Type O LastRead -1 FirstWrite 0}
		ctrl2_reg_c25 {Type O LastRead -1 FirstWrite 0}
		layer1_reg_c30 {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "13", "Max" : "172045"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "172045"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_ifmap_patch_st { ap_fifo {  { c_ifmap_patch_st_dout fifo_data 0 32 }  { c_ifmap_patch_st_empty_n fifo_status 0 1 }  { c_ifmap_patch_st_read fifo_update 1 1 } } }
	c_ifmap_col_op_st { ap_fifo {  { c_ifmap_col_op_st_din fifo_data 1 32 }  { c_ifmap_col_op_st_full_n fifo_status 0 1 }  { c_ifmap_col_op_st_write fifo_update 1 1 } } }
	ctrl1_reg { ap_fifo {  { ctrl1_reg_dout fifo_data 0 32 }  { ctrl1_reg_empty_n fifo_status 0 1 }  { ctrl1_reg_read fifo_update 1 1 } } }
	ctrl2_reg { ap_fifo {  { ctrl2_reg_dout fifo_data 0 32 }  { ctrl2_reg_empty_n fifo_status 0 1 }  { ctrl2_reg_read fifo_update 1 1 } } }
	layer1_reg { ap_fifo {  { layer1_reg_dout fifo_data 0 32 }  { layer1_reg_empty_n fifo_status 0 1 }  { layer1_reg_read fifo_update 1 1 } } }
	ctrl1_reg_c20 { ap_fifo {  { ctrl1_reg_c20_din fifo_data 1 32 }  { ctrl1_reg_c20_full_n fifo_status 0 1 }  { ctrl1_reg_c20_write fifo_update 1 1 } } }
	ctrl2_reg_c25 { ap_fifo {  { ctrl2_reg_c25_din fifo_data 1 32 }  { ctrl2_reg_c25_full_n fifo_status 0 1 }  { ctrl2_reg_c25_write fifo_update 1 1 } } }
	layer1_reg_c30 { ap_fifo {  { layer1_reg_c30_din fifo_data 1 32 }  { layer1_reg_c30_full_n fifo_status 0 1 }  { layer1_reg_c30_write fifo_update 1 1 } } }
}
