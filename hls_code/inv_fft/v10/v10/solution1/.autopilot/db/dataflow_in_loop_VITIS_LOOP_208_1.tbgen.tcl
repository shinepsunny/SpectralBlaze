set moduleName dataflow_in_loop_VITIS_LOOP_208_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dataflow_in_loop_VITIS_LOOP_208_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 128 regular {axi_master 0}  }
	{ in_r int 64 regular  }
	{ ctrl1_regp int 32 regular {pointer 0}  }
	{ pn_2 int 32 regular  }
	{ actp_regp int 32 regular {pointer 0}  }
	{ out_st int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "out1","offset": { "type": "dynamic","port_name": "out1","bundle": "ctrl_bus"},"direction": "WRITEONLY"},{"cName": "out2","offset": { "type": "dynamic","port_name": "out2","bundle": "ctrl_bus"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ctrl1_regp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pn_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "actp_regp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_st", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_r sc_in sc_lv 64 signal 1 } 
	{ ctrl1_regp sc_in sc_lv 32 signal 2 } 
	{ pn_2 sc_in sc_lv 32 signal 3 } 
	{ actp_regp sc_in sc_lv 32 signal 4 } 
	{ out_st_din sc_out sc_lv 64 signal 5 } 
	{ out_st_full_n sc_in sc_logic 1 signal 5 } 
	{ out_st_write sc_out sc_logic 1 signal 5 } 
	{ actp_regp_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ in_r_ap_vld sc_in sc_logic 1 invld 1 } 
	{ ctrl1_regp_ap_vld sc_in sc_logic 1 invld 2 } 
	{ pn_2_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
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
 	{ "name": "in_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "default" }} , 
 	{ "name": "ctrl1_regp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl1_regp", "role": "default" }} , 
 	{ "name": "pn_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pn_2", "role": "default" }} , 
 	{ "name": "actp_regp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "actp_regp", "role": "default" }} , 
 	{ "name": "out_st_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_st", "role": "din" }} , 
 	{ "name": "out_st_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "full_n" }} , 
 	{ "name": "out_st_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_st", "role": "write" }} , 
 	{ "name": "actp_regp_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "actp_regp", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "in_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_r", "role": "ap_vld" }} , 
 	{ "name": "ctrl1_regp_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ctrl1_regp", "role": "ap_vld" }} , 
 	{ "name": "pn_2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pn_2", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "19", "22", "45", "73", "101", "129", "157", "178", "226", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_208_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "2224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "12", "Name" : "entry_proc20_U0"},
			{"ID" : "13", "Name" : "rd_data_U0"}],
		"OutputProcess" : [
			{"ID" : "226", "Name" : "push_out_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "rd_data_U0", "Port" : "gmem"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "rd_data_U0", "Port" : "ctrl1_regp"}]},
			{"Name" : "pn_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "entry_proc20_U0", "Port" : "actp_regp"}]},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "push_out_U0", "Port" : "out_st"}]},
			{"Name" : "rd_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "rd_data_U0", "Port" : "rd_ptr"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_stage_1_U0", "Port" : "w"}]},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_stage_1_U0", "Port" : "w_10"}]},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "fft_stage_2_U0", "Port" : "w_6"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "fft_stage_2_U0", "Port" : "w_11"}]},
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "fft_stage_3_U0", "Port" : "w_7"}]},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "fft_stage_3_U0", "Port" : "w_12"}]},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "fft_stage_4_U0", "Port" : "w_8"}]},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "fft_stage_4_U0", "Port" : "w_13"}]},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "fft_stage_5_U0", "Port" : "w_9"}]},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "fft_stage_5_U0", "Port" : "w_14"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_data2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_13_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_24_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_35_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_46_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_57_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_6_0_08_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_6_0_19_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_6_1_010_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_6_1_111_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_712_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc20_U0", "Parent" : "0",
		"CDFG" : "entry_proc20",
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
			{"Name" : "actp_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_regp_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["178"], "DependentChan" : "231", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "actp_regp_c9_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rd_data_U0", "Parent" : "0", "Child" : ["14", "16", "17", "18"],
		"CDFG" : "rd_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "78",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131", "Port" : "gmem", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131", "Port" : "in_st", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pn", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_regp_c8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_regp_c8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rd_ptr", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rd_data_U0.grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln157_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln157_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_1_VITIS_LOOP_160_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rd_data_U0.grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rd_data_U0.mul_31ns_8ns_32_2_1_U16", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rd_data_U0.mul_8ns_31ns_38_2_1_U17", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rd_data_U0.mul_31ns_9s_32_2_1_U18", "Parent" : "13"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.collect_input_U0", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "collect_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "13",
		"StartFifo" : "start_for_collect_input_U0_U",
		"Port" : [
			{"Name" : "in_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78", "Port" : "in_st", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ctrl1_regp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_regp_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.collect_input_U0.grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78", "Parent" : "19", "Child" : ["21"],
		"CDFG" : "collect_input_Pipeline_VITIS_LOOP_91_2",
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
			{"Name" : "zext_ln173_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.collect_input_U0.grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0", "Parent" : "0", "Child" : ["23", "42", "44"],
		"CDFG" : "fft_stage",
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78", "Port" : "I", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "23", "SubInstance" : "grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68", "Port" : "I", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78", "Port" : "X", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "23", "SubInstance" : "grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68", "Port" : "X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68", "Parent" : "22", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "fft_stage_Pipeline_SKIP_X_SKIP_Y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "152",
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
			{"Name" : "X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "SKIP_X_SKIP_Y", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U35", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U36", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U37", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U38", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U39", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U40", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U41", "Parent" : "23"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U42", "Parent" : "23"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U43", "Parent" : "23"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U44", "Parent" : "23"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U45", "Parent" : "23"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U46", "Parent" : "23"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U47", "Parent" : "23"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U48", "Parent" : "23"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hmul_16ns_16ns_16_4_max_dsp_1_U49", "Parent" : "23"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hmul_16ns_16ns_16_4_max_dsp_1_U50", "Parent" : "23"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hmul_16ns_16ns_16_4_max_dsp_1_U51", "Parent" : "23"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78", "Parent" : "22", "Child" : ["43"],
		"CDFG" : "fft_stage_Pipeline_VITIS_LOOP_66_2",
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.mul_7ns_7ns_14_1_1_U63", "Parent" : "22"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0", "Parent" : "0", "Child" : ["46", "70", "72"],
		"CDFG" : "fft_stage_1",
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["73"], "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "X", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Parent" : "45", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "fft_stage_1_Pipeline_SKIP_X_SKIP_Y",
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
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X_SKIP_Y", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.w_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.w_10_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U68", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U69", "Parent" : "46"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U70", "Parent" : "46"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U71", "Parent" : "46"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U72", "Parent" : "46"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U73", "Parent" : "46"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U74", "Parent" : "46"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U75", "Parent" : "46"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U76", "Parent" : "46"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U77", "Parent" : "46"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U78", "Parent" : "46"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U79", "Parent" : "46"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U80", "Parent" : "46"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U81", "Parent" : "46"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U82", "Parent" : "46"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U83", "Parent" : "46"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U84", "Parent" : "46"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U85", "Parent" : "46"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U86", "Parent" : "46"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U87", "Parent" : "46"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88", "Parent" : "45", "Child" : ["71"],
		"CDFG" : "fft_stage_1_Pipeline_VITIS_LOOP_66_2",
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
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.mul_7ns_7ns_14_1_1_U98", "Parent" : "45"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0", "Parent" : "0", "Child" : ["74", "76", "100"],
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "74", "SubInstance" : "grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "I", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["101"], "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "74", "SubInstance" : "grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_11", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Parent" : "73", "Child" : ["75"],
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
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Parent" : "73", "Child" : ["77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99"],
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
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.w_6_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.w_11_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U106", "Parent" : "76"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U107", "Parent" : "76"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U108", "Parent" : "76"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U109", "Parent" : "76"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U110", "Parent" : "76"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U111", "Parent" : "76"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U112", "Parent" : "76"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U113", "Parent" : "76"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U114", "Parent" : "76"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U115", "Parent" : "76"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U116", "Parent" : "76"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U117", "Parent" : "76"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U118", "Parent" : "76"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U119", "Parent" : "76"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U120", "Parent" : "76"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U121", "Parent" : "76"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U122", "Parent" : "76"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U123", "Parent" : "76"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U124", "Parent" : "76"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U125", "Parent" : "76"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.mul_7ns_7ns_14_1_1_U132", "Parent" : "73"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0", "Parent" : "0", "Child" : ["102", "126", "128"],
		"CDFG" : "fft_stage_3",
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "102", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["129"], "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "102", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "X", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Parent" : "101", "Child" : ["103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
		"CDFG" : "fft_stage_3_Pipeline_SKIP_X_SKIP_Y",
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
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X_SKIP_Y", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.w_7_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.w_12_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U136", "Parent" : "102"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U137", "Parent" : "102"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U138", "Parent" : "102"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U139", "Parent" : "102"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U140", "Parent" : "102"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U141", "Parent" : "102"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U142", "Parent" : "102"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U143", "Parent" : "102"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U144", "Parent" : "102"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U145", "Parent" : "102"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U146", "Parent" : "102"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U147", "Parent" : "102"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U148", "Parent" : "102"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U149", "Parent" : "102"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U150", "Parent" : "102"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U151", "Parent" : "102"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U152", "Parent" : "102"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U153", "Parent" : "102"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U154", "Parent" : "102"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U155", "Parent" : "102"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88", "Parent" : "101", "Child" : ["127"],
		"CDFG" : "fft_stage_3_Pipeline_VITIS_LOOP_66_2",
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
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.mul_7ns_7ns_14_1_1_U166", "Parent" : "101"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0", "Parent" : "0", "Child" : ["130", "132", "156"],
		"CDFG" : "fft_stage_4",
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["101"], "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "I", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "132", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["157"], "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "132", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["101"], "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_13", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74", "Parent" : "129", "Child" : ["131"],
		"CDFG" : "fft_stage_4_Pipeline_VITIS_LOOP_66_2",
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
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Parent" : "129", "Child" : ["133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155"],
		"CDFG" : "fft_stage_4_Pipeline_SKIP_X_SKIP_Y",
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
			{"Name" : "trunc_ln14", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X_SKIP_Y", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.w_8_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.w_13_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U174", "Parent" : "132"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U175", "Parent" : "132"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U176", "Parent" : "132"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U177", "Parent" : "132"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U178", "Parent" : "132"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U179", "Parent" : "132"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U180", "Parent" : "132"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U181", "Parent" : "132"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U182", "Parent" : "132"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U183", "Parent" : "132"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U184", "Parent" : "132"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U185", "Parent" : "132"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U186", "Parent" : "132"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U187", "Parent" : "132"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U188", "Parent" : "132"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U189", "Parent" : "132"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U190", "Parent" : "132"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U191", "Parent" : "132"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U192", "Parent" : "132"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U193", "Parent" : "132"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.mul_7ns_7ns_14_1_1_U200", "Parent" : "129"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0", "Parent" : "0", "Child" : ["158", "160", "176", "177"],
		"CDFG" : "fft_stage_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "285",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["129"], "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "160", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "I", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_0_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["178"], "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "160", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_0_0", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_0_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["178"], "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "160", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_0_1", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["178"], "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "160", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_1_0", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["178"], "DependentChan" : "10",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "160", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_1_1", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["129"], "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "w_9", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "w_14", "Inst_start_state" : "4", "Inst_end_state" : "3"}]}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Parent" : "157", "Child" : ["159"],
		"CDFG" : "fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1_VITIS_LOOP_66_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Parent" : "157", "Child" : ["161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175"],
		"CDFG" : "fft_stage_5_Pipeline_SKIP_X_SKIP_Y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln10", "Type" : "None", "Direction" : "I"},
			{"Name" : "I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X_SKIP_Y", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.w_9_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.w_14_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U211", "Parent" : "160"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U212", "Parent" : "160"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U213", "Parent" : "160"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U214", "Parent" : "160"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U215", "Parent" : "160"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U216", "Parent" : "160"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U217", "Parent" : "160"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U218", "Parent" : "160"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U219", "Parent" : "160"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hmul_16ns_16ns_16_4_max_dsp_1_U220", "Parent" : "160"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hmul_16ns_16ns_16_4_max_dsp_1_U221", "Parent" : "160"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hmul_16ns_16ns_16_4_max_dsp_1_U222", "Parent" : "160"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.mul_8ns_7ns_70_1_1_U232", "Parent" : "157"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.mul_7ns_7ns_14_1_1_U233", "Parent" : "157"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_U0", "Parent" : "0", "Child" : ["179", "223", "224", "225"],
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
			{"Name" : "I_0_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["157"], "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_0_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_0_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["157"], "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_0_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["157"], "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_1_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["157"], "DependentChan" : "10",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_1_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "O", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["226"], "DependentChan" : "11",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "O", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["157"], "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "actp_regp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "231", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "actp_regp_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Parent" : "178", "Child" : ["180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222"],
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
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hdiv_16ns_16ns_16_7_no_dsp_1_U241", "Parent" : "179"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hdiv_16ns_16ns_16_7_no_dsp_1_U242", "Parent" : "179"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U243", "Parent" : "179"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U244", "Parent" : "179"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U245", "Parent" : "179"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U246", "Parent" : "179"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U247", "Parent" : "179"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U248", "Parent" : "179"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U249", "Parent" : "179"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U250", "Parent" : "179"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U251", "Parent" : "179"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U252", "Parent" : "179"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U253", "Parent" : "179"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U254", "Parent" : "179"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U255", "Parent" : "179"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U256", "Parent" : "179"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U257", "Parent" : "179"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U258", "Parent" : "179"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U259", "Parent" : "179"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U260", "Parent" : "179"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U261", "Parent" : "179"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U262", "Parent" : "179"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U263", "Parent" : "179"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U264", "Parent" : "179"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U265", "Parent" : "179"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U266", "Parent" : "179"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U267", "Parent" : "179"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U268", "Parent" : "179"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U269", "Parent" : "179"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U270", "Parent" : "179"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U271", "Parent" : "179"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U272", "Parent" : "179"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U273", "Parent" : "179"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U274", "Parent" : "179"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U275", "Parent" : "179"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U276", "Parent" : "179"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U277", "Parent" : "179"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U278", "Parent" : "179"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U279", "Parent" : "179"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U280", "Parent" : "179"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U281", "Parent" : "179"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U282", "Parent" : "179"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_U0.uitofp_32ns_32_7_no_dsp_1_U300", "Parent" : "178"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_U0.sptohp_32ns_16_2_no_dsp_1_U301", "Parent" : "178"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_U0.hmul_16ns_16ns_16_4_max_dsp_1_U302", "Parent" : "178"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.push_out_U0", "Parent" : "0", "Child" : ["227", "229", "230"],
		"CDFG" : "push_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "O", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["178"], "DependentChan" : "11",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Port" : "O", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Port" : "out_st", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["178"], "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["178"], "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.push_out_U0.grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Parent" : "226", "Child" : ["228"],
		"CDFG" : "push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln136", "Type" : "None", "Direction" : "I"},
			{"Name" : "O", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_st_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_1_VITIS_LOOP_139_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.push_out_U0.grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.push_out_U0.udiv_8ns_8ns_8_12_seq_1_U316", "Parent" : "226"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.push_out_U0.mul_8ns_8ns_71_1_1_U317", "Parent" : "226"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.actp_regp_c9_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_st1_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c8_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c7_channel8_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c6_channel7_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c5_channel6_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c4_channel5_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c3_channel4_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c2_channel3_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c1_channel2_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_regp_c_channel_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.actp_regp_c_channel_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_collect_input_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_208_1 {
		gmem {Type I LastRead 3 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		ctrl1_regp {Type I LastRead 0 FirstWrite -1}
		pn_2 {Type I LastRead 0 FirstWrite -1}
		actp_regp {Type I LastRead 0 FirstWrite -1}
		out_st {Type O LastRead -1 FirstWrite 3}
		rd_ptr {Type IO LastRead -1 FirstWrite -1}
		w {Type I LastRead -1 FirstWrite -1}
		w_10 {Type I LastRead -1 FirstWrite -1}
		w_6 {Type I LastRead -1 FirstWrite -1}
		w_11 {Type I LastRead -1 FirstWrite -1}
		w_7 {Type I LastRead -1 FirstWrite -1}
		w_12 {Type I LastRead -1 FirstWrite -1}
		w_8 {Type I LastRead -1 FirstWrite -1}
		w_13 {Type I LastRead -1 FirstWrite -1}
		w_9 {Type I LastRead -1 FirstWrite -1}
		w_14 {Type I LastRead -1 FirstWrite -1}}
	entry_proc20 {
		actp_regp {Type I LastRead 0 FirstWrite -1}
		actp_regp_c9 {Type O LastRead -1 FirstWrite 0}}
	rd_data {
		gmem {Type I LastRead 3 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		in_st {Type O LastRead -1 FirstWrite 3}
		ctrl1_regp {Type I LastRead 0 FirstWrite -1}
		pn {Type I LastRead 0 FirstWrite -1}
		ctrl1_regp_c8 {Type O LastRead -1 FirstWrite 0}
		rd_ptr {Type IO LastRead -1 FirstWrite -1}}
	rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2 {
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln157_1 {Type I LastRead 0 FirstWrite -1}
		mul_ln157_2 {Type I LastRead 0 FirstWrite -1}
		in_st {Type O LastRead -1 FirstWrite 3}}
	collect_input {
		in_st {Type I LastRead 1 FirstWrite -1}
		I {Type O LastRead -1 FirstWrite 1}
		ctrl1_regp {Type I LastRead 0 FirstWrite -1}}
	collect_input_Pipeline_VITIS_LOOP_91_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln173_3 {Type I LastRead 0 FirstWrite -1}
		I {Type O LastRead -1 FirstWrite 1}
		in_st {Type I LastRead 1 FirstWrite -1}}
	fft_stage {
		I {Type I LastRead 10 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	fft_stage_Pipeline_SKIP_X_SKIP_Y {
		bound {Type I LastRead 0 FirstWrite -1}
		trunc_ln17 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 10 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 23}}
	fft_stage_Pipeline_VITIS_LOOP_66_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln70 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 2 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}}
	fft_stage_1 {
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w {Type I LastRead -1 FirstWrite -1}
		w_10 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_Pipeline_SKIP_X_SKIP_Y {
		bound {Type I LastRead 0 FirstWrite -1}
		trunc_ln17 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 25}
		w {Type I LastRead -1 FirstWrite -1}
		w_10 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_Pipeline_VITIS_LOOP_66_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln70 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 2 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}}
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
		w_11 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3 {
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_7 {Type I LastRead -1 FirstWrite -1}
		w_12 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_Pipeline_SKIP_X_SKIP_Y {
		bound {Type I LastRead 0 FirstWrite -1}
		trunc_ln17 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 25}
		w_7 {Type I LastRead -1 FirstWrite -1}
		w_12 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_Pipeline_VITIS_LOOP_66_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln70 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 2 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}}
	fft_stage_4 {
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_8 {Type I LastRead -1 FirstWrite -1}
		w_13 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4_Pipeline_VITIS_LOOP_66_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln70 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 2 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 1}}
	fft_stage_4_Pipeline_SKIP_X_SKIP_Y {
		bound {Type I LastRead 0 FirstWrite -1}
		trunc_ln14 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 12 FirstWrite -1}
		X {Type O LastRead -1 FirstWrite 25}
		w_8 {Type I LastRead -1 FirstWrite -1}
		w_13 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5 {
		I {Type I LastRead 10 FirstWrite -1}
		X_0_0 {Type O LastRead -1 FirstWrite 3}
		X_0_1 {Type O LastRead -1 FirstWrite 3}
		X_1_0 {Type O LastRead -1 FirstWrite 3}
		X_1_1 {Type O LastRead -1 FirstWrite 3}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_9 {Type I LastRead -1 FirstWrite -1}
		w_14 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2 {
		mul_ln63 {Type I LastRead 0 FirstWrite -1}
		zext_ln63 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 4 FirstWrite -1}
		X_0_0 {Type O LastRead -1 FirstWrite 3}
		X_0_1 {Type O LastRead -1 FirstWrite 3}
		X_1_0 {Type O LastRead -1 FirstWrite 3}
		X_1_1 {Type O LastRead -1 FirstWrite 3}}
	fft_stage_5_Pipeline_SKIP_X_SKIP_Y {
		bound {Type I LastRead 0 FirstWrite -1}
		trunc_ln10 {Type I LastRead 0 FirstWrite -1}
		I {Type I LastRead 10 FirstWrite -1}
		X_0_0 {Type O LastRead -1 FirstWrite 27}
		X_0_1 {Type O LastRead -1 FirstWrite 27}
		X_1_0 {Type O LastRead -1 FirstWrite 27}
		X_1_1 {Type O LastRead -1 FirstWrite 27}
		w_9 {Type I LastRead -1 FirstWrite -1}
		w_14 {Type I LastRead -1 FirstWrite -1}}
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
		mul {Type I LastRead 0 FirstWrite -1}}
	push_out {
		O {Type I LastRead 3 FirstWrite -1}
		out_st {Type O LastRead -1 FirstWrite 3}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		zext_ln136 {Type I LastRead 0 FirstWrite -1}
		O {Type I LastRead 3 FirstWrite -1}
		out_st {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "2224"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "533"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 128 }  { m_axi_gmem_WSTRB STRB 1 16 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 128 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	in_r { ap_none {  { in_r in_data 0 64 }  { in_r_ap_vld in_vld 0 1 } } }
	ctrl1_regp { ap_none {  { ctrl1_regp in_data 0 32 }  { ctrl1_regp_ap_vld in_vld 0 1 } } }
	pn_2 { ap_none {  { pn_2 in_data 0 32 }  { pn_2_ap_vld in_vld 0 1 } } }
	actp_regp { ap_none {  { actp_regp in_data 0 32 }  { actp_regp_ap_vld in_vld 0 1 } } }
	out_st { ap_fifo {  { out_st_din fifo_port_we 1 64 }  { out_st_full_n fifo_status 0 1 }  { out_st_write fifo_data 1 1 } } }
}
