set moduleName fwd_fft
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fwd_fft}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 128 regular {axi_master 2}  }
	{ in1 int 64 regular {axi_slave 0}  }
	{ in2 int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ ctrl1_reg int 32 regular {axi_slave 0}  }
	{ ctrl2_reg int 32 regular {axi_slave 0}  }
	{ layer1_reg int 32 regular {axi_slave 0}  }
	{ layer2_reg int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "in1","offset": { "type": "dynamic","port_name": "in1","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "in2","offset": { "type": "dynamic","port_name": "in2","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in1", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "in2", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "ctrl1_reg", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "ctrl2_reg", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "layer1_reg", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":75}} , 
 	{ "Name" : "layer2_reg", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":83}} ]}
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
	{ "name": "s_axi_ctrl_bus_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWADDR" },"address":[{"name":"fwd_fft","role":"start","value":"0","valid_bit":"0"},{"name":"fwd_fft","role":"continue","value":"0","valid_bit":"4"},{"name":"fwd_fft","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in1","role":"data","value":"16"},{"name":"in2","role":"data","value":"28"},{"name":"out_r","role":"data","value":"40"},{"name":"ctrl1_reg","role":"data","value":"52"},{"name":"ctrl2_reg","role":"data","value":"60"},{"name":"layer1_reg","role":"data","value":"68"},{"name":"layer2_reg","role":"data","value":"76"}] },
	{ "name": "s_axi_ctrl_bus_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_bus_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_bus_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_bus_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_bus_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_bus_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_bus_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARADDR" },"address":[{"name":"fwd_fft","role":"start","value":"0","valid_bit":"0"},{"name":"fwd_fft","role":"done","value":"0","valid_bit":"1"},{"name":"fwd_fft","role":"idle","value":"0","valid_bit":"2"},{"name":"fwd_fft","role":"ready","value":"0","valid_bit":"3"},{"name":"fwd_fft","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "18", "26", "152", "162", "176", "302", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349"],
		"CDFG" : "fwd_fft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "301271",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "entry_proc47_U0"},
			{"ID" : "4", "Name" : "Mem_Patch_Gen_U0"}],
		"OutputProcess" : [
			{"ID" : "302", "Name" : "Mem_patch_Wr_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Mem_Patch_Gen_U0", "Port" : "gmem"},
					{"ID" : "302", "SubInstance" : "Mem_patch_Wr_U0", "Port" : "gmem"}]},
			{"Name" : "in1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_reg", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Mem_Patch_Gen_U0", "Port" : "ctrl1_reg"}]},
			{"Name" : "ctrl2_reg", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Mem_Patch_Gen_U0", "Port" : "ctrl2_reg"}]},
			{"Name" : "layer1_reg", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Mem_Patch_Gen_U0", "Port" : "layer1_reg"}]},
			{"Name" : "layer2_reg", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Mem_Patch_Gen_U0", "Port" : "layer2_reg"}]},
			{"Name" : "w_M_real40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_real40"}]},
			{"Name" : "w_M_imag29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_imag29"}]},
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_real39"}]},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_imag28"}]},
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_real38"}]},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_imag27"}]},
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_real37"}]},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_imag26"}]},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_real36"}]},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_imag25"}]},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_real"}]},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "FFT_R_U0", "Port" : "w_M_imag"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_real41"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_imag30"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_real42"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_imag31"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_real43"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_imag32"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_real44"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_imag33"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_real45"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_imag34"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_real46"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "FFT_C_U0", "Port" : "w_M_imag35"}]},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "Mem_patch_Wr_U0", "Port" : "wr_ptr"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc47_U0", "Parent" : "0",
		"CDFG" : "entry_proc47",
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
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0", "Parent" : "0", "Child" : ["5", "6", "7", "9", "12", "14", "15", "16", "17"],
		"CDFG" : "Mem_Patch_Gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "206212",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6_fu_286", "Port" : "gmem", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "7", "SubInstance" : "grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4_fu_260", "Port" : "gmem", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "in1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_ifmap_patch_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "321", "DependentChanDepth" : "1001", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9_fu_270", "Port" : "c_ifmap_patch_st", "Inst_start_state" : "18", "Inst_end_state" : "28"}]},
			{"Name" : "ctrl1_reg", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer1_reg", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_reg", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_reg_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_207_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_217_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state7", "ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state28"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_192_1_VITIS_LOOP_195_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.burst_buffer1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.burst_buffer2_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4_fu_260", "Parent" : "4", "Child" : ["8"],
		"CDFG" : "Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln210_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln207_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln214_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "burst_buffer1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_210_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9_fu_270", "Parent" : "4", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9_fu_270.mac_muladd_8ns_8ns_8ns_16_4_1_U12", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9_fu_270.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6_fu_286", "Parent" : "4", "Child" : ["13"],
		"CDFG" : "Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln220_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln207_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln224_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "burst_buffer2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_220_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.mul_8ns_8ns_16_1_1_U25", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.mul_8ns_8ns_16_1_1_U26", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.mul_mul_8ns_16ns_24_4_1_U27", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_Patch_Gen_U0.mul_mul_16ns_8ns_24_4_1_U28", "Parent" : "4"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0", "Parent" : "0", "Child" : ["19", "21", "22", "23", "24", "25"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_Col_Wise_Overlap_Gen_U0_U",
		"Port" : [
			{"Name" : "c_ifmap_patch_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "321", "DependentChanDepth" : "1001", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116", "Port" : "c_ifmap_patch_st", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "c_ifmap_col_op_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "325", "DependentChanDepth" : "1001", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116", "Port" : "c_ifmap_col_op_st", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c30_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0.grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116", "Parent" : "18", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0.grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0.mul_8ns_8ns_16_1_1_U59", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0.mul_16ns_32ns_48_2_1_U60", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0.mul_mul_8ns_16ns_24_4_1_U61", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0.mul_mul_8ns_24ns_32_4_1_U62", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Col_Wise_Overlap_Gen_U0.Col_Buffer_fifo_U", "Parent" : "18"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0", "Parent" : "0", "Child" : ["27", "149", "150", "151"],
		"CDFG" : "FFT_R",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "301243",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "18",
		"StartFifo" : "start_for_FFT_R_U0_U",
		"Port" : [
			{"Name" : "c_ifmap_col_op_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "325", "DependentChanDepth" : "1001", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "c_ifmap_col_op_st", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "c_fft_row_op_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "c_fft_row_op_st", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_M_real40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_real40", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_imag29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_real39", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_imag28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_real38", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_imag27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_real37", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_imag26", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_real36", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_imag25", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_real", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_dataflow_parent_loop_proc11_fu_112", "Port" : "w_M_imag", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112", "Parent" : "26", "Child" : ["28"],
		"CDFG" : "dataflow_parent_loop_proc11",
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
			{"ID" : "28", "Name" : "dataflow_in_loop_VITIS_LOOP_91_1_U0"}],
		"OutputProcess" : [
			{"ID" : "28", "Name" : "dataflow_in_loop_VITIS_LOOP_91_1_U0"}],
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_ifmap_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "c_ifmap_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_row_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "c_fft_row_op_st"}]},
			{"Name" : "w_M_real40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_real40"}]},
			{"Name" : "w_M_imag29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_imag29"}]},
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_real39"}]},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_imag28"}]},
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_real38"}]},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_imag27"}]},
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_real37"}]},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_imag26"}]},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_real36"}]},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_imag25"}]},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_real"}]},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "Port" : "w_M_imag"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_91_1_U0", "has_continue" : "1"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0", "Parent" : "27", "Child" : ["29", "30", "31", "32", "33", "34", "35", "36", "38", "55", "72", "89", "106", "123", "140", "142", "143", "144", "145", "146", "147", "148"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_91_1",
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
			{"ID" : "36", "Name" : "stream_2_buf17_U0"}],
		"OutputProcess" : [
			{"ID" : "140", "Name" : "buf_2_stream24_U0"}],
		"Port" : [
			{"Name" : "c_ifmap_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "stream_2_buf17_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_row_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "buf_2_stream24_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "fft_stage_0_018_U0", "Port" : "w_M_real40"}]},
			{"Name" : "w_M_imag29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "fft_stage_0_018_U0", "Port" : "w_M_imag29"}]},
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "fft_stage_1_019_U0", "Port" : "w_M_real39"}]},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "fft_stage_1_019_U0", "Port" : "w_M_imag28"}]},
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "fft_stage_2_020_U0", "Port" : "w_M_real38"}]},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "fft_stage_2_020_U0", "Port" : "w_M_imag27"}]},
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "fft_stage_3_021_U0", "Port" : "w_M_real37"}]},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "fft_stage_3_021_U0", "Port" : "w_M_imag26"}]},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "fft_stage_4_022_U0", "Port" : "w_M_real36"}]},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "fft_stage_4_022_U0", "Port" : "w_M_imag25"}]},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "fft_stage_5_023_U0", "Port" : "w_M_real"}]},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "fft_stage_5_023_U0", "Port" : "w_M_imag"}]}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U", "Parent" : "28"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U", "Parent" : "28"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U", "Parent" : "28"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U", "Parent" : "28"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U", "Parent" : "28"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0", "Parent" : "28", "Child" : ["37"],
		"CDFG" : "stream_2_buf17",
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
			{"Name" : "input_buffer", "Type" : "Memory", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "29"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_70_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0.flow_control_loop_pipe_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0", "Parent" : "28", "Child" : ["39", "40", "41", "43"],
		"CDFG" : "fft_stage_0_018",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "29",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "43", "SubInstance" : "grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75", "Port" : "IN_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "30",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "43", "SubInstance" : "grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75", "Port" : "OUT_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag29", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.w_M_real40_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.w_M_imag29_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66", "Parent" : "38", "Child" : ["42"],
		"CDFG" : "fft_stage_0_018_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75", "Parent" : "38", "Child" : ["44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
		"CDFG" : "fft_stage_0_018_Pipeline_SKIP_X",
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
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U77", "Parent" : "43"},
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U78", "Parent" : "43"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U79", "Parent" : "43"},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U80", "Parent" : "43"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U81", "Parent" : "43"},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U82", "Parent" : "43"},
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U83", "Parent" : "43"},
	{"ID" : "51", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U84", "Parent" : "43"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U85", "Parent" : "43"},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U86", "Parent" : "43"},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.grp_fft_stage_0_018_Pipeline_SKIP_X_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0", "Parent" : "28", "Child" : ["56", "70"],
		"CDFG" : "fft_stage_1_019",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "30",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "56", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "31",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "56", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "w_M_real39", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Port" : "w_M_imag28", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48", "Parent" : "55", "Child" : ["57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "fft_stage_1_019_Pipeline_SKIP_X",
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
			{"Name" : "w_M_real39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag28", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.w_M_real39_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.w_M_imag28_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U103", "Parent" : "56"},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U104", "Parent" : "56"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U105", "Parent" : "56"},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U106", "Parent" : "56"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U107", "Parent" : "56"},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U108", "Parent" : "56"},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U109", "Parent" : "56"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U110", "Parent" : "56"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U111", "Parent" : "56"},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U112", "Parent" : "56"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_SKIP_X_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61", "Parent" : "55", "Child" : ["71"],
		"CDFG" : "fft_stage_1_019_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.grp_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0", "Parent" : "28", "Child" : ["73", "87"],
		"CDFG" : "fft_stage_2_020",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "31",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "73", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "32",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "73", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real38", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50", "Parent" : "72", "Child" : ["74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86"],
		"CDFG" : "fft_stage_2_020_Pipeline_SKIP_X",
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
			{"Name" : "w_M_real38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag27", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.w_M_real38_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.w_M_imag27_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U122", "Parent" : "73"},
	{"ID" : "77", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U123", "Parent" : "73"},
	{"ID" : "78", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U124", "Parent" : "73"},
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U125", "Parent" : "73"},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U126", "Parent" : "73"},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U127", "Parent" : "73"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U128", "Parent" : "73"},
	{"ID" : "83", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U129", "Parent" : "73"},
	{"ID" : "84", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U130", "Parent" : "73"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U131", "Parent" : "73"},
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "72", "Child" : ["88"],
		"CDFG" : "fft_stage_2_020_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.grp_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0", "Parent" : "28", "Child" : ["90", "104"],
		"CDFG" : "fft_stage_3_021",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "32",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "104", "SubInstance" : "grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "33",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "104", "SubInstance" : "grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real37", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag26", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50", "Parent" : "89", "Child" : ["91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103"],
		"CDFG" : "fft_stage_3_021_Pipeline_SKIP_X",
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
			{"Name" : "w_M_real37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag26", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.w_M_real37_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.w_M_imag26_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U141", "Parent" : "90"},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U142", "Parent" : "90"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U143", "Parent" : "90"},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U144", "Parent" : "90"},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U145", "Parent" : "90"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U146", "Parent" : "90"},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U147", "Parent" : "90"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U148", "Parent" : "90"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U149", "Parent" : "90"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U150", "Parent" : "90"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "89", "Child" : ["105"],
		"CDFG" : "fft_stage_3_021_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.grp_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0", "Parent" : "28", "Child" : ["107", "121"],
		"CDFG" : "fft_stage_4_022",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "33",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "121", "SubInstance" : "grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "123", "DependentChan" : "34",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "121", "SubInstance" : "grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real36", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag25", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50", "Parent" : "106", "Child" : ["108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "fft_stage_4_022_Pipeline_SKIP_X",
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
			{"Name" : "trunc_ln10", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag25", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "108", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.w_M_real36_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.w_M_imag25_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U160", "Parent" : "107"},
	{"ID" : "111", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U161", "Parent" : "107"},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U162", "Parent" : "107"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U163", "Parent" : "107"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U164", "Parent" : "107"},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U165", "Parent" : "107"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U166", "Parent" : "107"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U167", "Parent" : "107"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U168", "Parent" : "107"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U169", "Parent" : "107"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "107"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "106", "Child" : ["122"],
		"CDFG" : "fft_stage_4_022_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.grp_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0", "Parent" : "28", "Child" : ["124", "138"],
		"CDFG" : "fft_stage_5_023",
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "34",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "124", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "35",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "124", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "w_M_real", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Port" : "w_M_imag", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46", "Parent" : "123", "Child" : ["125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137"],
		"CDFG" : "fft_stage_5_023_Pipeline_SKIP_X",
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
			{"Name" : "trunc_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SKIP_X", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.w_M_real_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.w_M_imag_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hadd_16ns_16ns_16_5_full_dsp_1_U179", "Parent" : "124"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hadd_16ns_16ns_16_5_full_dsp_1_U180", "Parent" : "124"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hadd_16ns_16ns_16_5_full_dsp_1_U181", "Parent" : "124"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hsub_16ns_16ns_16_5_full_dsp_1_U182", "Parent" : "124"},
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hsub_16ns_16ns_16_5_full_dsp_1_U183", "Parent" : "124"},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hsub_16ns_16ns_16_5_full_dsp_1_U184", "Parent" : "124"},
	{"ID" : "133", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U185", "Parent" : "124"},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U186", "Parent" : "124"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U187", "Parent" : "124"},
	{"ID" : "136", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.hmul_16ns_16ns_16_4_max_dsp_1_U188", "Parent" : "124"},
	{"ID" : "137", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_SKIP_X_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59", "Parent" : "123", "Child" : ["139"],
		"CDFG" : "fft_stage_5_023_Pipeline_VITIS_LOOP_40_1",
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
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.grp_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0", "Parent" : "28", "Child" : ["141"],
		"CDFG" : "buf_2_stream24",
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
			{"Name" : "output_buffer", "Type" : "Memory", "Direction" : "I", "DependentProc" : "123", "DependentChan" : "35"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_fft_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "123", "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0.flow_control_loop_pipe_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U", "Parent" : "28"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U", "Parent" : "28"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U", "Parent" : "28"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U", "Parent" : "28"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U", "Parent" : "28"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U", "Parent" : "28"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U", "Parent" : "28"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.mul_8ns_8ns_16_1_1_U218", "Parent" : "26"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.mul_mul_16ns_8ns_24_4_1_U219", "Parent" : "26"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_R_U0.mul_mul_24ns_16ns_32_4_1_U220", "Parent" : "26"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0", "Parent" : "0", "Child" : ["153", "155", "157", "158", "159", "160", "161"],
		"CDFG" : "Row_Wise_Synch",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "204293",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "26",
		"StartFifo" : "start_for_Row_Wise_Synch_U0_U",
		"Port" : [
			{"Name" : "c_fft_row_op_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7_fu_161", "Port" : "c_fft_row_op_st", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5_fu_152", "Port" : "c_row_op_st", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "155", "SubInstance" : "grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7_fu_161", "Port" : "c_row_op_st", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c28_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_319_1_VITIS_LOOP_322_2_VITIS_LOOP_325_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5_fu_152", "Parent" : "152", "Child" : ["154"],
		"CDFG" : "Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_row_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "select_ln317_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Row_Buffer", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Row_Buffer_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_328_4_VITIS_LOOP_331_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7_fu_161", "Parent" : "152", "Child" : ["156"],
		"CDFG" : "Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "226",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i_op_assign_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound5", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl1_reg_load_cast1", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln317_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_fft_row_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_row_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Row_Buffer", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Row_Buffer_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_6_VITIS_LOOP_343_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.mul_8ns_8ns_16_1_1_U242", "Parent" : "152"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.mul_32ns_8ns_40_2_1_U243", "Parent" : "152"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.mul_8ns_8ns_16_1_1_U244", "Parent" : "152"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.mul_mul_16ns_16ns_32_4_1_U245", "Parent" : "152"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Row_Wise_Synch_U0.Row_Buffer_fifo_U", "Parent" : "152"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Transpose_U0", "Parent" : "0", "Child" : ["163"],
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
		"StartSource" : "152",
		"StartFifo" : "start_for_Transpose_U0_U",
		"Port" : [
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_dataflow_parent_loop_proc15_fu_82", "Port" : "c_row_op_st", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_dataflow_parent_loop_proc15_fu_82", "Port" : "c_row_op_trans_st", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c27_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82", "Parent" : "162", "Child" : ["164"],
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
			{"ID" : "164", "Name" : "dataflow_parent_loop_proc14_U0"}],
		"OutputProcess" : [
			{"ID" : "164", "Name" : "dataflow_parent_loop_proc14_U0"}],
		"Port" : [
			{"Name" : "layer1_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_436_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc14_U0", "has_continue" : "1"}}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0", "Parent" : "163", "Child" : ["165"],
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
			{"ID" : "165", "Name" : "dataflow_parent_loop_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "165", "Name" : "dataflow_parent_loop_proc_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_439_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc_U0", "has_continue" : "1"}}]},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0", "Parent" : "164", "Child" : ["166"],
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
			{"ID" : "166", "Name" : "dataflow_in_loop_VITIS_LOOP_442_3_U0"}],
		"OutputProcess" : [
			{"ID" : "166", "Name" : "dataflow_in_loop_VITIS_LOOP_442_3_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "Port" : "c_row_op_trans_st"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_442_3", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_442_3_U0", "has_continue" : "1"}}]},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0", "Parent" : "165", "Child" : ["167", "168", "169", "172", "175"],
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
			{"ID" : "169", "Name" : "ifmap_gen_x_U0"}],
		"OutputProcess" : [
			{"ID" : "172", "Name" : "ifmap_cons_y_U0"}],
		"Port" : [
			{"Name" : "c_row_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "ifmap_gen_x_U0", "Port" : "c_row_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "ifmap_cons_y_U0", "Port" : "c_row_op_trans_st"}]}]},
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0", "Parent" : "166", "Child" : ["170", "171"],
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
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "167"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "168"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_370_1_VITIS_LOOP_373_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "170", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.mul_8ns_8ns_16_1_1_U257", "Parent" : "169"},
	{"ID" : "171", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.flow_control_loop_pipe_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0", "Parent" : "166", "Child" : ["173", "174"],
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
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "167"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "168"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_row_op_trans_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "175", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_1_VITIS_LOOP_388_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "173", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.mul_8ns_8ns_16_1_1_U262", "Parent" : "172"},
	{"ID" : "174", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.flow_control_loop_pipe_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U", "Parent" : "166"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0", "Parent" : "0", "Child" : ["177", "299", "300", "301"],
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
		"StartSource" : "162",
		"StartFifo" : "start_for_FFT_C_U0_U",
		"Port" : [
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "c_row_op_trans_st", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "c_fft_col_op_st", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl1_reg_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real41", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real42", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real43", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag32", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real44", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag33", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag34", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_real46", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_dataflow_parent_loop_proc12_fu_106", "Port" : "w_M_imag35", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106", "Parent" : "176", "Child" : ["178"],
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
			{"ID" : "178", "Name" : "dataflow_in_loop_VITIS_LOOP_139_1_U0"}],
		"OutputProcess" : [
			{"ID" : "178", "Name" : "dataflow_in_loop_VITIS_LOOP_139_1_U0"}],
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real41"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag30"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real42"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag31"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real43"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag32"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real44"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag33"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real45"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag34"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_real46"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "Port" : "w_M_imag35"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_139_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_139_1_U0", "has_continue" : "1"}}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0", "Parent" : "177", "Child" : ["179", "180", "181", "182", "183", "184", "185", "186", "188", "205", "222", "239", "256", "273", "290", "292", "293", "294", "295", "296", "297", "298"],
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
			{"ID" : "186", "Name" : "stream_2_buf_U0"}],
		"OutputProcess" : [
			{"ID" : "290", "Name" : "buf_2_stream_U0"}],
		"Port" : [
			{"Name" : "c_row_op_trans_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "stream_2_buf_U0", "Port" : "c_row_op_trans_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "buf_2_stream_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "fft_stage_0_0_U0", "Port" : "w_M_real41"}]},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "fft_stage_0_0_U0", "Port" : "w_M_imag30"}]},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "fft_stage_1_0_U0", "Port" : "w_M_real42"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "fft_stage_1_0_U0", "Port" : "w_M_imag31"}]},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "fft_stage_2_0_U0", "Port" : "w_M_real43"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "fft_stage_2_0_U0", "Port" : "w_M_imag32"}]},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "fft_stage_3_0_U0", "Port" : "w_M_real44"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "fft_stage_3_0_U0", "Port" : "w_M_imag33"}]},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "256", "SubInstance" : "fft_stage_4_0_U0", "Port" : "w_M_real45"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "256", "SubInstance" : "fft_stage_4_0_U0", "Port" : "w_M_imag34"}]},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "fft_stage_5_0_U0", "Port" : "w_M_real46"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "fft_stage_5_0_U0", "Port" : "w_M_imag35"}]}]},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U", "Parent" : "178"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U", "Parent" : "178"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U", "Parent" : "178"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U", "Parent" : "178"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U", "Parent" : "178"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U", "Parent" : "178"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0", "Parent" : "178", "Child" : ["187"],
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
			{"Name" : "input_buffer", "Type" : "Memory", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "179"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_70_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0.flow_control_loop_pipe_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0", "Parent" : "178", "Child" : ["189", "190", "191", "193"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "179",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "193", "SubInstance" : "grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Port" : "IN_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "180",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "4"},
					{"ID" : "193", "SubInstance" : "grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Port" : "OUT_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_M_imag30", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.w_M_real41_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.w_M_imag30_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66", "Parent" : "188", "Child" : ["192"],
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
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75", "Parent" : "188", "Child" : ["194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204"],
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
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U296", "Parent" : "193"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U297", "Parent" : "193"},
	{"ID" : "196", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hadd_16ns_16ns_16_5_full_dsp_1_U298", "Parent" : "193"},
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U299", "Parent" : "193"},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U300", "Parent" : "193"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hsub_16ns_16ns_16_5_full_dsp_1_U301", "Parent" : "193"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U302", "Parent" : "193"},
	{"ID" : "201", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U303", "Parent" : "193"},
	{"ID" : "202", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U304", "Parent" : "193"},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.hmul_16ns_16ns_16_4_max_dsp_1_U305", "Parent" : "193"},
	{"ID" : "204", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.grp_fft_stage_0_0_Pipeline_SKIP_X_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0", "Parent" : "178", "Child" : ["206", "220"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "180",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "220", "SubInstance" : "grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "222", "DependentChan" : "181",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "220", "SubInstance" : "grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "w_M_real42", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Port" : "w_M_imag31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48", "Parent" : "205", "Child" : ["207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219"],
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
	{"ID" : "207", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.w_M_real42_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.w_M_imag31_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U317", "Parent" : "206"},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U318", "Parent" : "206"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hadd_16ns_16ns_16_5_full_dsp_1_U319", "Parent" : "206"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U320", "Parent" : "206"},
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U321", "Parent" : "206"},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hsub_16ns_16ns_16_5_full_dsp_1_U322", "Parent" : "206"},
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U323", "Parent" : "206"},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U324", "Parent" : "206"},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U325", "Parent" : "206"},
	{"ID" : "218", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.hmul_16ns_16ns_16_4_max_dsp_1_U326", "Parent" : "206"},
	{"ID" : "219", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_SKIP_X_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61", "Parent" : "205", "Child" : ["221"],
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
	{"ID" : "221", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.grp_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0", "Parent" : "178", "Child" : ["223", "237"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "181",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "223", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "182",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "223", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real43", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag32", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50", "Parent" : "222", "Child" : ["224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236"],
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
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.w_M_real43_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.w_M_imag32_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U336", "Parent" : "223"},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U337", "Parent" : "223"},
	{"ID" : "228", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U338", "Parent" : "223"},
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U339", "Parent" : "223"},
	{"ID" : "230", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U340", "Parent" : "223"},
	{"ID" : "231", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U341", "Parent" : "223"},
	{"ID" : "232", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U342", "Parent" : "223"},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U343", "Parent" : "223"},
	{"ID" : "234", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U344", "Parent" : "223"},
	{"ID" : "235", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U345", "Parent" : "223"},
	{"ID" : "236", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "222", "Child" : ["238"],
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
	{"ID" : "238", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.grp_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0", "Parent" : "178", "Child" : ["240", "254"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "182",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "254", "SubInstance" : "grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "183",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "254", "SubInstance" : "grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real44", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag33", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50", "Parent" : "239", "Child" : ["241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253"],
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
	{"ID" : "241", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.w_M_real44_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.w_M_imag33_U", "Parent" : "240"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U355", "Parent" : "240"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U356", "Parent" : "240"},
	{"ID" : "245", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U357", "Parent" : "240"},
	{"ID" : "246", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U358", "Parent" : "240"},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U359", "Parent" : "240"},
	{"ID" : "248", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U360", "Parent" : "240"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U361", "Parent" : "240"},
	{"ID" : "250", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U362", "Parent" : "240"},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U363", "Parent" : "240"},
	{"ID" : "252", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U364", "Parent" : "240"},
	{"ID" : "253", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "239", "Child" : ["255"],
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
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.grp_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0", "Parent" : "178", "Child" : ["257", "271"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "183",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "271", "SubInstance" : "grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "273", "DependentChan" : "184",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "271", "SubInstance" : "grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real45", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag34", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50", "Parent" : "256", "Child" : ["258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270"],
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
	{"ID" : "258", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.w_M_real45_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.w_M_imag34_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U374", "Parent" : "257"},
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U375", "Parent" : "257"},
	{"ID" : "262", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U376", "Parent" : "257"},
	{"ID" : "263", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U377", "Parent" : "257"},
	{"ID" : "264", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U378", "Parent" : "257"},
	{"ID" : "265", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U379", "Parent" : "257"},
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U380", "Parent" : "257"},
	{"ID" : "267", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U381", "Parent" : "257"},
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U382", "Parent" : "257"},
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U383", "Parent" : "257"},
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "257"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "256", "Child" : ["272"],
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
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.grp_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0", "Parent" : "178", "Child" : ["274", "288"],
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
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "184",
				"SubConnect" : [
					{"ID" : "274", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "288", "SubInstance" : "grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "IN_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "185",
				"SubConnect" : [
					{"ID" : "274", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "288", "SubInstance" : "grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Port" : "OUT_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w_M_real46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "274", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_real46", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w_M_imag35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "274", "SubInstance" : "grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Port" : "w_M_imag35", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50", "Parent" : "273", "Child" : ["275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287"],
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
	{"ID" : "275", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.w_M_real46_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.w_M_imag35_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U393", "Parent" : "274"},
	{"ID" : "278", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U394", "Parent" : "274"},
	{"ID" : "279", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hadd_16ns_16ns_16_5_full_dsp_1_U395", "Parent" : "274"},
	{"ID" : "280", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U396", "Parent" : "274"},
	{"ID" : "281", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U397", "Parent" : "274"},
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hsub_16ns_16ns_16_5_full_dsp_1_U398", "Parent" : "274"},
	{"ID" : "283", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U399", "Parent" : "274"},
	{"ID" : "284", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U400", "Parent" : "274"},
	{"ID" : "285", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U401", "Parent" : "274"},
	{"ID" : "286", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.hmul_16ns_16ns_16_4_max_dsp_1_U402", "Parent" : "274"},
	{"ID" : "287", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_SKIP_X_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "274"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63", "Parent" : "273", "Child" : ["289"],
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
	{"ID" : "289", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.grp_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0", "Parent" : "178", "Child" : ["291"],
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
			{"Name" : "output_buffer", "Type" : "Memory", "Direction" : "I", "DependentProc" : "273", "DependentChan" : "185"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_fft_col_op_st_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "273", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0.flow_control_loop_pipe_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U", "Parent" : "178"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U", "Parent" : "178"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U", "Parent" : "178"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U", "Parent" : "178"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U", "Parent" : "178"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U", "Parent" : "178"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U", "Parent" : "178"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.mul_8ns_8ns_16_1_1_U429", "Parent" : "176"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.mul_mul_16ns_8ns_24_4_1_U430", "Parent" : "176"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT_C_U0.mul_mul_24ns_16ns_32_4_1_U431", "Parent" : "176"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0", "Parent" : "0", "Child" : ["303"],
		"CDFG" : "Mem_patch_Wr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "236840",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_70", "Port" : "c_fft_col_op_st", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_70", "Port" : "gmem", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "320", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "ctrl1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctrl2_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ctrl2_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer1_reg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer1_reg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_70", "Port" : "wr_ptr", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70", "Parent" : "302", "Child" : ["304"],
		"CDFG" : "dataflow_parent_loop_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "236839",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "304", "Name" : "dataflow_parent_loop_proc13_U0"}],
		"OutputProcess" : [
			{"ID" : "304", "Name" : "dataflow_parent_loop_proc13_U0"}],
		"Port" : [
			{"Name" : "layer1_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "dataflow_parent_loop_proc13_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "dataflow_parent_loop_proc13_U0", "Port" : "gmem"}]},
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "dataflow_parent_loop_proc13_U0", "Port" : "wr_ptr"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_465_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc13_U0", "has_continue" : "1"}}]},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0", "Parent" : "303", "Child" : ["305"],
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
			{"ID" : "305", "Name" : "dataflow_parent_loop_proc10_U0"}],
		"OutputProcess" : [
			{"ID" : "305", "Name" : "dataflow_parent_loop_proc10_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "dataflow_parent_loop_proc10_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "dataflow_parent_loop_proc10_U0", "Port" : "gmem"}]},
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "dataflow_parent_loop_proc10_U0", "Port" : "wr_ptr"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_468_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_parent_loop_proc10_U0", "has_continue" : "1"}}]},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0", "Parent" : "304", "Child" : ["306"],
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
			{"ID" : "306", "Name" : "dataflow_in_loop_VITIS_LOOP_471_3_U0"}],
		"OutputProcess" : [
			{"ID" : "306", "Name" : "dataflow_in_loop_VITIS_LOOP_471_3_U0"}],
		"Port" : [
			{"Name" : "ctrl2_reg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "306", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "306", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "Port" : "gmem"}]},
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "306", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "Port" : "wr_ptr"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_471_3", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_471_3_U0", "has_continue" : "1"}}]},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0", "Parent" : "305", "Child" : ["307", "308", "309", "310", "313", "318", "319"],
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
			{"ID" : "309", "Name" : "entry_proc_U0"},
			{"ID" : "310", "Name" : "ifmap_gen_y_U0"}],
		"OutputProcess" : [
			{"ID" : "313", "Name" : "ifmap_vec_write_U0"}],
		"Port" : [
			{"Name" : "c_fft_col_op_st", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "310", "SubInstance" : "ifmap_gen_y_U0", "Port" : "c_fft_col_op_st"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "ifmap_vec_write_U0", "Port" : "gmem"}]},
			{"Name" : "fft_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "ifmap_vec_write_U0", "Port" : "wr_ptr"}]}]},
	{"ID" : "307", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.entry_proc_U0", "Parent" : "306",
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
	{"ID" : "310", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0", "Parent" : "306", "Child" : ["311", "312"],
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
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "313", "DependentChan" : "307"},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "313", "DependentChan" : "308"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1_VITIS_LOOP_403_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "311", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.mul_8ns_8ns_16_1_1_U441", "Parent" : "310"},
	{"ID" : "312", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.flow_control_loop_pipe_U", "Parent" : "310"},
	{"ID" : "313", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0", "Parent" : "306", "Child" : ["314", "316", "317"],
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
			{"Name" : "ifmap_CF_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "307",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Port" : "ifmap_CF_M_real", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "ifmap_CF_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "308",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Port" : "ifmap_CF_M_imag", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Port" : "gmem", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "309", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "310", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "wr_ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_416_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "314", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107", "Parent" : "313", "Child" : ["315"],
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
	{"ID" : "315", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.grp_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.mul_31ns_8ns_32_2_1_U452", "Parent" : "313"},
	{"ID" : "317", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.mul_31ns_9s_32_2_1_U453", "Parent" : "313"},
	{"ID" : "318", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U", "Parent" : "306"},
	{"ID" : "319", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U", "Parent" : "306"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_c_channel_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_ifmap_patch_st_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c21_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl2_reg_c26_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_reg_c31_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_ifmap_col_op_st_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c20_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl2_reg_c25_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_reg_c30_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_fft_row_op_st_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c19_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl2_reg_c24_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_reg_c29_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_row_op_st_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c18_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl2_reg_c23_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_reg_c28_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_row_op_trans_st_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c17_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl2_reg_c22_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_reg_c27_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_fft_col_op_st_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl1_reg_c_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl2_reg_c_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_reg_c_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Col_Wise_Overlap_Gen_U0_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_FFT_R_U0_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Row_Wise_Synch_U0_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Transpose_U0_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_FFT_C_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fwd_fft {
		gmem {Type IO LastRead 9 FirstWrite -1}
		in1 {Type I LastRead 0 FirstWrite -1}
		in2 {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		layer2_reg {Type I LastRead 3 FirstWrite -1}
		w_M_real40 {Type I LastRead -1 FirstWrite -1}
		w_M_imag29 {Type I LastRead -1 FirstWrite -1}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}
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
		w_M_imag35 {Type I LastRead -1 FirstWrite -1}
		wr_ptr {Type IO LastRead -1 FirstWrite -1}}
	entry_proc47 {
		out_r {Type I LastRead 0 FirstWrite -1}}
	Mem_Patch_Gen {
		gmem {Type I LastRead 9 FirstWrite -1}
		in1 {Type I LastRead 3 FirstWrite -1}
		in2 {Type I LastRead 3 FirstWrite -1}
		c_ifmap_patch_st {Type O LastRead -1 FirstWrite 6}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		layer2_reg {Type I LastRead 3 FirstWrite -1}
		ctrl1_reg_c21 {Type O LastRead -1 FirstWrite 0}
		ctrl2_reg_c26 {Type O LastRead -1 FirstWrite 0}
		layer1_reg_c31 {Type O LastRead -1 FirstWrite 0}}
	Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4 {
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln210_1 {Type I LastRead 0 FirstWrite -1}
		add_ln207_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln214_1 {Type I LastRead 0 FirstWrite -1}
		burst_buffer1 {Type O LastRead -1 FirstWrite 3}}
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
		c_ifmap_patch_st {Type O LastRead -1 FirstWrite 6}}
	Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6 {
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln220_1 {Type I LastRead 0 FirstWrite -1}
		add_ln207_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln224_1 {Type I LastRead 0 FirstWrite -1}
		burst_buffer2 {Type O LastRead -1 FirstWrite 3}}
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
		p_cast1 {Type I LastRead 0 FirstWrite -1}}
	FFT_R {
		c_ifmap_col_op_st {Type I LastRead 0 FirstWrite -1}
		c_fft_row_op_st {Type O LastRead -1 FirstWrite 1}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg_c19 {Type O LastRead -1 FirstWrite 0}
		ctrl2_reg_c24 {Type O LastRead -1 FirstWrite 0}
		layer1_reg_c29 {Type O LastRead -1 FirstWrite 0}
		w_M_real40 {Type I LastRead -1 FirstWrite -1}
		w_M_imag29 {Type I LastRead -1 FirstWrite -1}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc11 {
		n {Type I LastRead 0 FirstWrite -1}
		c_ifmap_col_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_fft_row_op_st {Type O LastRead -1 FirstWrite 1}
		w_M_real40 {Type I LastRead -1 FirstWrite -1}
		w_M_imag29 {Type I LastRead -1 FirstWrite -1}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_91_1 {
		c_ifmap_col_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		c_fft_row_op_st {Type O LastRead -1 FirstWrite 1}
		w_M_real40 {Type I LastRead -1 FirstWrite -1}
		w_M_imag29 {Type I LastRead -1 FirstWrite -1}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	stream_2_buf17 {
		c_row_op_trans_st {Type I LastRead 0 FirstWrite -1}
		input_buffer {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	fft_stage_0_018 {
		IN_r {Type I LastRead 9 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real40 {Type I LastRead -1 FirstWrite -1}
		w_M_imag29 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_0_018_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_0_018_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 9 FirstWrite -1}
		w1_M_real {Type I LastRead 0 FirstWrite -1}
		w1_M_imag {Type I LastRead 0 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 16}}
	fft_stage_1_019 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_019_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real39 {Type I LastRead -1 FirstWrite -1}
		w_M_imag28 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_1_019_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_2_020 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2_020_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real38 {Type I LastRead -1 FirstWrite -1}
		w_M_imag27 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2_020_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_3_021 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_021_Pipeline_SKIP_X {
		trunc_ln18 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real37 {Type I LastRead -1 FirstWrite -1}
		w_M_imag26 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3_021_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_4_022 {
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4_022_Pipeline_SKIP_X {
		trunc_ln10 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 11 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 18}
		w_M_real36 {Type I LastRead -1 FirstWrite -1}
		w_M_imag25 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4_022_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	fft_stage_5_023 {
		IN_r {Type I LastRead 10 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5_023_Pipeline_SKIP_X {
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 10 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 17}
		w_M_real {Type I LastRead -1 FirstWrite -1}
		w_M_imag {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5_023_Pipeline_VITIS_LOOP_40_1 {
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		IN_r {Type I LastRead 1 FirstWrite -1}
		OUT_r {Type O LastRead -1 FirstWrite 1}}
	buf_2_stream24 {
		output_buffer {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	Row_Wise_Synch {
		c_fft_row_op_st {Type I LastRead 2 FirstWrite -1}
		c_row_op_st {Type O LastRead -1 FirstWrite 1}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg_c18 {Type O LastRead -1 FirstWrite 0}
		ctrl2_reg_c23 {Type O LastRead -1 FirstWrite 0}
		layer1_reg_c28 {Type O LastRead -1 FirstWrite 0}}
	Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5 {
		bound {Type I LastRead 0 FirstWrite -1}
		c_row_op_st {Type O LastRead -1 FirstWrite 1}
		select_ln317_3 {Type I LastRead 0 FirstWrite -1}
		Row_Buffer {Type I LastRead 1 FirstWrite -1}}
	Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7 {
		i_op_assign_9 {Type I LastRead 0 FirstWrite -1}
		bound5 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg_load_cast1 {Type I LastRead 0 FirstWrite -1}
		select_ln317_4 {Type I LastRead 0 FirstWrite -1}
		c_fft_row_op_st {Type I LastRead 2 FirstWrite -1}
		c_row_op_st {Type O LastRead -1 FirstWrite 2}
		Row_Buffer {Type O LastRead -1 FirstWrite 2}}
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
		p_read {Type I LastRead 0 FirstWrite -1}}
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
		p_read {Type I LastRead 0 FirstWrite -1}}
	Mem_patch_Wr {
		c_fft_col_op_st {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 7 FirstWrite 3}
		p_read {Type I LastRead 0 FirstWrite -1}
		ctrl1_reg {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg {Type I LastRead 0 FirstWrite -1}
		layer1_reg {Type I LastRead 0 FirstWrite -1}
		wr_ptr {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc16 {
		layer1_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		ctrl2_reg_load_cast {Type I LastRead 0 FirstWrite -1}
		c_fft_col_op_st {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 7 FirstWrite 3}
		fft_out {Type I LastRead 0 FirstWrite -1}
		wr_ptr {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "64", "Max" : "301271"}
	, {"Name" : "Interval", "Min" : "37", "Max" : "301244"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 128 }  { m_axi_gmem_WSTRB STRB 1 16 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 128 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

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
