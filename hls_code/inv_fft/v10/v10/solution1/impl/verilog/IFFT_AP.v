// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="IFFT_AP_IFFT_AP,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7cg-fbvb900-1-i,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=4.262000,HLS_SYN_LAT=1843739,HLS_SYN_TPT=1843740,HLS_SYN_MEM=160,HLS_SYN_DSP=0,HLS_SYN_FF=32930,HLS_SYN_LUT=36019,HLS_VERSION=2022_2}" *)

module IFFT_AP (
        s_axi_ctrl_bus_AWVALID,
        s_axi_ctrl_bus_AWREADY,
        s_axi_ctrl_bus_AWADDR,
        s_axi_ctrl_bus_WVALID,
        s_axi_ctrl_bus_WREADY,
        s_axi_ctrl_bus_WDATA,
        s_axi_ctrl_bus_WSTRB,
        s_axi_ctrl_bus_ARVALID,
        s_axi_ctrl_bus_ARREADY,
        s_axi_ctrl_bus_ARADDR,
        s_axi_ctrl_bus_RVALID,
        s_axi_ctrl_bus_RREADY,
        s_axi_ctrl_bus_RDATA,
        s_axi_ctrl_bus_RRESP,
        s_axi_ctrl_bus_BVALID,
        s_axi_ctrl_bus_BREADY,
        s_axi_ctrl_bus_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER
);

parameter    C_S_AXI_CTRL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_BUS_ADDR_WIDTH = 7;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 128;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CTRL_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (128 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_ctrl_bus_AWVALID;
output   s_axi_ctrl_bus_AWREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_ctrl_bus_AWADDR;
input   s_axi_ctrl_bus_WVALID;
output   s_axi_ctrl_bus_WREADY;
input  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_ctrl_bus_WDATA;
input  [C_S_AXI_CTRL_BUS_WSTRB_WIDTH - 1:0] s_axi_ctrl_bus_WSTRB;
input   s_axi_ctrl_bus_ARVALID;
output   s_axi_ctrl_bus_ARREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_ctrl_bus_ARADDR;
output   s_axi_ctrl_bus_RVALID;
input   s_axi_ctrl_bus_RREADY;
output  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_ctrl_bus_RDATA;
output  [1:0] s_axi_ctrl_bus_RRESP;
output   s_axi_ctrl_bus_BVALID;
input   s_axi_ctrl_bus_BREADY;
output  [1:0] s_axi_ctrl_bus_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;

 reg    ap_rst_n_inv;
wire   [63:0] in_r;
wire   [63:0] out1;
wire   [63:0] out2;
wire   [31:0] ctrl1_regp;
wire   [31:0] ctrl2_regp;
wire   [31:0] layer1_regp;
wire   [31:0] layer2_regp;
wire   [31:0] actp_regp;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_continue;
wire    ap_idle;
wire    gmem_AWREADY;
wire    gmem_WREADY;
wire    gmem_ARREADY;
wire    gmem_RVALID;
wire   [127:0] gmem_RDATA;
wire    gmem_RLAST;
wire   [0:0] gmem_RID;
wire   [8:0] gmem_RFIFONUM;
wire   [0:0] gmem_RUSER;
wire   [1:0] gmem_RRESP;
wire    gmem_BVALID;
wire   [1:0] gmem_BRESP;
wire   [0:0] gmem_BID;
wire   [0:0] gmem_BUSER;
wire    entry_proc21_U0_ap_start;
wire    entry_proc21_U0_ap_done;
wire    entry_proc21_U0_ap_continue;
wire    entry_proc21_U0_ap_idle;
wire    entry_proc21_U0_ap_ready;
wire   [63:0] entry_proc21_U0_out1_c_din;
wire    entry_proc21_U0_out1_c_write;
wire   [63:0] entry_proc21_U0_out2_c_din;
wire    entry_proc21_U0_out2_c_write;
wire    Block_entry6_proc_U0_ap_start;
wire    Block_entry6_proc_U0_ap_done;
wire    Block_entry6_proc_U0_ap_continue;
wire    Block_entry6_proc_U0_ap_idle;
wire    Block_entry6_proc_U0_ap_ready;
wire   [7:0] Block_entry6_proc_U0_ap_return_0;
wire   [7:0] Block_entry6_proc_U0_ap_return_1;
wire   [15:0] Block_entry6_proc_U0_ap_return_2;
wire   [15:0] Block_entry6_proc_U0_ap_return_3;
wire   [7:0] Block_entry6_proc_U0_ap_return_4;
wire    ap_channel_done_trunc_ln372_4_loc_channel;
wire    trunc_ln372_4_loc_channel_full_n;
reg    ap_sync_reg_channel_write_trunc_ln372_4_loc_channel;
wire    ap_sync_channel_write_trunc_ln372_4_loc_channel;
wire    ap_channel_done_trunc_ln372_3_loc_channel;
wire    trunc_ln372_3_loc_channel_full_n;
reg    ap_sync_reg_channel_write_trunc_ln372_3_loc_channel;
wire    ap_sync_channel_write_trunc_ln372_3_loc_channel;
wire    ap_channel_done_trunc_ln372_2_loc_channel;
wire    trunc_ln372_2_loc_channel_full_n;
reg    ap_sync_reg_channel_write_trunc_ln372_2_loc_channel;
wire    ap_sync_channel_write_trunc_ln372_2_loc_channel;
wire    ap_channel_done_trunc_ln372_1_loc_channel;
wire    trunc_ln372_1_loc_channel_full_n;
reg    ap_sync_reg_channel_write_trunc_ln372_1_loc_channel;
wire    ap_sync_channel_write_trunc_ln372_1_loc_channel;
wire    ap_channel_done_trunc_ln372_loc_channel;
wire    trunc_ln372_loc_channel_full_n;
reg    ap_sync_reg_channel_write_trunc_ln372_loc_channel;
wire    ap_sync_channel_write_trunc_ln372_loc_channel;
wire    vr_ifft_U0_ap_start;
wire    vr_ifft_U0_ap_done;
wire    vr_ifft_U0_ap_continue;
wire    vr_ifft_U0_ap_idle;
wire    vr_ifft_U0_ap_ready;
wire    vr_ifft_U0_m_axi_gmem_AWVALID;
wire   [63:0] vr_ifft_U0_m_axi_gmem_AWADDR;
wire   [0:0] vr_ifft_U0_m_axi_gmem_AWID;
wire   [31:0] vr_ifft_U0_m_axi_gmem_AWLEN;
wire   [2:0] vr_ifft_U0_m_axi_gmem_AWSIZE;
wire   [1:0] vr_ifft_U0_m_axi_gmem_AWBURST;
wire   [1:0] vr_ifft_U0_m_axi_gmem_AWLOCK;
wire   [3:0] vr_ifft_U0_m_axi_gmem_AWCACHE;
wire   [2:0] vr_ifft_U0_m_axi_gmem_AWPROT;
wire   [3:0] vr_ifft_U0_m_axi_gmem_AWQOS;
wire   [3:0] vr_ifft_U0_m_axi_gmem_AWREGION;
wire   [0:0] vr_ifft_U0_m_axi_gmem_AWUSER;
wire    vr_ifft_U0_m_axi_gmem_WVALID;
wire   [127:0] vr_ifft_U0_m_axi_gmem_WDATA;
wire   [15:0] vr_ifft_U0_m_axi_gmem_WSTRB;
wire    vr_ifft_U0_m_axi_gmem_WLAST;
wire   [0:0] vr_ifft_U0_m_axi_gmem_WID;
wire   [0:0] vr_ifft_U0_m_axi_gmem_WUSER;
wire    vr_ifft_U0_m_axi_gmem_ARVALID;
wire   [63:0] vr_ifft_U0_m_axi_gmem_ARADDR;
wire   [0:0] vr_ifft_U0_m_axi_gmem_ARID;
wire   [31:0] vr_ifft_U0_m_axi_gmem_ARLEN;
wire   [2:0] vr_ifft_U0_m_axi_gmem_ARSIZE;
wire   [1:0] vr_ifft_U0_m_axi_gmem_ARBURST;
wire   [1:0] vr_ifft_U0_m_axi_gmem_ARLOCK;
wire   [3:0] vr_ifft_U0_m_axi_gmem_ARCACHE;
wire   [2:0] vr_ifft_U0_m_axi_gmem_ARPROT;
wire   [3:0] vr_ifft_U0_m_axi_gmem_ARQOS;
wire   [3:0] vr_ifft_U0_m_axi_gmem_ARREGION;
wire   [0:0] vr_ifft_U0_m_axi_gmem_ARUSER;
wire    vr_ifft_U0_m_axi_gmem_RREADY;
wire    vr_ifft_U0_m_axi_gmem_BREADY;
wire   [63:0] vr_ifft_U0_out_st_din;
wire    vr_ifft_U0_out_st_write;
wire    buffer_write_U0_ap_start;
wire    buffer_write_U0_ap_done;
wire    buffer_write_U0_ap_continue;
wire    buffer_write_U0_ap_idle;
wire    buffer_write_U0_ap_ready;
wire    buffer_write_U0_out_st_read;
wire    buffer_write_U0_m_axi_gmem_AWVALID;
wire   [63:0] buffer_write_U0_m_axi_gmem_AWADDR;
wire   [0:0] buffer_write_U0_m_axi_gmem_AWID;
wire   [31:0] buffer_write_U0_m_axi_gmem_AWLEN;
wire   [2:0] buffer_write_U0_m_axi_gmem_AWSIZE;
wire   [1:0] buffer_write_U0_m_axi_gmem_AWBURST;
wire   [1:0] buffer_write_U0_m_axi_gmem_AWLOCK;
wire   [3:0] buffer_write_U0_m_axi_gmem_AWCACHE;
wire   [2:0] buffer_write_U0_m_axi_gmem_AWPROT;
wire   [3:0] buffer_write_U0_m_axi_gmem_AWQOS;
wire   [3:0] buffer_write_U0_m_axi_gmem_AWREGION;
wire   [0:0] buffer_write_U0_m_axi_gmem_AWUSER;
wire    buffer_write_U0_m_axi_gmem_WVALID;
wire   [127:0] buffer_write_U0_m_axi_gmem_WDATA;
wire   [15:0] buffer_write_U0_m_axi_gmem_WSTRB;
wire    buffer_write_U0_m_axi_gmem_WLAST;
wire   [0:0] buffer_write_U0_m_axi_gmem_WID;
wire   [0:0] buffer_write_U0_m_axi_gmem_WUSER;
wire    buffer_write_U0_m_axi_gmem_ARVALID;
wire   [63:0] buffer_write_U0_m_axi_gmem_ARADDR;
wire   [0:0] buffer_write_U0_m_axi_gmem_ARID;
wire   [31:0] buffer_write_U0_m_axi_gmem_ARLEN;
wire   [2:0] buffer_write_U0_m_axi_gmem_ARSIZE;
wire   [1:0] buffer_write_U0_m_axi_gmem_ARBURST;
wire   [1:0] buffer_write_U0_m_axi_gmem_ARLOCK;
wire   [3:0] buffer_write_U0_m_axi_gmem_ARCACHE;
wire   [2:0] buffer_write_U0_m_axi_gmem_ARPROT;
wire   [3:0] buffer_write_U0_m_axi_gmem_ARQOS;
wire   [3:0] buffer_write_U0_m_axi_gmem_ARREGION;
wire   [0:0] buffer_write_U0_m_axi_gmem_ARUSER;
wire    buffer_write_U0_m_axi_gmem_RREADY;
wire    buffer_write_U0_m_axi_gmem_BREADY;
wire    buffer_write_U0_out1_read;
wire    buffer_write_U0_out2_read;
wire    out1_c_full_n;
wire   [63:0] out1_c_dout;
wire   [2:0] out1_c_num_data_valid;
wire   [2:0] out1_c_fifo_cap;
wire    out1_c_empty_n;
wire    out2_c_full_n;
wire   [63:0] out2_c_dout;
wire   [2:0] out2_c_num_data_valid;
wire   [2:0] out2_c_fifo_cap;
wire    out2_c_empty_n;
wire   [7:0] trunc_ln372_loc_channel_dout;
wire   [1:0] trunc_ln372_loc_channel_num_data_valid;
wire   [1:0] trunc_ln372_loc_channel_fifo_cap;
wire    trunc_ln372_loc_channel_empty_n;
wire   [7:0] trunc_ln372_1_loc_channel_dout;
wire   [1:0] trunc_ln372_1_loc_channel_num_data_valid;
wire   [1:0] trunc_ln372_1_loc_channel_fifo_cap;
wire    trunc_ln372_1_loc_channel_empty_n;
wire   [15:0] trunc_ln372_2_loc_channel_dout;
wire   [1:0] trunc_ln372_2_loc_channel_num_data_valid;
wire   [1:0] trunc_ln372_2_loc_channel_fifo_cap;
wire    trunc_ln372_2_loc_channel_empty_n;
wire   [15:0] trunc_ln372_3_loc_channel_dout;
wire   [1:0] trunc_ln372_3_loc_channel_num_data_valid;
wire   [1:0] trunc_ln372_3_loc_channel_fifo_cap;
wire    trunc_ln372_3_loc_channel_empty_n;
wire   [7:0] trunc_ln372_4_loc_channel_dout;
wire   [1:0] trunc_ln372_4_loc_channel_num_data_valid;
wire   [1:0] trunc_ln372_4_loc_channel_fifo_cap;
wire    trunc_ln372_4_loc_channel_empty_n;
wire    out_st_full_n;
wire   [63:0] out_st_dout;
wire   [1:0] out_st_num_data_valid;
wire   [1:0] out_st_fifo_cap;
wire    out_st_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc21_U0_ap_ready;
wire    ap_sync_entry_proc21_U0_ap_ready;
reg    ap_sync_reg_Block_entry6_proc_U0_ap_ready;
wire    ap_sync_Block_entry6_proc_U0_ap_ready;
reg    ap_sync_reg_vr_ifft_U0_ap_ready;
wire    ap_sync_vr_ifft_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_trunc_ln372_4_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_trunc_ln372_3_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_trunc_ln372_2_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_trunc_ln372_1_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_trunc_ln372_loc_channel = 1'b0;
#0 ap_sync_reg_entry_proc21_U0_ap_ready = 1'b0;
#0 ap_sync_reg_Block_entry6_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_vr_ifft_U0_ap_ready = 1'b0;
end

IFFT_AP_ctrl_bus_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_BUS_DATA_WIDTH ))
ctrl_bus_s_axi_U(
    .AWVALID(s_axi_ctrl_bus_AWVALID),
    .AWREADY(s_axi_ctrl_bus_AWREADY),
    .AWADDR(s_axi_ctrl_bus_AWADDR),
    .WVALID(s_axi_ctrl_bus_WVALID),
    .WREADY(s_axi_ctrl_bus_WREADY),
    .WDATA(s_axi_ctrl_bus_WDATA),
    .WSTRB(s_axi_ctrl_bus_WSTRB),
    .ARVALID(s_axi_ctrl_bus_ARVALID),
    .ARREADY(s_axi_ctrl_bus_ARREADY),
    .ARADDR(s_axi_ctrl_bus_ARADDR),
    .RVALID(s_axi_ctrl_bus_RVALID),
    .RREADY(s_axi_ctrl_bus_RREADY),
    .RDATA(s_axi_ctrl_bus_RDATA),
    .RRESP(s_axi_ctrl_bus_RRESP),
    .BVALID(s_axi_ctrl_bus_BVALID),
    .BREADY(s_axi_ctrl_bus_BREADY),
    .BRESP(s_axi_ctrl_bus_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .in_r(in_r),
    .out1(out1),
    .out2(out2),
    .ctrl1_regp(ctrl1_regp),
    .ctrl2_regp(ctrl2_regp),
    .layer1_regp(layer1_regp),
    .layer2_regp(layer2_regp),
    .actp_regp(actp_regp),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_continue(ap_continue),
    .ap_idle(ap_idle)
);

IFFT_AP_gmem_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .USER_DW( 128 ),
    .USER_AW( 64 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ))
gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(vr_ifft_U0_m_axi_gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(vr_ifft_U0_m_axi_gmem_ARADDR),
    .I_ARLEN(vr_ifft_U0_m_axi_gmem_ARLEN),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(vr_ifft_U0_m_axi_gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(buffer_write_U0_m_axi_gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(buffer_write_U0_m_axi_gmem_AWADDR),
    .I_AWLEN(buffer_write_U0_m_axi_gmem_AWLEN),
    .I_WVALID(buffer_write_U0_m_axi_gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(buffer_write_U0_m_axi_gmem_WDATA),
    .I_WSTRB(buffer_write_U0_m_axi_gmem_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(buffer_write_U0_m_axi_gmem_BREADY)
);

IFFT_AP_entry_proc21 entry_proc21_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(entry_proc21_U0_ap_start),
    .ap_done(entry_proc21_U0_ap_done),
    .ap_continue(entry_proc21_U0_ap_continue),
    .ap_idle(entry_proc21_U0_ap_idle),
    .ap_ready(entry_proc21_U0_ap_ready),
    .out1(out1),
    .out1_c_din(entry_proc21_U0_out1_c_din),
    .out1_c_num_data_valid(out1_c_num_data_valid),
    .out1_c_fifo_cap(out1_c_fifo_cap),
    .out1_c_full_n(out1_c_full_n),
    .out1_c_write(entry_proc21_U0_out1_c_write),
    .out2(out2),
    .out2_c_din(entry_proc21_U0_out2_c_din),
    .out2_c_num_data_valid(out2_c_num_data_valid),
    .out2_c_fifo_cap(out2_c_fifo_cap),
    .out2_c_full_n(out2_c_full_n),
    .out2_c_write(entry_proc21_U0_out2_c_write)
);

IFFT_AP_Block_entry6_proc Block_entry6_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_entry6_proc_U0_ap_start),
    .ap_done(Block_entry6_proc_U0_ap_done),
    .ap_continue(Block_entry6_proc_U0_ap_continue),
    .ap_idle(Block_entry6_proc_U0_ap_idle),
    .ap_ready(Block_entry6_proc_U0_ap_ready),
    .ctrl1_regp(ctrl1_regp),
    .ctrl2_regp(ctrl2_regp),
    .layer1_regp(layer1_regp),
    .layer2_regp(layer2_regp),
    .actp_regp(actp_regp),
    .ap_return_0(Block_entry6_proc_U0_ap_return_0),
    .ap_return_1(Block_entry6_proc_U0_ap_return_1),
    .ap_return_2(Block_entry6_proc_U0_ap_return_2),
    .ap_return_3(Block_entry6_proc_U0_ap_return_3),
    .ap_return_4(Block_entry6_proc_U0_ap_return_4)
);

IFFT_AP_vr_ifft vr_ifft_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(vr_ifft_U0_ap_start),
    .ap_done(vr_ifft_U0_ap_done),
    .ap_continue(vr_ifft_U0_ap_continue),
    .ap_idle(vr_ifft_U0_ap_idle),
    .ap_ready(vr_ifft_U0_ap_ready),
    .m_axi_gmem_AWVALID(vr_ifft_U0_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(1'b0),
    .m_axi_gmem_AWADDR(vr_ifft_U0_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(vr_ifft_U0_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(vr_ifft_U0_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(vr_ifft_U0_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(vr_ifft_U0_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(vr_ifft_U0_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(vr_ifft_U0_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(vr_ifft_U0_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(vr_ifft_U0_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(vr_ifft_U0_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(vr_ifft_U0_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(vr_ifft_U0_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(1'b0),
    .m_axi_gmem_WDATA(vr_ifft_U0_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(vr_ifft_U0_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(vr_ifft_U0_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(vr_ifft_U0_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(vr_ifft_U0_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(vr_ifft_U0_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(gmem_ARREADY),
    .m_axi_gmem_ARADDR(vr_ifft_U0_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(vr_ifft_U0_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(vr_ifft_U0_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(vr_ifft_U0_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(vr_ifft_U0_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(vr_ifft_U0_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(vr_ifft_U0_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(vr_ifft_U0_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(vr_ifft_U0_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(vr_ifft_U0_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(vr_ifft_U0_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(gmem_RVALID),
    .m_axi_gmem_RREADY(vr_ifft_U0_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(gmem_RDATA),
    .m_axi_gmem_RLAST(gmem_RLAST),
    .m_axi_gmem_RID(gmem_RID),
    .m_axi_gmem_RFIFONUM(gmem_RFIFONUM),
    .m_axi_gmem_RUSER(gmem_RUSER),
    .m_axi_gmem_RRESP(gmem_RRESP),
    .m_axi_gmem_BVALID(1'b0),
    .m_axi_gmem_BREADY(vr_ifft_U0_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(2'd0),
    .m_axi_gmem_BID(1'd0),
    .m_axi_gmem_BUSER(1'd0),
    .in_r(in_r),
    .out_st_din(vr_ifft_U0_out_st_din),
    .out_st_num_data_valid(out_st_num_data_valid),
    .out_st_fifo_cap(out_st_fifo_cap),
    .out_st_full_n(out_st_full_n),
    .out_st_write(vr_ifft_U0_out_st_write),
    .ctrl1_regp(ctrl1_regp),
    .ctrl2_regp(ctrl2_regp),
    .layer1_regp(layer1_regp),
    .actp_regp(actp_regp)
);

IFFT_AP_buffer_write buffer_write_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(buffer_write_U0_ap_start),
    .ap_done(buffer_write_U0_ap_done),
    .ap_continue(buffer_write_U0_ap_continue),
    .ap_idle(buffer_write_U0_ap_idle),
    .ap_ready(buffer_write_U0_ap_ready),
    .out_st_dout(out_st_dout),
    .out_st_num_data_valid(out_st_num_data_valid),
    .out_st_fifo_cap(out_st_fifo_cap),
    .out_st_empty_n(out_st_empty_n),
    .out_st_read(buffer_write_U0_out_st_read),
    .m_axi_gmem_AWVALID(buffer_write_U0_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(gmem_AWREADY),
    .m_axi_gmem_AWADDR(buffer_write_U0_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(buffer_write_U0_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(buffer_write_U0_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(buffer_write_U0_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(buffer_write_U0_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(buffer_write_U0_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(buffer_write_U0_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(buffer_write_U0_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(buffer_write_U0_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(buffer_write_U0_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(buffer_write_U0_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(buffer_write_U0_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(gmem_WREADY),
    .m_axi_gmem_WDATA(buffer_write_U0_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(buffer_write_U0_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(buffer_write_U0_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(buffer_write_U0_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(buffer_write_U0_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(buffer_write_U0_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(1'b0),
    .m_axi_gmem_ARADDR(buffer_write_U0_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(buffer_write_U0_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(buffer_write_U0_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(buffer_write_U0_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(buffer_write_U0_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(buffer_write_U0_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(buffer_write_U0_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(buffer_write_U0_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(buffer_write_U0_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(buffer_write_U0_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(buffer_write_U0_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(1'b0),
    .m_axi_gmem_RREADY(buffer_write_U0_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(128'd0),
    .m_axi_gmem_RLAST(1'b0),
    .m_axi_gmem_RID(1'd0),
    .m_axi_gmem_RFIFONUM(9'd0),
    .m_axi_gmem_RUSER(1'd0),
    .m_axi_gmem_RRESP(2'd0),
    .m_axi_gmem_BVALID(gmem_BVALID),
    .m_axi_gmem_BREADY(buffer_write_U0_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(gmem_BRESP),
    .m_axi_gmem_BID(gmem_BID),
    .m_axi_gmem_BUSER(gmem_BUSER),
    .out1_dout(out1_c_dout),
    .out1_num_data_valid(out1_c_num_data_valid),
    .out1_fifo_cap(out1_c_fifo_cap),
    .out1_empty_n(out1_c_empty_n),
    .out1_read(buffer_write_U0_out1_read),
    .out2_dout(out2_c_dout),
    .out2_num_data_valid(out2_c_num_data_valid),
    .out2_fifo_cap(out2_c_fifo_cap),
    .out2_empty_n(out2_c_empty_n),
    .out2_read(buffer_write_U0_out2_read),
    .p_read(trunc_ln372_loc_channel_dout),
    .p_read1(trunc_ln372_1_loc_channel_dout),
    .p_read2(trunc_ln372_2_loc_channel_dout),
    .p_read3(trunc_ln372_3_loc_channel_dout),
    .p_read4(trunc_ln372_4_loc_channel_dout)
);

IFFT_AP_fifo_w64_d3_S_x out1_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc21_U0_out1_c_din),
    .if_full_n(out1_c_full_n),
    .if_write(entry_proc21_U0_out1_c_write),
    .if_dout(out1_c_dout),
    .if_num_data_valid(out1_c_num_data_valid),
    .if_fifo_cap(out1_c_fifo_cap),
    .if_empty_n(out1_c_empty_n),
    .if_read(buffer_write_U0_out1_read)
);

IFFT_AP_fifo_w64_d3_S_x out2_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc21_U0_out2_c_din),
    .if_full_n(out2_c_full_n),
    .if_write(entry_proc21_U0_out2_c_write),
    .if_dout(out2_c_dout),
    .if_num_data_valid(out2_c_num_data_valid),
    .if_fifo_cap(out2_c_fifo_cap),
    .if_empty_n(out2_c_empty_n),
    .if_read(buffer_write_U0_out2_read)
);

IFFT_AP_fifo_w8_d2_S_x trunc_ln372_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry6_proc_U0_ap_return_0),
    .if_full_n(trunc_ln372_loc_channel_full_n),
    .if_write(ap_channel_done_trunc_ln372_loc_channel),
    .if_dout(trunc_ln372_loc_channel_dout),
    .if_num_data_valid(trunc_ln372_loc_channel_num_data_valid),
    .if_fifo_cap(trunc_ln372_loc_channel_fifo_cap),
    .if_empty_n(trunc_ln372_loc_channel_empty_n),
    .if_read(buffer_write_U0_ap_ready)
);

IFFT_AP_fifo_w8_d2_S_x trunc_ln372_1_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry6_proc_U0_ap_return_1),
    .if_full_n(trunc_ln372_1_loc_channel_full_n),
    .if_write(ap_channel_done_trunc_ln372_1_loc_channel),
    .if_dout(trunc_ln372_1_loc_channel_dout),
    .if_num_data_valid(trunc_ln372_1_loc_channel_num_data_valid),
    .if_fifo_cap(trunc_ln372_1_loc_channel_fifo_cap),
    .if_empty_n(trunc_ln372_1_loc_channel_empty_n),
    .if_read(buffer_write_U0_ap_ready)
);

IFFT_AP_fifo_w16_d2_S trunc_ln372_2_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry6_proc_U0_ap_return_2),
    .if_full_n(trunc_ln372_2_loc_channel_full_n),
    .if_write(ap_channel_done_trunc_ln372_2_loc_channel),
    .if_dout(trunc_ln372_2_loc_channel_dout),
    .if_num_data_valid(trunc_ln372_2_loc_channel_num_data_valid),
    .if_fifo_cap(trunc_ln372_2_loc_channel_fifo_cap),
    .if_empty_n(trunc_ln372_2_loc_channel_empty_n),
    .if_read(buffer_write_U0_ap_ready)
);

IFFT_AP_fifo_w16_d2_S trunc_ln372_3_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry6_proc_U0_ap_return_3),
    .if_full_n(trunc_ln372_3_loc_channel_full_n),
    .if_write(ap_channel_done_trunc_ln372_3_loc_channel),
    .if_dout(trunc_ln372_3_loc_channel_dout),
    .if_num_data_valid(trunc_ln372_3_loc_channel_num_data_valid),
    .if_fifo_cap(trunc_ln372_3_loc_channel_fifo_cap),
    .if_empty_n(trunc_ln372_3_loc_channel_empty_n),
    .if_read(buffer_write_U0_ap_ready)
);

IFFT_AP_fifo_w8_d2_S_x trunc_ln372_4_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry6_proc_U0_ap_return_4),
    .if_full_n(trunc_ln372_4_loc_channel_full_n),
    .if_write(ap_channel_done_trunc_ln372_4_loc_channel),
    .if_dout(trunc_ln372_4_loc_channel_dout),
    .if_num_data_valid(trunc_ln372_4_loc_channel_num_data_valid),
    .if_fifo_cap(trunc_ln372_4_loc_channel_fifo_cap),
    .if_empty_n(trunc_ln372_4_loc_channel_empty_n),
    .if_read(buffer_write_U0_ap_ready)
);

IFFT_AP_fifo_w64_d2_S out_st_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(vr_ifft_U0_out_st_din),
    .if_full_n(out_st_full_n),
    .if_write(vr_ifft_U0_out_st_write),
    .if_dout(out_st_dout),
    .if_num_data_valid(out_st_num_data_valid),
    .if_fifo_cap(out_st_fifo_cap),
    .if_empty_n(out_st_empty_n),
    .if_read(buffer_write_U0_out_st_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_entry6_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_entry6_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_entry6_proc_U0_ap_ready <= ap_sync_Block_entry6_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_trunc_ln372_1_loc_channel <= 1'b0;
    end else begin
        if (((Block_entry6_proc_U0_ap_done & Block_entry6_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_trunc_ln372_1_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_trunc_ln372_1_loc_channel <= ap_sync_channel_write_trunc_ln372_1_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_trunc_ln372_2_loc_channel <= 1'b0;
    end else begin
        if (((Block_entry6_proc_U0_ap_done & Block_entry6_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_trunc_ln372_2_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_trunc_ln372_2_loc_channel <= ap_sync_channel_write_trunc_ln372_2_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_trunc_ln372_3_loc_channel <= 1'b0;
    end else begin
        if (((Block_entry6_proc_U0_ap_done & Block_entry6_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_trunc_ln372_3_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_trunc_ln372_3_loc_channel <= ap_sync_channel_write_trunc_ln372_3_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_trunc_ln372_4_loc_channel <= 1'b0;
    end else begin
        if (((Block_entry6_proc_U0_ap_done & Block_entry6_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_trunc_ln372_4_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_trunc_ln372_4_loc_channel <= ap_sync_channel_write_trunc_ln372_4_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_trunc_ln372_loc_channel <= 1'b0;
    end else begin
        if (((Block_entry6_proc_U0_ap_done & Block_entry6_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_trunc_ln372_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_trunc_ln372_loc_channel <= ap_sync_channel_write_trunc_ln372_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_entry_proc21_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc21_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc21_U0_ap_ready <= ap_sync_entry_proc21_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_vr_ifft_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_vr_ifft_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_vr_ifft_U0_ap_ready <= ap_sync_vr_ifft_U0_ap_ready;
        end
    end
end

assign Block_entry6_proc_U0_ap_continue = (ap_sync_channel_write_trunc_ln372_loc_channel & ap_sync_channel_write_trunc_ln372_4_loc_channel & ap_sync_channel_write_trunc_ln372_3_loc_channel & ap_sync_channel_write_trunc_ln372_2_loc_channel & ap_sync_channel_write_trunc_ln372_1_loc_channel);

assign Block_entry6_proc_U0_ap_start = ((ap_sync_reg_Block_entry6_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign ap_channel_done_trunc_ln372_1_loc_channel = ((ap_sync_reg_channel_write_trunc_ln372_1_loc_channel ^ 1'b1) & Block_entry6_proc_U0_ap_done);

assign ap_channel_done_trunc_ln372_2_loc_channel = ((ap_sync_reg_channel_write_trunc_ln372_2_loc_channel ^ 1'b1) & Block_entry6_proc_U0_ap_done);

assign ap_channel_done_trunc_ln372_3_loc_channel = ((ap_sync_reg_channel_write_trunc_ln372_3_loc_channel ^ 1'b1) & Block_entry6_proc_U0_ap_done);

assign ap_channel_done_trunc_ln372_4_loc_channel = ((ap_sync_reg_channel_write_trunc_ln372_4_loc_channel ^ 1'b1) & Block_entry6_proc_U0_ap_done);

assign ap_channel_done_trunc_ln372_loc_channel = ((ap_sync_reg_channel_write_trunc_ln372_loc_channel ^ 1'b1) & Block_entry6_proc_U0_ap_done);

assign ap_done = buffer_write_U0_ap_done;

assign ap_idle = (vr_ifft_U0_ap_idle & (trunc_ln372_4_loc_channel_empty_n ^ 1'b1) & (trunc_ln372_3_loc_channel_empty_n ^ 1'b1) & (trunc_ln372_2_loc_channel_empty_n ^ 1'b1) & (trunc_ln372_1_loc_channel_empty_n ^ 1'b1) & (trunc_ln372_loc_channel_empty_n ^ 1'b1) & entry_proc21_U0_ap_idle & buffer_write_U0_ap_idle & Block_entry6_proc_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_Block_entry6_proc_U0_ap_ready = (ap_sync_reg_Block_entry6_proc_U0_ap_ready | Block_entry6_proc_U0_ap_ready);

assign ap_sync_channel_write_trunc_ln372_1_loc_channel = ((trunc_ln372_1_loc_channel_full_n & ap_channel_done_trunc_ln372_1_loc_channel) | ap_sync_reg_channel_write_trunc_ln372_1_loc_channel);

assign ap_sync_channel_write_trunc_ln372_2_loc_channel = ((trunc_ln372_2_loc_channel_full_n & ap_channel_done_trunc_ln372_2_loc_channel) | ap_sync_reg_channel_write_trunc_ln372_2_loc_channel);

assign ap_sync_channel_write_trunc_ln372_3_loc_channel = ((trunc_ln372_3_loc_channel_full_n & ap_channel_done_trunc_ln372_3_loc_channel) | ap_sync_reg_channel_write_trunc_ln372_3_loc_channel);

assign ap_sync_channel_write_trunc_ln372_4_loc_channel = ((trunc_ln372_4_loc_channel_full_n & ap_channel_done_trunc_ln372_4_loc_channel) | ap_sync_reg_channel_write_trunc_ln372_4_loc_channel);

assign ap_sync_channel_write_trunc_ln372_loc_channel = ((trunc_ln372_loc_channel_full_n & ap_channel_done_trunc_ln372_loc_channel) | ap_sync_reg_channel_write_trunc_ln372_loc_channel);

assign ap_sync_entry_proc21_U0_ap_ready = (entry_proc21_U0_ap_ready | ap_sync_reg_entry_proc21_U0_ap_ready);

assign ap_sync_ready = (ap_sync_vr_ifft_U0_ap_ready & ap_sync_entry_proc21_U0_ap_ready & ap_sync_Block_entry6_proc_U0_ap_ready);

assign ap_sync_vr_ifft_U0_ap_ready = (vr_ifft_U0_ap_ready | ap_sync_reg_vr_ifft_U0_ap_ready);

assign buffer_write_U0_ap_continue = ap_continue;

assign buffer_write_U0_ap_start = (trunc_ln372_loc_channel_empty_n & trunc_ln372_4_loc_channel_empty_n & trunc_ln372_3_loc_channel_empty_n & trunc_ln372_2_loc_channel_empty_n & trunc_ln372_1_loc_channel_empty_n);

assign entry_proc21_U0_ap_continue = 1'b1;

assign entry_proc21_U0_ap_start = ((ap_sync_reg_entry_proc21_U0_ap_ready ^ 1'b1) & ap_start);

assign gmem_BID = 1'd0;

assign gmem_BRESP = 2'd0;

assign gmem_BUSER = 1'd0;

assign gmem_RID = 1'd0;

assign gmem_RLAST = 1'b0;

assign gmem_RRESP = 2'd0;

assign gmem_RUSER = 1'd0;

assign vr_ifft_U0_ap_continue = 1'b1;

assign vr_ifft_U0_ap_start = ((ap_sync_reg_vr_ifft_U0_ap_ready ^ 1'b1) & ap_start);

endmodule //IFFT_AP
