set moduleName IFFT_AP
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {IFFT_AP}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 128 regular {axi_master 2}  }
	{ in_r int 64 regular {axi_slave 0}  }
	{ out1 int 64 regular {axi_slave 0}  }
	{ out2 int 64 regular {axi_slave 0}  }
	{ ctrl1_regp int 32 regular {axi_slave 0}  }
	{ ctrl2_regp int 32 regular {axi_slave 0}  }
	{ layer1_regp int 32 regular {axi_slave 0}  }
	{ layer2_regp int 32 regular {axi_slave 0}  }
	{ actp_regp int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "out1","offset": { "type": "dynamic","port_name": "out1","bundle": "ctrl_bus"},"direction": "WRITEONLY"},{"cName": "out2","offset": { "type": "dynamic","port_name": "out2","bundle": "ctrl_bus"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "out1", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out2", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "ctrl1_regp", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "ctrl2_regp", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "layer1_regp", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":75}} , 
 	{ "Name" : "layer2_regp", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":83}} , 
 	{ "Name" : "actp_regp", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":84}, "offset_end" : {"in":91}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ s_axi_ctrl_bus_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_bus_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_bus_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_bus_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_bus_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_bus_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_bus_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_bus_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWADDR" },"address":[{"name":"IFFT_AP","role":"start","value":"0","valid_bit":"0"},{"name":"IFFT_AP","role":"continue","value":"0","valid_bit":"4"},{"name":"IFFT_AP","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_r","role":"data","value":"16"},{"name":"out1","role":"data","value":"28"},{"name":"out2","role":"data","value":"40"},{"name":"ctrl1_regp","role":"data","value":"52"},{"name":"ctrl2_regp","role":"data","value":"60"},{"name":"layer1_regp","role":"data","value":"68"},{"name":"layer2_regp","role":"data","value":"76"},{"name":"actp_regp","role":"data","value":"84"}] },
	{ "name": "s_axi_ctrl_bus_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_bus_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_bus_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_bus_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_bus_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_bus_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_bus_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARADDR" },"address":[{"name":"IFFT_AP","role":"start","value":"0","valid_bit":"0"},{"name":"IFFT_AP","role":"done","value":"0","valid_bit":"1"},{"name":"IFFT_AP","role":"idle","value":"0","valid_bit":"2"},{"name":"IFFT_AP","role":"ready","value":"0","valid_bit":"3"},{"name":"IFFT_AP","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_bus_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_bus_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_bus_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_bus_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_bus_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_bus_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_bus_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_bus_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_bus_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "253", "279", "280", "281", "282", "283", "284", "285", "286"],
		"CDFG" : "IFFT_AP",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "8734370",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "entry_proc21_U0"},
			{"ID" : "4", "Name" : "Block_entry6_proc_U0"},
			{"ID" : "5", "Name" : "vr_ifft_U0"}],
		"OutputProcess" : [
			{"ID" : "253", "Name" : "buffer_write_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "buffer_write_U0", "Port" : "gmem"},
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "gmem"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "ctrl1_regp"},
					{"ID" : "4", "SubInstance" : "Block_entry6_proc_U0", "Port" : "ctrl1_regp"}]},
			{"Name" : "ctrl2_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "ctrl2_regp"},
					{"ID" : "4", "SubInstance" : "Block_entry6_proc_U0", "Port" : "ctrl2_regp"}]},
			{"Name" : "layer1_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "layer1_regp"},
					{"ID" : "4", "SubInstance" : "Block_entry6_proc_U0", "Port" : "layer1_regp"}]},
			{"Name" : "layer2_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Block_entry6_proc_U0", "Port" : "layer2_regp"}]},
			{"Name" : "actp_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "actp_regp"},
					{"ID" : "4", "SubInstance" : "Block_entry6_proc_U0", "Port" : "actp_regp"}]},
			{"Name" : "rd_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "rd_ptr"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w"}]},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_10"}]},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_6"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_11"}]},
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_7"}]},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_12"}]},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_8"}]},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_13"}]},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_9"}]},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "vr_ifft_U0", "Port" : "w_14"}]},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "buffer_write_U0", "Port" : "wr_ptr1"}]},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "buffer_write_U0", "Port" : "wr_ptr2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc21_U0", "Parent" : "0",
		"CDFG" : "entry_proc21",
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
			{"Name" : "out1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["253"], "DependentChan" : "279", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["253"], "DependentChan" : "280", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry6_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry6_proc",
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
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer1_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_regp", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0", "Parent" : "0", "Child" : ["6", "251", "252"],
		"CDFG" : "vr_ifft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "8734370",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["253"], "DependentChan" : "286", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "out_st", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "ctrl1_regp", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "ctrl2_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer1_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "actp_regp", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rd_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "rd_ptr", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_10", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_11", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_12", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_8", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_13", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_86", "Port" : "w_14", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "8734366",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "7", "Name" : "dataflow_in_loop_VITIS_LOOP_208_1_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "dataflow_in_loop_VITIS_LOOP_208_1_U0"}],
		"Port" : [
			{"Name" : "mul_ln208", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "gmem"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "ctrl1_regp"}]},
			{"Name" : "actp_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "actp_regp"}]},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "out_st"}]},
			{"Name" : "rd_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "rd_ptr"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w"}]},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_10"}]},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_6"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_11"}]},
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_7"}]},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_12"}]},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_8"}]},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_13"}]},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_9"}]},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "Port" : "w_14"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_208_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_208_1_U0", "has_continue" : "1"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0", "Parent" : "6", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "26", "29", "52", "80", "108", "136", "164", "185", "233", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250"],
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
			{"ID" : "19", "Name" : "entry_proc20_U0"},
			{"ID" : "20", "Name" : "rd_data_U0"}],
		"OutputProcess" : [
			{"ID" : "233", "Name" : "push_out_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "rd_data_U0", "Port" : "gmem"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "rd_data_U0", "Port" : "ctrl1_regp"}]},
			{"Name" : "pn_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_regp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "entry_proc20_U0", "Port" : "actp_regp"}]},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "push_out_U0", "Port" : "out_st"}]},
			{"Name" : "rd_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "rd_data_U0", "Port" : "rd_ptr"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "fft_stage_1_U0", "Port" : "w"}]},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "fft_stage_1_U0", "Port" : "w_10"}]},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "fft_stage_2_U0", "Port" : "w_6"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "fft_stage_2_U0", "Port" : "w_11"}]},
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "fft_stage_3_U0", "Port" : "w_7"}]},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "fft_stage_3_U0", "Port" : "w_12"}]},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "fft_stage_4_U0", "Port" : "w_8"}]},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "fft_stage_4_U0", "Port" : "w_13"}]},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "fft_stage_5_U0", "Port" : "w_9"}]},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "fft_stage_5_U0", "Port" : "w_14"}]}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.input_data2_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_13_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_24_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_35_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_46_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_57_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_6_0_08_U", "Parent" : "7"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_6_0_19_U", "Parent" : "7"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_6_1_010_U", "Parent" : "7"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_6_1_111_U", "Parent" : "7"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.out_data_712_U", "Parent" : "7"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.entry_proc20_U0", "Parent" : "7",
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
			{"Name" : "actp_regp_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["185"], "DependentChan" : "238", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "actp_regp_c9_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.rd_data_U0", "Parent" : "7", "Child" : ["21", "23", "24", "25"],
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
					{"ID" : "21", "SubInstance" : "grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131", "Port" : "gmem", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131", "Port" : "in_st", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "ctrl1_regp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pn", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_regp_c8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_regp_c8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rd_ptr", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.rd_data_U0.grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131", "Parent" : "20", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.rd_data_U0.grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.rd_data_U0.mul_31ns_8ns_32_2_1_U16", "Parent" : "20"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.rd_data_U0.mul_8ns_31ns_38_2_1_U17", "Parent" : "20"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.rd_data_U0.mul_31ns_9s_32_2_1_U18", "Parent" : "20"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.collect_input_U0", "Parent" : "7", "Child" : ["27"],
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
		"StartSource" : "20",
		"StartFifo" : "start_for_collect_input_U0_U",
		"Port" : [
			{"Name" : "in_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78", "Port" : "in_st", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ctrl1_regp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_regp_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.collect_input_U0.grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78", "Parent" : "26", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.collect_input_U0.grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0", "Parent" : "7", "Child" : ["30", "49", "51"],
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["26"], "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78", "Port" : "I", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "30", "SubInstance" : "grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68", "Port" : "I", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78", "Port" : "X", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "30", "SubInstance" : "grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68", "Port" : "X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["26"], "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68", "Parent" : "29", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
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
	{"ID" : "31", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U35", "Parent" : "30"},
	{"ID" : "32", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U36", "Parent" : "30"},
	{"ID" : "33", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U37", "Parent" : "30"},
	{"ID" : "34", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U38", "Parent" : "30"},
	{"ID" : "35", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U39", "Parent" : "30"},
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U40", "Parent" : "30"},
	{"ID" : "37", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hadd_16ns_16ns_16_5_full_dsp_1_U41", "Parent" : "30"},
	{"ID" : "38", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U42", "Parent" : "30"},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U43", "Parent" : "30"},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U44", "Parent" : "30"},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U45", "Parent" : "30"},
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U46", "Parent" : "30"},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U47", "Parent" : "30"},
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hsub_16ns_16ns_16_5_full_dsp_1_U48", "Parent" : "30"},
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hmul_16ns_16ns_16_4_max_dsp_1_U49", "Parent" : "30"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hmul_16ns_16ns_16_4_max_dsp_1_U50", "Parent" : "30"},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.hmul_16ns_16ns_16_4_max_dsp_1_U51", "Parent" : "30"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_SKIP_X_SKIP_Y_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78", "Parent" : "29", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.grp_fft_stage_Pipeline_VITIS_LOOP_66_2_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_U0.mul_7ns_7ns_14_1_1_U63", "Parent" : "29"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0", "Parent" : "7", "Child" : ["53", "77", "79"],
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "53", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "10",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "53", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "X", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74", "Parent" : "52", "Child" : ["54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76"],
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
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.w_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.w_10_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U68", "Parent" : "53"},
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U69", "Parent" : "53"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U70", "Parent" : "53"},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U71", "Parent" : "53"},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U72", "Parent" : "53"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U73", "Parent" : "53"},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U74", "Parent" : "53"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U75", "Parent" : "53"},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U76", "Parent" : "53"},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U77", "Parent" : "53"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U78", "Parent" : "53"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U79", "Parent" : "53"},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U80", "Parent" : "53"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U81", "Parent" : "53"},
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U82", "Parent" : "53"},
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U83", "Parent" : "53"},
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U84", "Parent" : "53"},
	{"ID" : "73", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U85", "Parent" : "53"},
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U86", "Parent" : "53"},
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U87", "Parent" : "53"},
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88", "Parent" : "52", "Child" : ["78"],
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
	{"ID" : "78", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.grp_fft_stage_1_Pipeline_VITIS_LOOP_66_2_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_1_U0.mul_7ns_7ns_14_1_1_U98", "Parent" : "52"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0", "Parent" : "7", "Child" : ["81", "83", "107"],
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "10",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "81", "SubInstance" : "grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "I", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["108"], "DependentChan" : "11",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "81", "SubInstance" : "grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "243", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "w_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_11", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74", "Parent" : "80", "Child" : ["82"],
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
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84", "Parent" : "80", "Child" : ["84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106"],
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
	{"ID" : "84", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.w_6_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.w_11_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U106", "Parent" : "83"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U107", "Parent" : "83"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U108", "Parent" : "83"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U109", "Parent" : "83"},
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U110", "Parent" : "83"},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U111", "Parent" : "83"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U112", "Parent" : "83"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U113", "Parent" : "83"},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U114", "Parent" : "83"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U115", "Parent" : "83"},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U116", "Parent" : "83"},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U117", "Parent" : "83"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U118", "Parent" : "83"},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U119", "Parent" : "83"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U120", "Parent" : "83"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U121", "Parent" : "83"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U122", "Parent" : "83"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U123", "Parent" : "83"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U124", "Parent" : "83"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U125", "Parent" : "83"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_2_U0.mul_7ns_7ns_14_1_1_U132", "Parent" : "80"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0", "Parent" : "7", "Child" : ["109", "133", "135"],
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "11",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "109", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["136"], "DependentChan" : "12",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "109", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "X", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Port" : "w_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74", "Parent" : "108", "Child" : ["110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132"],
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
	{"ID" : "110", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.w_7_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.w_12_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U136", "Parent" : "109"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U137", "Parent" : "109"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U138", "Parent" : "109"},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U139", "Parent" : "109"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U140", "Parent" : "109"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U141", "Parent" : "109"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hadd_16ns_16ns_16_5_full_dsp_1_U142", "Parent" : "109"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U143", "Parent" : "109"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U144", "Parent" : "109"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U145", "Parent" : "109"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U146", "Parent" : "109"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U147", "Parent" : "109"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U148", "Parent" : "109"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hsub_16ns_16ns_16_5_full_dsp_1_U149", "Parent" : "109"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U150", "Parent" : "109"},
	{"ID" : "127", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U151", "Parent" : "109"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U152", "Parent" : "109"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U153", "Parent" : "109"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U154", "Parent" : "109"},
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.hmul_16ns_16ns_16_4_max_dsp_1_U155", "Parent" : "109"},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88", "Parent" : "108", "Child" : ["134"],
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
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.grp_fft_stage_3_Pipeline_VITIS_LOOP_66_2_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_3_U0.mul_7ns_7ns_14_1_1_U166", "Parent" : "108"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0", "Parent" : "7", "Child" : ["137", "139", "163"],
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["108"], "DependentChan" : "12",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "I", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "139", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "I", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "X", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["164"], "DependentChan" : "13",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74", "Port" : "X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "139", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "X", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["108"], "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "w_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Port" : "w_13", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74", "Parent" : "136", "Child" : ["138"],
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
	{"ID" : "138", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_VITIS_LOOP_66_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84", "Parent" : "136", "Child" : ["140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162"],
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
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.w_8_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.w_13_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U174", "Parent" : "139"},
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U175", "Parent" : "139"},
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U176", "Parent" : "139"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U177", "Parent" : "139"},
	{"ID" : "146", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U178", "Parent" : "139"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U179", "Parent" : "139"},
	{"ID" : "148", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hadd_16ns_16ns_16_5_full_dsp_1_U180", "Parent" : "139"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U181", "Parent" : "139"},
	{"ID" : "150", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U182", "Parent" : "139"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U183", "Parent" : "139"},
	{"ID" : "152", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U184", "Parent" : "139"},
	{"ID" : "153", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U185", "Parent" : "139"},
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U186", "Parent" : "139"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hsub_16ns_16ns_16_5_full_dsp_1_U187", "Parent" : "139"},
	{"ID" : "156", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U188", "Parent" : "139"},
	{"ID" : "157", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U189", "Parent" : "139"},
	{"ID" : "158", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U190", "Parent" : "139"},
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U191", "Parent" : "139"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U192", "Parent" : "139"},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.hmul_16ns_16ns_16_4_max_dsp_1_U193", "Parent" : "139"},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.grp_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_4_U0.mul_7ns_7ns_14_1_1_U200", "Parent" : "136"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0", "Parent" : "7", "Child" : ["165", "167", "183", "184"],
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
			{"Name" : "I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["136"], "DependentChan" : "13",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "I", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "167", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "I", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_0_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["185"], "DependentChan" : "14",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "167", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_0_0", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_0_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["185"], "DependentChan" : "15",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "167", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_0_1", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["185"], "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "167", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_1_0", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "X_1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["185"], "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Port" : "X_1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "167", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "X_1_1", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["136"], "DependentChan" : "246", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "w_9", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "w_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Port" : "w_14", "Inst_start_state" : "4", "Inst_end_state" : "3"}]}]},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56", "Parent" : "164", "Child" : ["166"],
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
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72", "Parent" : "164", "Child" : ["168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182"],
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
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.w_9_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.w_14_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U211", "Parent" : "167"},
	{"ID" : "171", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U212", "Parent" : "167"},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U213", "Parent" : "167"},
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U214", "Parent" : "167"},
	{"ID" : "174", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hadd_16ns_16ns_16_5_full_dsp_1_U215", "Parent" : "167"},
	{"ID" : "175", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U216", "Parent" : "167"},
	{"ID" : "176", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U217", "Parent" : "167"},
	{"ID" : "177", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U218", "Parent" : "167"},
	{"ID" : "178", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hsub_16ns_16ns_16_5_full_dsp_1_U219", "Parent" : "167"},
	{"ID" : "179", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hmul_16ns_16ns_16_4_max_dsp_1_U220", "Parent" : "167"},
	{"ID" : "180", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hmul_16ns_16ns_16_4_max_dsp_1_U221", "Parent" : "167"},
	{"ID" : "181", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.hmul_16ns_16ns_16_4_max_dsp_1_U222", "Parent" : "167"},
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.grp_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.mul_8ns_7ns_70_1_1_U232", "Parent" : "164"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.fft_stage_5_U0.mul_7ns_7ns_14_1_1_U233", "Parent" : "164"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0", "Parent" : "7", "Child" : ["186", "230", "231", "232"],
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
			{"Name" : "I_0_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["164"], "DependentChan" : "14",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_0_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_0_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["164"], "DependentChan" : "15",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_0_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["164"], "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_1_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "I_1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["164"], "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "I_1_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "O", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["233"], "DependentChan" : "18",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Port" : "O", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["164"], "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "actp_regp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "238", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "actp_regp_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110", "Parent" : "185", "Child" : ["187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229"],
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
	{"ID" : "187", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hdiv_16ns_16ns_16_7_no_dsp_1_U241", "Parent" : "186"},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hdiv_16ns_16ns_16_7_no_dsp_1_U242", "Parent" : "186"},
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U243", "Parent" : "186"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U244", "Parent" : "186"},
	{"ID" : "191", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U245", "Parent" : "186"},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U246", "Parent" : "186"},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U247", "Parent" : "186"},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U248", "Parent" : "186"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U249", "Parent" : "186"},
	{"ID" : "196", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U250", "Parent" : "186"},
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U251", "Parent" : "186"},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U252", "Parent" : "186"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U253", "Parent" : "186"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U254", "Parent" : "186"},
	{"ID" : "201", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U255", "Parent" : "186"},
	{"ID" : "202", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U256", "Parent" : "186"},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U257", "Parent" : "186"},
	{"ID" : "204", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.hcmp_16ns_16ns_1_2_no_dsp_1_U258", "Parent" : "186"},
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U259", "Parent" : "186"},
	{"ID" : "206", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U260", "Parent" : "186"},
	{"ID" : "207", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U261", "Parent" : "186"},
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U262", "Parent" : "186"},
	{"ID" : "209", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U263", "Parent" : "186"},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U264", "Parent" : "186"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U265", "Parent" : "186"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U266", "Parent" : "186"},
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U267", "Parent" : "186"},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U268", "Parent" : "186"},
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U269", "Parent" : "186"},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U270", "Parent" : "186"},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U271", "Parent" : "186"},
	{"ID" : "218", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U272", "Parent" : "186"},
	{"ID" : "219", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U273", "Parent" : "186"},
	{"ID" : "220", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U274", "Parent" : "186"},
	{"ID" : "221", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U275", "Parent" : "186"},
	{"ID" : "222", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U276", "Parent" : "186"},
	{"ID" : "223", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U277", "Parent" : "186"},
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U278", "Parent" : "186"},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U279", "Parent" : "186"},
	{"ID" : "226", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U280", "Parent" : "186"},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U281", "Parent" : "186"},
	{"ID" : "228", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.mux_21_16_1_1_U282", "Parent" : "186"},
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.grp_pool_Pipeline_VITIS_LOOP_178_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.uitofp_32ns_32_7_no_dsp_1_U300", "Parent" : "185"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.sptohp_32ns_16_2_no_dsp_1_U301", "Parent" : "185"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.pool_U0.hmul_16ns_16ns_16_4_max_dsp_1_U302", "Parent" : "185"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.push_out_U0", "Parent" : "7", "Child" : ["234", "236", "237"],
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
			{"Name" : "O", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["185"], "DependentChan" : "18",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Port" : "O", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Port" : "out_st", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["185"], "DependentChan" : "248", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["185"], "DependentChan" : "249", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.push_out_U0.grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58", "Parent" : "233", "Child" : ["235"],
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
	{"ID" : "235", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.push_out_U0.grp_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.push_out_U0.udiv_8ns_8ns_8_12_seq_1_U316", "Parent" : "233"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.push_out_U0.mul_8ns_8ns_71_1_1_U317", "Parent" : "233"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.actp_regp_c9_U", "Parent" : "7"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.in_st1_U", "Parent" : "7"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c8_U", "Parent" : "7"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c7_channel8_U", "Parent" : "7"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c6_channel7_U", "Parent" : "7"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c5_channel6_U", "Parent" : "7"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c4_channel5_U", "Parent" : "7"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c3_channel4_U", "Parent" : "7"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c2_channel3_U", "Parent" : "7"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c1_channel2_U", "Parent" : "7"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.ctrl1_regp_c_channel_U", "Parent" : "7"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.actp_regp_c_channel_U", "Parent" : "7"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.grp_dataflow_parent_loop_proc_fu_86.dataflow_in_loop_VITIS_LOOP_208_1_U0.start_for_collect_input_U0_U", "Parent" : "7"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.mul_8ns_8ns_16_1_1_U352", "Parent" : "5"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vr_ifft_U0.mul_mul_16ns_16ns_32_4_1_U353", "Parent" : "5"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0", "Parent" : "0", "Child" : ["254", "278"],
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
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "286", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "out_st", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "279", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "280", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "281", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "282", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "283", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "284", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "285", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "wr_ptr1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_dataflow_parent_loop_proc18_fu_100", "Port" : "wr_ptr2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100", "Parent" : "253", "Child" : ["255"],
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
			{"ID" : "255", "Name" : "dataflow_in_loop_VITIS_LOOP_332_1_U0"}],
		"OutputProcess" : [
			{"ID" : "255", "Name" : "dataflow_in_loop_VITIS_LOOP_332_1_U0"}],
		"Port" : [
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "255", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "out_st"}]},
			{"Name" : "ctrl1_reg_ls", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_pn", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_reg_pool_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "255", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "gmem"}]},
			{"Name" : "out1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_reg_ifs", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "255", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "wr_ptr1"}]},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "255", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "Port" : "wr_ptr2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_332_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_332_1_U0", "has_continue" : "1"}}]},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0", "Parent" : "254", "Child" : ["256", "257", "258", "259", "266", "273", "274", "275", "276", "277"],
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
			{"ID" : "258", "Name" : "entry_proc_U0"},
			{"ID" : "259", "Name" : "buffer_U0"}],
		"OutputProcess" : [
			{"ID" : "266", "Name" : "write_U0"}],
		"Port" : [
			{"Name" : "out_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "buffer_U0", "Port" : "out_st"}]},
			{"Name" : "ctrl1_reg_ls", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_pn", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_reg_pool_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "write_U0", "Port" : "gmem"}]},
			{"Name" : "out1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_reg_ifs", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "write_U0", "Port" : "wr_ptr1"}]},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "write_U0", "Port" : "wr_ptr2"}]}]},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer1_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer1_1_U", "Parent" : "255"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.entry_proc_U0", "Parent" : "255",
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
			{"Name" : "out1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "273", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "274", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer2_reg_ifs", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_reg_ifs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "275", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer2_reg_ifs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0", "Parent" : "255", "Child" : ["260", "263", "264", "265"],
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
					{"ID" : "260", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "out_st", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "256",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "buffer1_0", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "257",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Port" : "buffer1_1", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "ctrl1_reg_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "actp_reg_3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58", "Parent" : "259", "Child" : ["261", "262"],
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
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58.mul_8ns_8ns_16_1_1_U369", "Parent" : "260"},
	{"ID" : "262", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.udiv_8ns_8ns_8_12_seq_1_U378", "Parent" : "259"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.mul_8ns_8ns_39_1_1_U379", "Parent" : "259"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.buffer_U0.mul_8ns_16ns_47_1_1_U380", "Parent" : "259"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0", "Parent" : "255", "Child" : ["267", "269", "271", "272"],
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
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["259"], "DependentChan" : "256",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "buffer1_0", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "267", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "buffer1_0", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["259"], "DependentChan" : "257",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "buffer1_1", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "267", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "buffer1_1", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "gmem", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "267", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "gmem", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["258"], "DependentChan" : "273", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["258"], "DependentChan" : "274", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["259"], "DependentChan" : "276", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "layer2_reg_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["258"], "DependentChan" : "275", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer2_reg_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["259"], "DependentChan" : "277", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_270_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "51", "FirstState" : "ap_ST_fsm_state34", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state34"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_283_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "51", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state51"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state13", "ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Parent" : "266", "Child" : ["268"],
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
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_273_2_fu_160.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Parent" : "266", "Child" : ["270"],
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
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.grp_write_Pipeline_VITIS_LOOP_286_5_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.udiv_8ns_8ns_8_12_seq_1_U401", "Parent" : "266"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.write_U0.udiv_16ns_8ns_16_20_seq_1_U402", "Parent" : "266"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.out1_c_U", "Parent" : "255"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.out2_c_U", "Parent" : "255"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.layer2_reg_ifs_c_U", "Parent" : "255"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.ctrl1_reg_ls_c_channel_U", "Parent" : "255"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.grp_dataflow_parent_loop_proc18_fu_100.dataflow_in_loop_VITIS_LOOP_332_1_U0.actp_reg_pool_size_c_channel_U", "Parent" : "255"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.buffer_write_U0.mul_mul_16ns_8ns_24_4_1_U435", "Parent" : "253"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out1_c_U", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out2_c_U", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trunc_ln372_loc_channel_U", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trunc_ln372_1_loc_channel_U", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trunc_ln372_2_loc_channel_U", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trunc_ln372_3_loc_channel_U", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trunc_ln372_4_loc_channel_U", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_st_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	IFFT_AP {
		gmem {Type IO LastRead 38 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		out1 {Type I LastRead 0 FirstWrite -1}
		out2 {Type I LastRead 0 FirstWrite -1}
		ctrl1_regp {Type I LastRead 0 FirstWrite -1}
		ctrl2_regp {Type I LastRead 0 FirstWrite -1}
		layer1_regp {Type I LastRead 0 FirstWrite -1}
		layer2_regp {Type I LastRead 0 FirstWrite -1}
		actp_regp {Type I LastRead 0 FirstWrite -1}
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
		w_14 {Type I LastRead -1 FirstWrite -1}
		wr_ptr1 {Type IO LastRead -1 FirstWrite -1}
		wr_ptr2 {Type IO LastRead -1 FirstWrite -1}}
	entry_proc21 {
		out1 {Type I LastRead 0 FirstWrite -1}
		out1_c {Type O LastRead -1 FirstWrite 0}
		out2 {Type I LastRead 0 FirstWrite -1}
		out2_c {Type O LastRead -1 FirstWrite 0}}
	Block_entry6_proc {
		ctrl1_regp {Type I LastRead 0 FirstWrite -1}
		ctrl2_regp {Type I LastRead 0 FirstWrite -1}
		layer1_regp {Type I LastRead 0 FirstWrite -1}
		layer2_regp {Type I LastRead 0 FirstWrite -1}
		actp_regp {Type I LastRead 0 FirstWrite -1}}
	vr_ifft {
		gmem {Type I LastRead 3 FirstWrite -1}
		in_r {Type I LastRead 3 FirstWrite -1}
		out_st {Type O LastRead -1 FirstWrite 3}
		ctrl1_regp {Type I LastRead 0 FirstWrite -1}
		ctrl2_regp {Type I LastRead 0 FirstWrite -1}
		layer1_regp {Type I LastRead 0 FirstWrite -1}
		actp_regp {Type I LastRead 0 FirstWrite -1}
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
	dataflow_parent_loop_proc {
		mul_ln208 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 3 FirstWrite -1}
		in_r {Type I LastRead 0 FirstWrite -1}
		ctrl1_regp {Type I LastRead 0 FirstWrite -1}
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
		out_st {Type O LastRead -1 FirstWrite 3}}
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
	{"Name" : "Latency", "Min" : "54", "Max" : "8734370"}
	, {"Name" : "Interval", "Min" : "55", "Max" : "8734371"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 128 }  { m_axi_gmem_WSTRB STRB 1 16 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 128 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
