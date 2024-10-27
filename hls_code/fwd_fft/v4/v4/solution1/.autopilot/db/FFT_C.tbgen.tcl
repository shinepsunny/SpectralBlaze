set moduleName FFT_C
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
set C_modelName {FFT_C}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_row_op_trans_st int 32 regular {fifo 0 volatile }  }
	{ c_fft_col_op_st int 32 regular {fifo 1 volatile }  }
	{ ctrl1_reg int 32 regular {fifo 0}  }
	{ ctrl2_reg int 32 regular {fifo 0}  }
	{ layer1_reg int 32 regular {fifo 0}  }
	{ ctrl1_reg_c int 32 regular {fifo 1}  }
	{ ctrl2_reg_c int 32 regular {fifo 1}  }
	{ layer1_reg_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_row_op_trans_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_fft_col_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctrl1_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl2_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer1_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl1_reg_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctrl2_reg_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer1_reg_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_row_op_trans_st_dout sc_in sc_lv 32 signal 0 } 
	{ c_row_op_trans_st_empty_n sc_in sc_logic 1 signal 0 } 
	{ c_row_op_trans_st_read sc_out sc_logic 1 signal 0 } 
	{ c_fft_col_op_st_din sc_out sc_lv 32 signal 1 } 
	{ c_fft_col_op_st_full_n sc_in sc_logic 1 signal 1 } 
	{ c_fft_col_op_st_write sc_out sc_logic 1 signal 1 } 
	{ ctrl1_reg_dout sc_in sc_lv 32 signal 2 } 
	{ ctrl1_reg_empty_n sc_in sc_logic 1 signal 2 } 
	{ ctrl1_reg_read sc_out sc_logic 1 signal 2 } 
	{ ctrl2_reg_dout sc_in sc_lv 32 signal 3 } 
	{ ctrl2_reg_empty_n sc_in sc_logic 1 signal 3 } 
	{ ctrl2_reg_read sc_out sc_logic 1 signal 3 } 
	{ layer1_reg_dout sc_in sc_lv 32 signal 4 } 
	{ layer1_reg_empty_n sc_in sc_logic 1 signal 4 } 
	{ layer1_reg_read sc_out sc_logic 1 signal 4 } 
	{ ctrl1_reg_c_din sc_out sc_lv 32 signal 5 } 
	{ ctrl1_reg_c_full_n sc_in sc_logic 1 signal 5 } 
	{ ctrl1_reg_c_write sc_out sc_logic 1 signal 5 } 
	{ ctrl2_reg_c_din sc_out sc_lv 32 signal 6 } 
	{ ctrl2_reg_c_full_n sc_in sc_logic 1 signal 6 } 
	{ ctrl2_reg_c_write sc_out sc_logic 1 signal 6 } 
	{ layer1_reg_c_din sc_out sc_lv 32 signal 7 } 
	{ layer1_reg_c_full_n sc_in sc_logic 1 signal 7 } 
	{ layer1_reg_c_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_row_op_trans_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "dout" }} , 
 	{ "name": "c_row_op_trans_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "empty_n" }} , 
 	{ "name": "c_row_op_trans_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "read" }} , 
 	{ "name": "c_fft_col_op_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "din" }} , 
 	{ "name": "c_fft_col_op_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "full_n" }} , 
 	{ "name": "c_fft_col_op_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "write" }} , 
 	{ "name": "ctrl1_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "dout" }} , 
 	{ "name": "ctrl1_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "empty_n" }} , 
 	{ "name": "ctrl1_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "read" }} , 
 	{ "name": "ctrl2_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "dout" }} , 
 	{ "name": "ctrl2_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "empty_n" }} , 
 	{ "name": "ctrl2_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "read" }} , 
 	{ "name": "layer1_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_reg", "role": "dout" }} , 
 	{ "name": "layer1_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg", "role": "empty_n" }} , 
 	{ "name": "layer1_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg", "role": "read" }} , 
 	{ "name": "ctrl1_reg_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl1_reg_c", "role": "din" }} , 
 	{ "name": "ctrl1_reg_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg_c", "role": "full_n" }} , 
 	{ "name": "ctrl1_reg_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg_c", "role": "write" }} , 
 	{ "name": "ctrl2_reg_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl2_reg_c", "role": "din" }} , 
 	{ "name": "ctrl2_reg_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg_c", "role": "full_n" }} , 
 	{ "name": "ctrl2_reg_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg_c", "role": "write" }} , 
 	{ "name": "layer1_reg_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_reg_c", "role": "din" }} , 
 	{ "name": "layer1_reg_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg_c", "role": "full_n" }} , 
 	{ "name": "layer1_reg_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "123", "124", "125"],
		"CDFG" : "FFT_C",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "301243",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "c_row_op_trans_st", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "c_fft_col_op_st", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real41", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real42", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real43", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag32", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real44", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag33", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag34", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real46", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag35", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106", "Parent" : "0", "Child" : ["2"],
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
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_139_1_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_139_1_U0"}],
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real41"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag30"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real42"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag31"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real43"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag32"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real44"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag33"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real45"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag34"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real46"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag35"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_139_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "12", "29", "46", "63", "80", "97", "114", "116", "117", "118", "119", "120", "121", "122"],
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
			{"ID" : "10", "Name" : "stream_2_buf_U0"}],
		"OutputProcess" : [
			{"ID" : "114", "Name" : "buf_2_stream_U0"}],
		"Port" : [
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "stream_2_buf_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "buf_2_stream_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fft_stage_0_0_U0", "Port" : "w_M_real41"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fft_stage_0_0_U0", "Port" : "w_M_imag30"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "fft_stage_1_0_U0", "Port" : "w_M_real42"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "fft_stage_1_0_U0", "Port" : "w_M_imag31"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "fft_stage_2_0_U0", "Port" : "w_M_real43"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "fft_stage_2_0_U0", "Port" : "w_M_imag32"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "fft_stage_3_0_U0", "Port" : "w_M_real44"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "fft_stage_3_0_U0", "Port" : "w_M_imag33"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "fft_stage_4_0_U0", "Port" : "w_M_real45"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "fft_stage_4_0_U0", "Port" : "w_M_imag34"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "fft_stage_5_0_U0", "Port" : "w_M_real46"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "fft_stage_5_0_U0", "Port" : "w_M_imag35"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0", "Parent" : "2", "Child" : ["11"],
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
			{"Name" : "input_buffer", "Type" : "Memory", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "3"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_70_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0.flow_control_loop_pipe_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0", "Parent" : "2", "Child" : ["13", "14", "15", "17"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Port" : "IN_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Port" : "OUT_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.w_M_real41_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.w_M_imag30_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Parent" : "12", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Parent" : "12", "Child" : ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
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
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U296", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U297", "Parent" : "17"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U298", "Parent" : "17"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U299", "Parent" : "17"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U300", "Parent" : "17"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U301", "Parent" : "17"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U302", "Parent" : "17"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U303", "Parent" : "17"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U304", "Parent" : "17"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U305", "Parent" : "17"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0", "Parent" : "2", "Child" : ["30", "44"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "44", "SubInstance" : "grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "44", "SubInstance" : "grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "w_M_real42", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "w_M_imag31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Parent" : "29", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
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
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.w_M_real42_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.w_M_imag31_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U317", "Parent" : "30"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U318", "Parent" : "30"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U319", "Parent" : "30"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U320", "Parent" : "30"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U321", "Parent" : "30"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U322", "Parent" : "30"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U323", "Parent" : "30"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U324", "Parent" : "30"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U325", "Parent" : "30"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U326", "Parent" : "30"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Parent" : "29", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0", "Parent" : "2", "Child" : ["47", "61"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "47", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "47", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real43", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag32", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Parent" : "46", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
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
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.w_M_real43_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.w_M_imag32_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U336", "Parent" : "47"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U337", "Parent" : "47"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U338", "Parent" : "47"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U339", "Parent" : "47"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U340", "Parent" : "47"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U341", "Parent" : "47"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U342", "Parent" : "47"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U343", "Parent" : "47"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U344", "Parent" : "47"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U345", "Parent" : "47"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "46", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0", "Parent" : "2", "Child" : ["64", "78"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "78", "SubInstance" : "grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "78", "SubInstance" : "grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real44", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag33", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Parent" : "63", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
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
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.w_M_real44_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.w_M_imag33_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U355", "Parent" : "64"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U356", "Parent" : "64"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U357", "Parent" : "64"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U358", "Parent" : "64"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U359", "Parent" : "64"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U360", "Parent" : "64"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U361", "Parent" : "64"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U362", "Parent" : "64"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U363", "Parent" : "64"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U364", "Parent" : "64"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "63", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0", "Parent" : "2", "Child" : ["81", "95"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "95", "SubInstance" : "grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "95", "SubInstance" : "grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real45", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag34", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Parent" : "80", "Child" : ["82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
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
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.w_M_real45_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.w_M_imag34_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U374", "Parent" : "81"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U375", "Parent" : "81"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U376", "Parent" : "81"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U377", "Parent" : "81"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U378", "Parent" : "81"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U379", "Parent" : "81"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U380", "Parent" : "81"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U381", "Parent" : "81"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U382", "Parent" : "81"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U383", "Parent" : "81"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "80", "Child" : ["96"],
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
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0", "Parent" : "2", "Child" : ["98", "112"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "112", "SubInstance" : "grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "112", "SubInstance" : "grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real46", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag35", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Parent" : "97", "Child" : ["99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111"],
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
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.w_M_real46_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.w_M_imag35_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U393", "Parent" : "98"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U394", "Parent" : "98"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U395", "Parent" : "98"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U396", "Parent" : "98"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U397", "Parent" : "98"},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U398", "Parent" : "98"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U399", "Parent" : "98"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U400", "Parent" : "98"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U401", "Parent" : "98"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U402", "Parent" : "98"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "97", "Child" : ["113"],
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
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0", "Parent" : "2", "Child" : ["115"],
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
			{"Name" : "output_buffer", "Type" : "Memory", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "9"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_fft_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0.flow_control_loop_pipe_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U", "Parent" : "2"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U", "Parent" : "2"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U", "Parent" : "2"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U", "Parent" : "2"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U", "Parent" : "2"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U", "Parent" : "2"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U", "Parent" : "2"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U429", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_8ns_24_4_1_U430", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_24ns_16ns_32_4_1_U431", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT_C {
		c_row_op_trans_st {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type O LastRead -1 FirstWrite 1}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg_c {Type O LastRead -1 FirstWrite 0}
		ctrl2_reg_c {Type O LastRead -1 FirstWrite 0}
		layer1_reg_c {Type O LastRead -1 FirstWrite 0}
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
	{"Name" : "Latency", "Min" : "36", "Max" : "301243"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "301243"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_row_op_trans_st { ap_fifo {  { c_row_op_trans_st_dout fifo_data 0 32 }  { c_row_op_trans_st_empty_n fifo_status 0 1 }  { c_row_op_trans_st_read fifo_update 1 1 } } }
	c_fft_col_op_st { ap_fifo {  { c_fft_col_op_st_din fifo_data 1 32 }  { c_fft_col_op_st_full_n fifo_status 0 1 }  { c_fft_col_op_st_write fifo_update 1 1 } } }
	ctrl1_reg { ap_fifo {  { ctrl1_reg_dout fifo_data 0 32 }  { ctrl1_reg_empty_n fifo_status 0 1 }  { ctrl1_reg_read fifo_update 1 1 } } }
	ctrl2_reg { ap_fifo {  { ctrl2_reg_dout fifo_data 0 32 }  { ctrl2_reg_empty_n fifo_status 0 1 }  { ctrl2_reg_read fifo_update 1 1 } } }
	layer1_reg { ap_fifo {  { layer1_reg_dout fifo_data 0 32 }  { layer1_reg_empty_n fifo_status 0 1 }  { layer1_reg_read fifo_update 1 1 } } }
	ctrl1_reg_c { ap_fifo {  { ctrl1_reg_c_din fifo_data 1 32 }  { ctrl1_reg_c_full_n fifo_status 0 1 }  { ctrl1_reg_c_write fifo_update 1 1 } } }
	ctrl2_reg_c { ap_fifo {  { ctrl2_reg_c_din fifo_data 1 32 }  { ctrl2_reg_c_full_n fifo_status 0 1 }  { ctrl2_reg_c_write fifo_update 1 1 } } }
	layer1_reg_c { ap_fifo {  { layer1_reg_c_din fifo_data 1 32 }  { layer1_reg_c_full_n fifo_status 0 1 }  { layer1_reg_c_write fifo_update 1 1 } } }
}
