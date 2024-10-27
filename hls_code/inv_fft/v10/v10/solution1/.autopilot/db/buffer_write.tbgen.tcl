set moduleName buffer_write
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
set C_modelName {buffer_write}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_st int 64 regular {fifo 0 volatile }  }
	{ gmem int 128 regular {axi_master 1}  }
	{ out1 int 64 regular {fifo 0}  }
	{ out2 int 64 regular {fifo 0}  }
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
	{ p_read2 int 16 regular  }
	{ p_read3 int 16 regular  }
	{ p_read4 int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_st", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "out1","offset": { "type": "dynamic","port_name": "out1","bundle": "ctrl_bus"},"direction": "WRITEONLY"},{"cName": "out2","offset": { "type": "dynamic","port_name": "out2","bundle": "ctrl_bus"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "out1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out2", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_st_dout sc_in sc_lv 64 signal 0 } 
	{ out_st_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ out_st_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ out_st_empty_n sc_in sc_logic 1 signal 0 } 
	{ out_st_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 1 } 
	{ out1_dout sc_in sc_lv 64 signal 2 } 
	{ out1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ out1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ out1_empty_n sc_in sc_logic 1 signal 2 } 
	{ out1_read sc_out sc_logic 1 signal 2 } 
	{ out2_dout sc_in sc_lv 64 signal 3 } 
	{ out2_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ out2_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ out2_empty_n sc_in sc_logic 1 signal 3 } 
	{ out2_read sc_out sc_logic 1 signal 3 } 
	{ p_read sc_in sc_lv 8 signal 4 } 
	{ p_read1 sc_in sc_lv 8 signal 5 } 
	{ p_read2 sc_in sc_lv 16 signal 6 } 
	{ p_read3 sc_in sc_lv 16 signal 7 } 
	{ p_read4 sc_in sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_st_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_st", "role": "dout" }} , 
 	{ "name": "out_st_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "num_data_valid" }} , 
 	{ "name": "out_st_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_st", "role": "fifo_cap" }} , 
 	{ "name": "out_st_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "empty_n" }} , 
 	{ "name": "out_st_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "read" }} , 
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
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "out1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out1", "role": "dout" }} , 
 	{ "name": "out1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out1", "role": "num_data_valid" }} , 
 	{ "name": "out1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out1", "role": "fifo_cap" }} , 
 	{ "name": "out1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "empty_n" }} , 
 	{ "name": "out1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "read" }} , 
 	{ "name": "out2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out2", "role": "dout" }} , 
 	{ "name": "out2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out2", "role": "num_data_valid" }} , 
 	{ "name": "out2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out2", "role": "fifo_cap" }} , 
 	{ "name": "out2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "empty_n" }} , 
 	{ "name": "out2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "25"],
		"CDFG" : "buffer_write",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "2015803",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "out_st", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "wr_ptr1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "wr_ptr2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "2015799",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_332_1_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_332_1_U0"}],
		"Port" : [
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "out_st"}]},
			{"Name" : "ctrl1_reg_ls", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_pn", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_reg_pool_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "gmem"}]},
			{"Name" : "out1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_reg_ifs", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "wr_ptr1"}]},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "wr_ptr2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_332_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0", "Parent" : "1", "Child" : ["3", "4", "5", "6", "13", "20", "21", "22", "23", "24"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_332_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "3555",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "entry_proc_U0"},
			{"ID" : "6", "Name" : "buffer_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "write_U0"}],
		"Port" : [
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "buffer_U0", "Port" : "out_st"}]},
			{"Name" : "ctrl1_reg_ls", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_pn", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_reg_pool_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_U0", "Port" : "gmem"}]},
			{"Name" : "out1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_reg_ifs", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_U0", "Port" : "wr_ptr1"}]},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_U0", "Port" : "wr_ptr2"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer1_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer1_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.entry_proc_U0", "Parent" : "2",
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
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer2_reg_ifs", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_reg_ifs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "22", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer2_reg_ifs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0", "Parent" : "2", "Child" : ["7", "10", "11", "12"],
		"CDFG" : "buffer_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "1588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "out_st", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "buffer1_0", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "buffer1_1", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "ctrl1_reg_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_reg_3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Parent" : "6", "Child" : ["8", "9"],
		"CDFG" : "buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "1572",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "div_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i72", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1027", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58.mul_8ns_8ns_16_1_1_U369", "Parent" : "7"},
	{"ID" : "9", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.udiv_8ns_8ns_8_12_seq_1_U378", "Parent" : "6"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.mul_8ns_8ns_39_1_1_U379", "Parent" : "6"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.mul_8ns_16ns_47_1_1_U380", "Parent" : "6"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0", "Parent" : "2", "Child" : ["14", "16", "18", "19"],
		"CDFG" : "write_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "1966",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "buffer1_0", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "14", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "buffer1_0", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "buffer1_1", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "14", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "buffer1_1", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "gmem", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "14", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "gmem", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "layer2_reg_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "22", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer2_reg_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_270_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "51", "FirstState" : "ap_ST_fsm_state34", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state34"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_283_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "51", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state51"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state13", "ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "write_Pipeline_VITIS_LOOP_273_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "60",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln273_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln270_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln278_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_273_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_273_2_fu_160.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Parent" : "13", "Child" : ["17"],
		"CDFG" : "write_Pipeline_VITIS_LOOP_286_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "60",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln286_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln270_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_286_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_286_5_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.udiv_8ns_8ns_8_12_seq_1_U401", "Parent" : "13"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.udiv_16ns_8ns_16_20_seq_1_U402", "Parent" : "13"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.out1_c_U", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.out2_c_U", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.layer2_reg_ifs_c_U", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.ctrl1_reg_ls_c_channel_U", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.actp_reg_pool_size_c_channel_U", "Parent" : "2"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_8ns_24_4_1_U435", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	buffer_write {
		out_st {Type I LastRead 3 FirstWrite -1}
		gmem {Type O LastRead 38 FirstWrite 4}
		out1 {Type I LastRead 3 FirstWrite -1}
		out2 {Type I LastRead 3 FirstWrite -1}
		p_read {Type I LastRead 3 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 3 FirstWrite -1}
		p_read4 {Type I LastRead 3 FirstWrite -1}
		wr_ptr1 {Type IO LastRead -1 FirstWrite -1}
		wr_ptr2 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc18 {
		mul_i {Type I LastRead 0 FirstWrite -1}
		out_st {Type I LastRead 3 FirstWrite -1}
		ctrl1_reg_ls {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg_pn {Type I LastRead 0 FirstWrite -1}
		actp_reg_pool_size {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 38 FirstWrite 4}
		out1 {Type I LastRead 0 FirstWrite -1}
		out2 {Type I LastRead 0 FirstWrite -1}
		layer2_reg_ifs {Type I LastRead 0 FirstWrite -1}
		wr_ptr1 {Type IO LastRead -1 FirstWrite -1}
		wr_ptr2 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_332_1 {
		out_st {Type I LastRead 3 FirstWrite -1}
		ctrl1_reg_ls {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg_pn {Type I LastRead 0 FirstWrite -1}
		actp_reg_pool_size {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 38 FirstWrite 4}
		out1 {Type I LastRead 1 FirstWrite -1}
		out2 {Type I LastRead 1 FirstWrite -1}
		layer2_reg_ifs {Type I LastRead 1 FirstWrite -1}
		wr_ptr1 {Type IO LastRead -1 FirstWrite -1}
		wr_ptr2 {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		out1 {Type I LastRead 0 FirstWrite -1}
		out1_c {Type O LastRead -1 FirstWrite 0}
		out2 {Type I LastRead 0 FirstWrite -1}
		out2_c {Type O LastRead -1 FirstWrite 0}
		layer2_reg_ifs {Type I LastRead 0 FirstWrite -1}
		layer2_reg_ifs_c {Type O LastRead -1 FirstWrite 0}}
	buffer_r {
		out_st {Type I LastRead 3 FirstWrite -1}
		buffer1_0 {Type O LastRead -1 FirstWrite 4}
		buffer1_1 {Type O LastRead -1 FirstWrite 4}
		ctrl1_reg_3 {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg_0 {Type I LastRead 14 FirstWrite -1}
		actp_reg_3 {Type I LastRead 0 FirstWrite -1}}
	buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3 {
		bound4 {Type I LastRead 0 FirstWrite -1}
		buffer1_0 {Type O LastRead -1 FirstWrite 4}
		buffer1_1 {Type O LastRead -1 FirstWrite 4}
		bound {Type I LastRead 0 FirstWrite -1}
		div_cast {Type I LastRead 0 FirstWrite -1}
		conv_i_i72 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1027 {Type I LastRead 0 FirstWrite -1}
		out_st {Type I LastRead 3 FirstWrite -1}}
	write_r {
		buffer1_0 {Type I LastRead 3 FirstWrite -1}
		buffer1_1 {Type I LastRead 3 FirstWrite -1}
		gmem {Type O LastRead 38 FirstWrite 4}
		out1 {Type I LastRead 11 FirstWrite -1}
		out2 {Type I LastRead 11 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		layer2_reg_2 {Type I LastRead 11 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		wr_ptr1 {Type IO LastRead -1 FirstWrite -1}
		wr_ptr2 {Type IO LastRead -1 FirstWrite -1}}
	write_Pipeline_VITIS_LOOP_273_2 {
		gmem {Type O LastRead -1 FirstWrite 4}
		sext_ln273_1 {Type I LastRead 0 FirstWrite -1}
		add_ln270_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln278_4 {Type I LastRead 0 FirstWrite -1}
		buffer1_0 {Type I LastRead 3 FirstWrite -1}
		buffer1_1 {Type I LastRead 3 FirstWrite -1}}
	write_Pipeline_VITIS_LOOP_286_5 {
		gmem {Type O LastRead -1 FirstWrite 4}
		sext_ln286_1 {Type I LastRead 0 FirstWrite -1}
		add_ln270_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_4 {Type I LastRead 0 FirstWrite -1}
		buffer1_0 {Type I LastRead 3 FirstWrite -1}
		buffer1_1 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "2015803"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "2015803"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_st { ap_fifo {  { out_st_dout fifo_port_we 0 64 }  { out_st_num_data_valid fifo_status_num_data_valid 0 2 }  { out_st_fifo_cap fifo_update 0 2 }  { out_st_empty_n fifo_status 0 1 }  { out_st_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 128 }  { m_axi_gmem_WSTRB STRB 1 16 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 128 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	out1 { ap_fifo {  { out1_dout fifo_port_we 0 64 }  { out1_num_data_valid fifo_status_num_data_valid 0 3 }  { out1_fifo_cap fifo_update 0 3 }  { out1_empty_n fifo_status 0 1 }  { out1_read fifo_data 1 1 } } }
	out2 { ap_fifo {  { out2_dout fifo_port_we 0 64 }  { out2_num_data_valid fifo_status_num_data_valid 0 3 }  { out2_fifo_cap fifo_update 0 3 }  { out2_empty_n fifo_status 0 1 }  { out2_read fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 16 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 16 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 8 } } }
}
