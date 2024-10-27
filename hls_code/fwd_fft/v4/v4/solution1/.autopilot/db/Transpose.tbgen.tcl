set moduleName Transpose
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
set C_modelName {Transpose}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_row_op_st int 32 regular {fifo 0 volatile }  }
	{ c_row_op_trans_st int 32 regular {fifo 1 volatile }  }
	{ ctrl1_reg int 32 regular {fifo 0}  }
	{ ctrl2_reg int 32 regular {fifo 0}  }
	{ layer1_reg int 32 regular {fifo 0}  }
	{ ctrl1_reg_c17 int 32 regular {fifo 1}  }
	{ ctrl2_reg_c22 int 32 regular {fifo 1}  }
	{ layer1_reg_c27 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_row_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_row_op_trans_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctrl1_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl2_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer1_reg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl1_reg_c17", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctrl2_reg_c22", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer1_reg_c27", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ c_row_op_st_dout sc_in sc_lv 32 signal 0 } 
	{ c_row_op_st_empty_n sc_in sc_logic 1 signal 0 } 
	{ c_row_op_st_read sc_out sc_logic 1 signal 0 } 
	{ c_row_op_trans_st_din sc_out sc_lv 32 signal 1 } 
	{ c_row_op_trans_st_full_n sc_in sc_logic 1 signal 1 } 
	{ c_row_op_trans_st_write sc_out sc_logic 1 signal 1 } 
	{ ctrl1_reg_dout sc_in sc_lv 32 signal 2 } 
	{ ctrl1_reg_empty_n sc_in sc_logic 1 signal 2 } 
	{ ctrl1_reg_read sc_out sc_logic 1 signal 2 } 
	{ ctrl2_reg_dout sc_in sc_lv 32 signal 3 } 
	{ ctrl2_reg_empty_n sc_in sc_logic 1 signal 3 } 
	{ ctrl2_reg_read sc_out sc_logic 1 signal 3 } 
	{ layer1_reg_dout sc_in sc_lv 32 signal 4 } 
	{ layer1_reg_empty_n sc_in sc_logic 1 signal 4 } 
	{ layer1_reg_read sc_out sc_logic 1 signal 4 } 
	{ ctrl1_reg_c17_din sc_out sc_lv 32 signal 5 } 
	{ ctrl1_reg_c17_full_n sc_in sc_logic 1 signal 5 } 
	{ ctrl1_reg_c17_write sc_out sc_logic 1 signal 5 } 
	{ ctrl2_reg_c22_din sc_out sc_lv 32 signal 6 } 
	{ ctrl2_reg_c22_full_n sc_in sc_logic 1 signal 6 } 
	{ ctrl2_reg_c22_write sc_out sc_logic 1 signal 6 } 
	{ layer1_reg_c27_din sc_out sc_lv 32 signal 7 } 
	{ layer1_reg_c27_full_n sc_in sc_logic 1 signal 7 } 
	{ layer1_reg_c27_write sc_out sc_logic 1 signal 7 } 
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
 	{ "name": "c_row_op_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "dout" }} , 
 	{ "name": "c_row_op_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "empty_n" }} , 
 	{ "name": "c_row_op_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_st", "role": "read" }} , 
 	{ "name": "c_row_op_trans_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "din" }} , 
 	{ "name": "c_row_op_trans_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "full_n" }} , 
 	{ "name": "c_row_op_trans_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_row_op_trans_st", "role": "write" }} , 
 	{ "name": "ctrl1_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "dout" }} , 
 	{ "name": "ctrl1_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "empty_n" }} , 
 	{ "name": "ctrl1_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg", "role": "read" }} , 
 	{ "name": "ctrl2_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "dout" }} , 
 	{ "name": "ctrl2_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "empty_n" }} , 
 	{ "name": "ctrl2_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg", "role": "read" }} , 
 	{ "name": "layer1_reg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_reg", "role": "dout" }} , 
 	{ "name": "layer1_reg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg", "role": "empty_n" }} , 
 	{ "name": "layer1_reg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg", "role": "read" }} , 
 	{ "name": "ctrl1_reg_c17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl1_reg_c17", "role": "din" }} , 
 	{ "name": "ctrl1_reg_c17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg_c17", "role": "full_n" }} , 
 	{ "name": "ctrl1_reg_c17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl1_reg_c17", "role": "write" }} , 
 	{ "name": "ctrl2_reg_c22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl2_reg_c22", "role": "din" }} , 
 	{ "name": "ctrl2_reg_c22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg_c22", "role": "full_n" }} , 
 	{ "name": "ctrl2_reg_c22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl2_reg_c22", "role": "write" }} , 
 	{ "name": "layer1_reg_c27_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_reg_c27", "role": "din" }} , 
 	{ "name": "layer1_reg_c27_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg_c27", "role": "full_n" }} , 
 	{ "name": "layer1_reg_c27_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_reg_c27", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Transpose",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "212264",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc15_fu_82", "Port" : "c_row_op_st", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc15_fu_82", "Port" : "c_row_op_trans_st", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c27_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "212263",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_parent_loop_proc14_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_parent_loop_proc14_U0"}],
		"Port" : [
			{"Name" : "layer1_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_436_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc14_U0", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0", "Parent" : "1", "Child" : ["3"],
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
			{"ID" : "3", "Name" : "dataflow_parent_loop_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "dataflow_parent_loop_proc_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_439_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc_U0", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0", "Parent" : "2", "Child" : ["4"],
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
			{"ID" : "4", "Name" : "dataflow_in_loop_VITIS_LOOP_442_3_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "dataflow_in_loop_VITIS_LOOP_442_3_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_442_3", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "has_continue" : "1"}}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0", "Parent" : "3", "Child" : ["5", "6", "7", "10", "13"],
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
			{"ID" : "7", "Name" : "ifmap_gen_x_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "ifmap_cons_y_U0"}],
		"Port" : [
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ifmap_gen_x_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "ifmap_cons_y_U0", "Port" : "c_row_op_trans_st"}]}]},
	{"ID" : "5", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0", "Parent" : "4", "Child" : ["8", "9"],
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
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "5"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "6"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_370_1_VITIS_LOOP_373_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "8", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.mul_8ns_8ns_16_1_1_U257", "Parent" : "7"},
	{"ID" : "9", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.flow_control_loop_pipe_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0", "Parent" : "4", "Child" : ["11", "12"],
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
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "5"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "6"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_row_op_trans_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_1_VITIS_LOOP_388_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "11", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.mul_8ns_8ns_16_1_1_U262", "Parent" : "10"},
	{"ID" : "12", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.flow_control_loop_pipe_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	Transpose {
		c_row_op_st {Type I LastRead 0 FirstWrite -1}
		c_row_op_trans_st {Type O LastRead -1 FirstWrite 2}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg_c17 {Type O LastRead -1 FirstWrite 0}
		ctrl2_reg_c22 {Type O LastRead -1 FirstWrite 0}
		layer1_reg_c27 {Type O LastRead -1 FirstWrite 0}}
	dataflow_parent_loop_proc15 {
		layer1_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		c_row_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_row_op_trans_st {Type O LastRead -1 FirstWrite 2}}
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
	{"Name" : "Latency", "Min" : "2", "Max" : "212264"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "212264"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_row_op_st { ap_fifo {  { c_row_op_st_dout fifo_data 0 32 }  { c_row_op_st_empty_n fifo_status 0 1 }  { c_row_op_st_read fifo_update 1 1 } } }
	c_row_op_trans_st { ap_fifo {  { c_row_op_trans_st_din fifo_data 1 32 }  { c_row_op_trans_st_full_n fifo_status 0 1 }  { c_row_op_trans_st_write fifo_update 1 1 } } }
	ctrl1_reg { ap_fifo {  { ctrl1_reg_dout fifo_data 0 32 }  { ctrl1_reg_empty_n fifo_status 0 1 }  { ctrl1_reg_read fifo_update 1 1 } } }
	ctrl2_reg { ap_fifo {  { ctrl2_reg_dout fifo_data 0 32 }  { ctrl2_reg_empty_n fifo_status 0 1 }  { ctrl2_reg_read fifo_update 1 1 } } }
	layer1_reg { ap_fifo {  { layer1_reg_dout fifo_data 0 32 }  { layer1_reg_empty_n fifo_status 0 1 }  { layer1_reg_read fifo_update 1 1 } } }
	ctrl1_reg_c17 { ap_fifo {  { ctrl1_reg_c17_din fifo_data 1 32 }  { ctrl1_reg_c17_full_n fifo_status 0 1 }  { ctrl1_reg_c17_write fifo_update 1 1 } } }
	ctrl2_reg_c22 { ap_fifo {  { ctrl2_reg_c22_din fifo_data 1 32 }  { ctrl2_reg_c22_full_n fifo_status 0 1 }  { ctrl2_reg_c22_write fifo_update 1 1 } } }
	layer1_reg_c27 { ap_fifo {  { layer1_reg_c27_din fifo_data 1 32 }  { layer1_reg_c27_full_n fifo_status 0 1 }  { layer1_reg_c27_write fifo_update 1 1 } } }
}
