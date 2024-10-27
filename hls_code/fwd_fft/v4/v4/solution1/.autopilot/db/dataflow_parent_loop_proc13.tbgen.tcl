set moduleName dataflow_parent_loop_proc13
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
set C_modelName {dataflow_parent_loop_proc13}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctrl2_reg_load_cast int 8 regular  }
	{ c_fft_col_op_st int 32 regular {fifo 0 volatile }  }
	{ p_read int 8 regular  }
	{ gmem int 128 regular {axi_master 1}  }
	{ fft_out int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctrl2_reg_load_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "c_fft_col_op_st", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "in1","offset": { "type": "dynamic","port_name": "in1","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "in2","offset": { "type": "dynamic","port_name": "in2","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "fft_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ ctrl2_reg_load_cast sc_in sc_lv 8 signal 0 } 
	{ c_fft_col_op_st_dout sc_in sc_lv 32 signal 1 } 
	{ c_fft_col_op_st_empty_n sc_in sc_logic 1 signal 1 } 
	{ c_fft_col_op_st_read sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 8 signal 2 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 3 } 
	{ fft_out sc_in sc_lv 64 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ctrl2_reg_load_cast_ap_vld sc_in sc_logic 1 invld 0 } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 2 } 
	{ fft_out_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ctrl2_reg_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctrl2_reg_load_cast", "role": "default" }} , 
 	{ "name": "c_fft_col_op_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "dout" }} , 
 	{ "name": "c_fft_col_op_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "empty_n" }} , 
 	{ "name": "c_fft_col_op_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_fft_col_op_st", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "fft_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fft_out", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ctrl2_reg_load_cast_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ctrl2_reg_load_cast", "role": "ap_vld" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "fft_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fft_out", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_parent_loop_proc13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "78945",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_parent_loop_proc10_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_parent_loop_proc10_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc10_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc10_U0", "Port" : "gmem"}]},
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc10_U0", "Port" : "wr_ptr"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_468_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc10_U0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4933",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_471_3_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_471_3_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "Port" : "gmem"}]},
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "Port" : "wr_ptr"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_471_3", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0", "Parent" : "1", "Child" : ["3", "4", "5", "6", "9", "14", "15"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_471_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "550",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "entry_proc_U0"},
			{"ID" : "6", "Name" : "ifmap_gen_y_U0"}],
		"OutputProcess" : [
			{"ID" : "9", "Name" : "ifmap_vec_write_U0"}],
		"Port" : [
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "ifmap_gen_y_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "ifmap_vec_write_U0", "Port" : "gmem"}]},
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "ifmap_vec_write_U0", "Port" : "wr_ptr"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.entry_proc_U0", "Parent" : "2",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0", "Parent" : "2", "Child" : ["7", "8"],
		"CDFG" : "ifmap_gen_y",
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
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_fft_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "3"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "4"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1_VITIS_LOOP_403_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.mul_8ns_8ns_16_1_1_U441", "Parent" : "6"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.flow_control_loop_pipe_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0", "Parent" : "2", "Child" : ["10", "12", "13"],
		"CDFG" : "ifmap_vec_write",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "291",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Port" : "ifmap_CF_M_real", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Port" : "ifmap_CF_M_imag", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Port" : "gmem", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_416_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Parent" : "9", "Child" : ["11"],
		"CDFG" : "ifmap_vec_write_Pipeline_VITIS_LOOP_419_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln419_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln416_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln424_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_419_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.mul_31ns_8ns_32_2_1_U452", "Parent" : "9"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.mul_31ns_9s_32_2_1_U453", "Parent" : "9"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc13 {
		ctrl2_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 7 FirstWrite 3}
		fft_out {Type I LastRead 0 FirstWrite -1}
		wr_ptr {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc10 {
		ctrl2_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 7 FirstWrite 3}
		fft_out {Type I LastRead 0 FirstWrite -1}
		wr_ptr {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_471_3 {
		c_fft_col_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 7 FirstWrite 3}
		fft_out {Type I LastRead 2 FirstWrite -1}
		wr_ptr {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		fft_out {Type I LastRead 0 FirstWrite -1}}
	ifmap_gen_y {
		c_fft_col_op_st {Type I LastRead 0 FirstWrite -1}
		ifmap_CF_M_real {Type O LastRead -1 FirstWrite 1}
		ifmap_CF_M_imag {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	ifmap_vec_write {
		ifmap_CF_M_real {Type I LastRead 2 FirstWrite -1}
		ifmap_CF_M_imag {Type I LastRead 2 FirstWrite -1}
		gmem {Type O LastRead 7 FirstWrite 3}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		wr_ptr {Type IO LastRead -1 FirstWrite -1}}
	ifmap_vec_write_Pipeline_VITIS_LOOP_419_2 {
		gmem {Type O LastRead -1 FirstWrite 3}
		sext_ln419_1 {Type I LastRead 0 FirstWrite -1}
		add_ln416_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln424_2 {Type I LastRead 0 FirstWrite -1}
		ifmap_CF_M_real {Type I LastRead 2 FirstWrite -1}
		ifmap_CF_M_imag {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "78945"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "78945"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctrl2_reg_load_cast { ap_none {  { ctrl2_reg_load_cast in_data 0 8 }  { ctrl2_reg_load_cast_ap_vld in_vld 0 1 } } }
	c_fft_col_op_st { ap_fifo {  { c_fft_col_op_st_dout fifo_data 0 32 }  { c_fft_col_op_st_empty_n fifo_status 0 1 }  { c_fft_col_op_st_read fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 8 }  { p_read_ap_vld in_vld 0 1 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 128 }  { m_axi_gmem_WSTRB STRB 1 16 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 128 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	fft_out { ap_none {  { fft_out in_data 0 64 }  { fft_out_ap_vld in_vld 0 1 } } }
}
