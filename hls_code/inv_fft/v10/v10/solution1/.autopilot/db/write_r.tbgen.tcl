set moduleName write_r
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
set C_modelName {write}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer1_0 int 16 regular {array 8192 { 1 1 } 1 1 }  }
	{ buffer1_1 int 16 regular {array 8192 { 1 1 } 1 1 }  }
	{ gmem int 128 regular {axi_master 1}  }
	{ out1 int 64 regular {fifo 0}  }
	{ out2 int 64 regular {fifo 0}  }
	{ p_read int 8 regular  }
	{ layer2_reg_2 int 16 regular {fifo 0}  }
	{ p_read1 int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buffer1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "ctrl_bus"},"direction": "READONLY"},{"cName": "out1","offset": { "type": "dynamic","port_name": "out1","bundle": "ctrl_bus"},"direction": "WRITEONLY"},{"cName": "out2","offset": { "type": "dynamic","port_name": "out2","bundle": "ctrl_bus"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "out1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out2", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "layer2_reg_2", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer1_0_address0 sc_out sc_lv 13 signal 0 } 
	{ buffer1_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer1_0_q0 sc_in sc_lv 16 signal 0 } 
	{ buffer1_0_address1 sc_out sc_lv 13 signal 0 } 
	{ buffer1_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer1_0_q1 sc_in sc_lv 16 signal 0 } 
	{ buffer1_1_address0 sc_out sc_lv 13 signal 1 } 
	{ buffer1_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer1_1_q0 sc_in sc_lv 16 signal 1 } 
	{ buffer1_1_address1 sc_out sc_lv 13 signal 1 } 
	{ buffer1_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer1_1_q1 sc_in sc_lv 16 signal 1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 128 signal 2 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 16 signal 2 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 128 signal 2 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 2 } 
	{ out1_dout sc_in sc_lv 64 signal 3 } 
	{ out1_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ out1_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ out1_empty_n sc_in sc_logic 1 signal 3 } 
	{ out1_read sc_out sc_logic 1 signal 3 } 
	{ out2_dout sc_in sc_lv 64 signal 4 } 
	{ out2_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ out2_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ out2_empty_n sc_in sc_logic 1 signal 4 } 
	{ out2_read sc_out sc_logic 1 signal 4 } 
	{ p_read sc_in sc_lv 8 signal 5 } 
	{ layer2_reg_2_dout sc_in sc_lv 16 signal 6 } 
	{ layer2_reg_2_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ layer2_reg_2_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ layer2_reg_2_empty_n sc_in sc_logic 1 signal 6 } 
	{ layer2_reg_2_read sc_out sc_logic 1 signal 6 } 
	{ p_read1 sc_in sc_lv 8 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_0", "role": "address0" }} , 
 	{ "name": "buffer1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_0", "role": "ce0" }} , 
 	{ "name": "buffer1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_0", "role": "q0" }} , 
 	{ "name": "buffer1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_0", "role": "address1" }} , 
 	{ "name": "buffer1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_0", "role": "ce1" }} , 
 	{ "name": "buffer1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_0", "role": "q1" }} , 
 	{ "name": "buffer1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_1", "role": "address0" }} , 
 	{ "name": "buffer1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1", "role": "ce0" }} , 
 	{ "name": "buffer1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_1", "role": "q0" }} , 
 	{ "name": "buffer1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buffer1_1", "role": "address1" }} , 
 	{ "name": "buffer1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1", "role": "ce1" }} , 
 	{ "name": "buffer1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer1_1", "role": "q1" }} , 
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
 	{ "name": "layer2_reg_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_reg_2", "role": "dout" }} , 
 	{ "name": "layer2_reg_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer2_reg_2", "role": "num_data_valid" }} , 
 	{ "name": "layer2_reg_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer2_reg_2", "role": "fifo_cap" }} , 
 	{ "name": "layer2_reg_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_reg_2", "role": "empty_n" }} , 
 	{ "name": "layer2_reg_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_reg_2", "role": "read" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "6"],
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
			{"Name" : "buffer1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "buffer1_0", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "1", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "buffer1_0", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "buffer1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "buffer1_1", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "1", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "buffer1_1", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Port" : "gmem", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "1", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Port" : "gmem", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "layer2_reg_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layer2_reg_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "wr_ptr1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wr_ptr2", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_270_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "51", "FirstState" : "ap_ST_fsm_state34", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state34"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_283_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "51", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state51"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state13", "ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_Pipeline_VITIS_LOOP_273_2_fu_160", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_Pipeline_VITIS_LOOP_273_2_fu_160.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_Pipeline_VITIS_LOOP_286_5_fu_173", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_Pipeline_VITIS_LOOP_286_5_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_8ns_8ns_8_12_seq_1_U401", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_16ns_8ns_16_20_seq_1_U402", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "13", "Max" : "1966"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "1966"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer1_0 { ap_memory {  { buffer1_0_address0 mem_address 1 13 }  { buffer1_0_ce0 mem_ce 1 1 }  { buffer1_0_q0 mem_dout 0 16 }  { buffer1_0_address1 MemPortADDR2 1 13 }  { buffer1_0_ce1 MemPortCE2 1 1 }  { buffer1_0_q1 MemPortDOUT2 0 16 } } }
	buffer1_1 { ap_memory {  { buffer1_1_address0 mem_address 1 13 }  { buffer1_1_ce0 mem_ce 1 1 }  { buffer1_1_q0 mem_dout 0 16 }  { buffer1_1_address1 MemPortADDR2 1 13 }  { buffer1_1_ce1 MemPortCE2 1 1 }  { buffer1_1_q1 MemPortDOUT2 0 16 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 128 }  { m_axi_gmem_WSTRB STRB 1 16 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 128 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	out1 { ap_fifo {  { out1_dout fifo_port_we 0 64 }  { out1_num_data_valid fifo_status_num_data_valid 0 3 }  { out1_fifo_cap fifo_update 0 3 }  { out1_empty_n fifo_status 0 1 }  { out1_read fifo_data 1 1 } } }
	out2 { ap_fifo {  { out2_dout fifo_port_we 0 64 }  { out2_num_data_valid fifo_status_num_data_valid 0 3 }  { out2_fifo_cap fifo_update 0 3 }  { out2_empty_n fifo_status 0 1 }  { out2_read fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
	layer2_reg_2 { ap_fifo {  { layer2_reg_2_dout fifo_port_we 0 16 }  { layer2_reg_2_num_data_valid fifo_status_num_data_valid 0 3 }  { layer2_reg_2_fifo_cap fifo_update 0 3 }  { layer2_reg_2_empty_n fifo_status 0 1 }  { layer2_reg_2_read fifo_data 1 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
}
