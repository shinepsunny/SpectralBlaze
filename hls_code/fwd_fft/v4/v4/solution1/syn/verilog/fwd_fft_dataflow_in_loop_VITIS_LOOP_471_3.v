// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3 (
        ap_clk,
        ap_rst,
        c_fft_col_op_st_dout,
        c_fft_col_op_st_empty_n,
        c_fft_col_op_st_read,
        p_read,
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
        m_axi_gmem_BUSER,
        fft_out,
        fft_out_ap_vld,
        ap_start,
        p_read_ap_vld,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_clk;
input   ap_rst;
input  [31:0] c_fft_col_op_st_dout;
input   c_fft_col_op_st_empty_n;
output   c_fft_col_op_st_read;
input  [7:0] p_read;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [63:0] m_axi_gmem_AWADDR;
output  [0:0] m_axi_gmem_AWID;
output  [31:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [0:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [127:0] m_axi_gmem_WDATA;
output  [15:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [0:0] m_axi_gmem_WID;
output  [0:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [63:0] m_axi_gmem_ARADDR;
output  [0:0] m_axi_gmem_ARID;
output  [31:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [0:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [127:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [0:0] m_axi_gmem_RID;
input  [0:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [0:0] m_axi_gmem_BID;
input  [0:0] m_axi_gmem_BUSER;
input  [63:0] fft_out;
input   fft_out_ap_vld;
input   ap_start;
input   p_read_ap_vld;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire   [31:0] ifmap_CF_M_real_i_q0;
wire   [31:0] ifmap_CF_M_real_i_q1;
wire   [3:0] ifmap_CF_M_real_t_we0;
wire   [31:0] ifmap_CF_M_real_t_q0;
wire   [31:0] ifmap_CF_M_real_t_q1;
wire   [31:0] ifmap_CF_M_imag_i_q0;
wire   [31:0] ifmap_CF_M_imag_i_q1;
wire   [3:0] ifmap_CF_M_imag_t_we0;
wire   [31:0] ifmap_CF_M_imag_t_q0;
wire   [31:0] ifmap_CF_M_imag_t_q1;
wire    entry_proc_U0_ap_start;
wire    entry_proc_U0_ap_done;
wire    entry_proc_U0_ap_continue;
wire    entry_proc_U0_ap_idle;
wire    entry_proc_U0_ap_ready;
wire   [63:0] entry_proc_U0_ap_return;
wire    fft_out_c_channel_full_n;
wire    ifmap_gen_y_U0_ap_start;
wire    ifmap_gen_y_U0_ap_done;
wire    ifmap_gen_y_U0_ap_continue;
wire    ifmap_gen_y_U0_ap_idle;
wire    ifmap_gen_y_U0_ap_ready;
wire    ifmap_gen_y_U0_c_fft_col_op_st_read;
wire   [10:0] ifmap_gen_y_U0_ifmap_CF_M_real_address0;
wire    ifmap_gen_y_U0_ifmap_CF_M_real_ce0;
wire   [3:0] ifmap_gen_y_U0_ifmap_CF_M_real_we0;
wire   [31:0] ifmap_gen_y_U0_ifmap_CF_M_real_d0;
wire   [10:0] ifmap_gen_y_U0_ifmap_CF_M_imag_address0;
wire    ifmap_gen_y_U0_ifmap_CF_M_imag_ce0;
wire   [3:0] ifmap_gen_y_U0_ifmap_CF_M_imag_we0;
wire   [31:0] ifmap_gen_y_U0_ifmap_CF_M_imag_d0;
wire   [7:0] ifmap_gen_y_U0_ap_return;
wire    ap_channel_done_ctrl1_reg_c_channel1;
wire    ctrl1_reg_c_channel1_full_n;
reg    ap_sync_reg_channel_write_ctrl1_reg_c_channel1;
wire    ap_sync_channel_write_ctrl1_reg_c_channel1;
wire    ap_channel_done_ifmap_CF_M_imag;
wire    ifmap_gen_y_U0_ifmap_CF_M_imag_full_n;
reg    ap_sync_reg_channel_write_ifmap_CF_M_imag;
wire    ap_sync_channel_write_ifmap_CF_M_imag;
wire    ap_channel_done_ifmap_CF_M_real;
wire    ifmap_gen_y_U0_ifmap_CF_M_real_full_n;
reg    ap_sync_reg_channel_write_ifmap_CF_M_real;
wire    ap_sync_channel_write_ifmap_CF_M_real;
wire    ifmap_vec_write_U0_ap_start;
wire    ifmap_vec_write_U0_ap_done;
wire    ifmap_vec_write_U0_ap_continue;
wire    ifmap_vec_write_U0_ap_idle;
wire    ifmap_vec_write_U0_ap_ready;
wire   [10:0] ifmap_vec_write_U0_ifmap_CF_M_real_address0;
wire    ifmap_vec_write_U0_ifmap_CF_M_real_ce0;
wire   [10:0] ifmap_vec_write_U0_ifmap_CF_M_real_address1;
wire    ifmap_vec_write_U0_ifmap_CF_M_real_ce1;
wire   [10:0] ifmap_vec_write_U0_ifmap_CF_M_imag_address0;
wire    ifmap_vec_write_U0_ifmap_CF_M_imag_ce0;
wire   [10:0] ifmap_vec_write_U0_ifmap_CF_M_imag_address1;
wire    ifmap_vec_write_U0_ifmap_CF_M_imag_ce1;
wire    ifmap_vec_write_U0_m_axi_gmem_AWVALID;
wire   [63:0] ifmap_vec_write_U0_m_axi_gmem_AWADDR;
wire   [0:0] ifmap_vec_write_U0_m_axi_gmem_AWID;
wire   [31:0] ifmap_vec_write_U0_m_axi_gmem_AWLEN;
wire   [2:0] ifmap_vec_write_U0_m_axi_gmem_AWSIZE;
wire   [1:0] ifmap_vec_write_U0_m_axi_gmem_AWBURST;
wire   [1:0] ifmap_vec_write_U0_m_axi_gmem_AWLOCK;
wire   [3:0] ifmap_vec_write_U0_m_axi_gmem_AWCACHE;
wire   [2:0] ifmap_vec_write_U0_m_axi_gmem_AWPROT;
wire   [3:0] ifmap_vec_write_U0_m_axi_gmem_AWQOS;
wire   [3:0] ifmap_vec_write_U0_m_axi_gmem_AWREGION;
wire   [0:0] ifmap_vec_write_U0_m_axi_gmem_AWUSER;
wire    ifmap_vec_write_U0_m_axi_gmem_WVALID;
wire   [127:0] ifmap_vec_write_U0_m_axi_gmem_WDATA;
wire   [15:0] ifmap_vec_write_U0_m_axi_gmem_WSTRB;
wire    ifmap_vec_write_U0_m_axi_gmem_WLAST;
wire   [0:0] ifmap_vec_write_U0_m_axi_gmem_WID;
wire   [0:0] ifmap_vec_write_U0_m_axi_gmem_WUSER;
wire    ifmap_vec_write_U0_m_axi_gmem_ARVALID;
wire   [63:0] ifmap_vec_write_U0_m_axi_gmem_ARADDR;
wire   [0:0] ifmap_vec_write_U0_m_axi_gmem_ARID;
wire   [31:0] ifmap_vec_write_U0_m_axi_gmem_ARLEN;
wire   [2:0] ifmap_vec_write_U0_m_axi_gmem_ARSIZE;
wire   [1:0] ifmap_vec_write_U0_m_axi_gmem_ARBURST;
wire   [1:0] ifmap_vec_write_U0_m_axi_gmem_ARLOCK;
wire   [3:0] ifmap_vec_write_U0_m_axi_gmem_ARCACHE;
wire   [2:0] ifmap_vec_write_U0_m_axi_gmem_ARPROT;
wire   [3:0] ifmap_vec_write_U0_m_axi_gmem_ARQOS;
wire   [3:0] ifmap_vec_write_U0_m_axi_gmem_ARREGION;
wire   [0:0] ifmap_vec_write_U0_m_axi_gmem_ARUSER;
wire    ifmap_vec_write_U0_m_axi_gmem_RREADY;
wire    ifmap_vec_write_U0_m_axi_gmem_BREADY;
wire    ifmap_CF_M_real_i_full_n;
wire    ifmap_CF_M_real_t_empty_n;
wire    ifmap_CF_M_imag_i_full_n;
wire    ifmap_CF_M_imag_t_empty_n;
wire   [63:0] fft_out_c_channel_dout;
wire    fft_out_c_channel_empty_n;
wire   [7:0] ctrl1_reg_c_channel1_dout;
wire    ctrl1_reg_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc_U0_ap_ready;
wire    ap_sync_entry_proc_U0_ap_ready;
reg    ap_sync_reg_ifmap_gen_y_U0_ap_ready;
wire    ap_sync_ifmap_gen_y_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_ctrl1_reg_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_ifmap_CF_M_imag = 1'b0;
#0 ap_sync_reg_channel_write_ifmap_CF_M_real = 1'b0;
#0 ap_sync_reg_entry_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_ifmap_gen_y_U0_ap_ready = 1'b0;
end

fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3_ifmap_CF_M_real #(
    .DataWidth( 32 ),
    .AddressRange( 2048 ),
    .AddressWidth( 11 ))
ifmap_CF_M_real_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(ifmap_gen_y_U0_ifmap_CF_M_real_address0),
    .i_ce0(ifmap_gen_y_U0_ifmap_CF_M_real_ce0),
    .i_we0(ifmap_gen_y_U0_ifmap_CF_M_real_we0),
    .i_d0(ifmap_gen_y_U0_ifmap_CF_M_real_d0),
    .i_q0(ifmap_CF_M_real_i_q0),
    .i_address1(11'd0),
    .i_ce1(1'b0),
    .i_q1(ifmap_CF_M_real_i_q1),
    .t_address0(ifmap_vec_write_U0_ifmap_CF_M_real_address0),
    .t_ce0(ifmap_vec_write_U0_ifmap_CF_M_real_ce0),
    .t_we0(ifmap_CF_M_real_t_we0),
    .t_d0(32'd0),
    .t_q0(ifmap_CF_M_real_t_q0),
    .t_address1(ifmap_vec_write_U0_ifmap_CF_M_real_address1),
    .t_ce1(ifmap_vec_write_U0_ifmap_CF_M_real_ce1),
    .t_q1(ifmap_CF_M_real_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(ifmap_CF_M_real_i_full_n),
    .i_write(ap_channel_done_ifmap_CF_M_real),
    .t_empty_n(ifmap_CF_M_real_t_empty_n),
    .t_read(ifmap_vec_write_U0_ap_ready)
);

fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3_ifmap_CF_M_real #(
    .DataWidth( 32 ),
    .AddressRange( 2048 ),
    .AddressWidth( 11 ))
ifmap_CF_M_imag_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(ifmap_gen_y_U0_ifmap_CF_M_imag_address0),
    .i_ce0(ifmap_gen_y_U0_ifmap_CF_M_imag_ce0),
    .i_we0(ifmap_gen_y_U0_ifmap_CF_M_imag_we0),
    .i_d0(ifmap_gen_y_U0_ifmap_CF_M_imag_d0),
    .i_q0(ifmap_CF_M_imag_i_q0),
    .i_address1(11'd0),
    .i_ce1(1'b0),
    .i_q1(ifmap_CF_M_imag_i_q1),
    .t_address0(ifmap_vec_write_U0_ifmap_CF_M_imag_address0),
    .t_ce0(ifmap_vec_write_U0_ifmap_CF_M_imag_ce0),
    .t_we0(ifmap_CF_M_imag_t_we0),
    .t_d0(32'd0),
    .t_q0(ifmap_CF_M_imag_t_q0),
    .t_address1(ifmap_vec_write_U0_ifmap_CF_M_imag_address1),
    .t_ce1(ifmap_vec_write_U0_ifmap_CF_M_imag_ce1),
    .t_q1(ifmap_CF_M_imag_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(ifmap_CF_M_imag_i_full_n),
    .i_write(ap_channel_done_ifmap_CF_M_imag),
    .t_empty_n(ifmap_CF_M_imag_t_empty_n),
    .t_read(ifmap_vec_write_U0_ap_ready)
);

fwd_fft_entry_proc entry_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(entry_proc_U0_ap_start),
    .ap_done(entry_proc_U0_ap_done),
    .ap_continue(entry_proc_U0_ap_continue),
    .ap_idle(entry_proc_U0_ap_idle),
    .ap_ready(entry_proc_U0_ap_ready),
    .fft_out(fft_out),
    .ap_return(entry_proc_U0_ap_return)
);

fwd_fft_ifmap_gen_y ifmap_gen_y_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ifmap_gen_y_U0_ap_start),
    .ap_done(ifmap_gen_y_U0_ap_done),
    .ap_continue(ifmap_gen_y_U0_ap_continue),
    .ap_idle(ifmap_gen_y_U0_ap_idle),
    .ap_ready(ifmap_gen_y_U0_ap_ready),
    .c_fft_col_op_st_dout(c_fft_col_op_st_dout),
    .c_fft_col_op_st_empty_n(c_fft_col_op_st_empty_n),
    .c_fft_col_op_st_read(ifmap_gen_y_U0_c_fft_col_op_st_read),
    .ifmap_CF_M_real_address0(ifmap_gen_y_U0_ifmap_CF_M_real_address0),
    .ifmap_CF_M_real_ce0(ifmap_gen_y_U0_ifmap_CF_M_real_ce0),
    .ifmap_CF_M_real_we0(ifmap_gen_y_U0_ifmap_CF_M_real_we0),
    .ifmap_CF_M_real_d0(ifmap_gen_y_U0_ifmap_CF_M_real_d0),
    .ifmap_CF_M_imag_address0(ifmap_gen_y_U0_ifmap_CF_M_imag_address0),
    .ifmap_CF_M_imag_ce0(ifmap_gen_y_U0_ifmap_CF_M_imag_ce0),
    .ifmap_CF_M_imag_we0(ifmap_gen_y_U0_ifmap_CF_M_imag_we0),
    .ifmap_CF_M_imag_d0(ifmap_gen_y_U0_ifmap_CF_M_imag_d0),
    .p_read(p_read),
    .ap_return(ifmap_gen_y_U0_ap_return)
);

fwd_fft_ifmap_vec_write ifmap_vec_write_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ifmap_vec_write_U0_ap_start),
    .ap_done(ifmap_vec_write_U0_ap_done),
    .ap_continue(ifmap_vec_write_U0_ap_continue),
    .ap_idle(ifmap_vec_write_U0_ap_idle),
    .ap_ready(ifmap_vec_write_U0_ap_ready),
    .ifmap_CF_M_real_address0(ifmap_vec_write_U0_ifmap_CF_M_real_address0),
    .ifmap_CF_M_real_ce0(ifmap_vec_write_U0_ifmap_CF_M_real_ce0),
    .ifmap_CF_M_real_q0(ifmap_CF_M_real_t_q0),
    .ifmap_CF_M_real_address1(ifmap_vec_write_U0_ifmap_CF_M_real_address1),
    .ifmap_CF_M_real_ce1(ifmap_vec_write_U0_ifmap_CF_M_real_ce1),
    .ifmap_CF_M_real_q1(ifmap_CF_M_real_t_q1),
    .ifmap_CF_M_imag_address0(ifmap_vec_write_U0_ifmap_CF_M_imag_address0),
    .ifmap_CF_M_imag_ce0(ifmap_vec_write_U0_ifmap_CF_M_imag_ce0),
    .ifmap_CF_M_imag_q0(ifmap_CF_M_imag_t_q0),
    .ifmap_CF_M_imag_address1(ifmap_vec_write_U0_ifmap_CF_M_imag_address1),
    .ifmap_CF_M_imag_ce1(ifmap_vec_write_U0_ifmap_CF_M_imag_ce1),
    .ifmap_CF_M_imag_q1(ifmap_CF_M_imag_t_q1),
    .m_axi_gmem_AWVALID(ifmap_vec_write_U0_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
    .m_axi_gmem_AWADDR(ifmap_vec_write_U0_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(ifmap_vec_write_U0_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(ifmap_vec_write_U0_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(ifmap_vec_write_U0_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(ifmap_vec_write_U0_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(ifmap_vec_write_U0_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(ifmap_vec_write_U0_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(ifmap_vec_write_U0_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(ifmap_vec_write_U0_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(ifmap_vec_write_U0_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(ifmap_vec_write_U0_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(ifmap_vec_write_U0_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(m_axi_gmem_WREADY),
    .m_axi_gmem_WDATA(ifmap_vec_write_U0_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(ifmap_vec_write_U0_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(ifmap_vec_write_U0_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(ifmap_vec_write_U0_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(ifmap_vec_write_U0_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(ifmap_vec_write_U0_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(1'b0),
    .m_axi_gmem_ARADDR(ifmap_vec_write_U0_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(ifmap_vec_write_U0_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(ifmap_vec_write_U0_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(ifmap_vec_write_U0_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(ifmap_vec_write_U0_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(ifmap_vec_write_U0_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(ifmap_vec_write_U0_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(ifmap_vec_write_U0_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(ifmap_vec_write_U0_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(ifmap_vec_write_U0_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(ifmap_vec_write_U0_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(1'b0),
    .m_axi_gmem_RREADY(ifmap_vec_write_U0_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(128'd0),
    .m_axi_gmem_RLAST(1'b0),
    .m_axi_gmem_RID(1'd0),
    .m_axi_gmem_RUSER(1'd0),
    .m_axi_gmem_RRESP(2'd0),
    .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
    .m_axi_gmem_BREADY(ifmap_vec_write_U0_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(m_axi_gmem_BRESP),
    .m_axi_gmem_BID(m_axi_gmem_BID),
    .m_axi_gmem_BUSER(m_axi_gmem_BUSER),
    .p_read(fft_out_c_channel_dout),
    .p_read1(ctrl1_reg_c_channel1_dout)
);

fwd_fft_fifo_w64_d2_S fft_out_c_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_ap_return),
    .if_full_n(fft_out_c_channel_full_n),
    .if_write(entry_proc_U0_ap_done),
    .if_dout(fft_out_c_channel_dout),
    .if_empty_n(fft_out_c_channel_empty_n),
    .if_read(ifmap_vec_write_U0_ap_ready)
);

fwd_fft_fifo_w8_d2_S_x1 ctrl1_reg_c_channel1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(ifmap_gen_y_U0_ap_return),
    .if_full_n(ctrl1_reg_c_channel1_full_n),
    .if_write(ap_channel_done_ctrl1_reg_c_channel1),
    .if_dout(ctrl1_reg_c_channel1_dout),
    .if_empty_n(ctrl1_reg_c_channel1_empty_n),
    .if_read(ifmap_vec_write_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ctrl1_reg_c_channel1 <= 1'b0;
    end else begin
        if (((ifmap_gen_y_U0_ap_done & ifmap_gen_y_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ctrl1_reg_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ctrl1_reg_c_channel1 <= ap_sync_channel_write_ctrl1_reg_c_channel1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ifmap_CF_M_imag <= 1'b0;
    end else begin
        if (((ifmap_gen_y_U0_ap_done & ifmap_gen_y_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ifmap_CF_M_imag <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ifmap_CF_M_imag <= ap_sync_channel_write_ifmap_CF_M_imag;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ifmap_CF_M_real <= 1'b0;
    end else begin
        if (((ifmap_gen_y_U0_ap_done & ifmap_gen_y_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ifmap_CF_M_real <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ifmap_CF_M_real <= ap_sync_channel_write_ifmap_CF_M_real;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc_U0_ap_ready <= ap_sync_entry_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_ifmap_gen_y_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_ifmap_gen_y_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_ifmap_gen_y_U0_ap_ready <= ap_sync_ifmap_gen_y_U0_ap_ready;
        end
    end
end

assign ap_channel_done_ctrl1_reg_c_channel1 = (ifmap_gen_y_U0_ap_done & (ap_sync_reg_channel_write_ctrl1_reg_c_channel1 ^ 1'b1));

assign ap_channel_done_ifmap_CF_M_imag = (ifmap_gen_y_U0_ap_done & (ap_sync_reg_channel_write_ifmap_CF_M_imag ^ 1'b1));

assign ap_channel_done_ifmap_CF_M_real = (ifmap_gen_y_U0_ap_done & (ap_sync_reg_channel_write_ifmap_CF_M_real ^ 1'b1));

assign ap_done = ifmap_vec_write_U0_ap_done;

assign ap_idle = (ifmap_vec_write_U0_ap_idle & ifmap_gen_y_U0_ap_idle & (ctrl1_reg_c_channel1_empty_n ^ 1'b1) & (fft_out_c_channel_empty_n ^ 1'b1) & (ifmap_CF_M_imag_t_empty_n ^ 1'b1) & (ifmap_CF_M_real_t_empty_n ^ 1'b1) & entry_proc_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_channel_write_ctrl1_reg_c_channel1 = ((ctrl1_reg_c_channel1_full_n & ap_channel_done_ctrl1_reg_c_channel1) | ap_sync_reg_channel_write_ctrl1_reg_c_channel1);

assign ap_sync_channel_write_ifmap_CF_M_imag = ((ifmap_gen_y_U0_ifmap_CF_M_imag_full_n & ap_channel_done_ifmap_CF_M_imag) | ap_sync_reg_channel_write_ifmap_CF_M_imag);

assign ap_sync_channel_write_ifmap_CF_M_real = ((ifmap_gen_y_U0_ifmap_CF_M_real_full_n & ap_channel_done_ifmap_CF_M_real) | ap_sync_reg_channel_write_ifmap_CF_M_real);

assign ap_sync_entry_proc_U0_ap_ready = (entry_proc_U0_ap_ready | ap_sync_reg_entry_proc_U0_ap_ready);

assign ap_sync_ifmap_gen_y_U0_ap_ready = (ifmap_gen_y_U0_ap_ready | ap_sync_reg_ifmap_gen_y_U0_ap_ready);

assign ap_sync_ready = (ap_sync_ifmap_gen_y_U0_ap_ready & ap_sync_entry_proc_U0_ap_ready);

assign c_fft_col_op_st_read = ifmap_gen_y_U0_c_fft_col_op_st_read;

assign entry_proc_U0_ap_continue = fft_out_c_channel_full_n;

assign entry_proc_U0_ap_start = ((ap_sync_reg_entry_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign ifmap_CF_M_imag_t_we0 = 1'b0;

assign ifmap_CF_M_real_t_we0 = 1'b0;

assign ifmap_gen_y_U0_ap_continue = (ap_sync_channel_write_ifmap_CF_M_real & ap_sync_channel_write_ifmap_CF_M_imag & ap_sync_channel_write_ctrl1_reg_c_channel1);

assign ifmap_gen_y_U0_ap_start = ((ap_sync_reg_ifmap_gen_y_U0_ap_ready ^ 1'b1) & ap_start);

assign ifmap_gen_y_U0_ifmap_CF_M_imag_full_n = ifmap_CF_M_imag_i_full_n;

assign ifmap_gen_y_U0_ifmap_CF_M_real_full_n = ifmap_CF_M_real_i_full_n;

assign ifmap_vec_write_U0_ap_continue = ap_continue;

assign ifmap_vec_write_U0_ap_start = (ifmap_CF_M_real_t_empty_n & ifmap_CF_M_imag_t_empty_n & fft_out_c_channel_empty_n & ctrl1_reg_c_channel1_empty_n);

assign m_axi_gmem_ARADDR = 64'd0;

assign m_axi_gmem_ARBURST = 2'd0;

assign m_axi_gmem_ARCACHE = 4'd0;

assign m_axi_gmem_ARID = 1'd0;

assign m_axi_gmem_ARLEN = 32'd0;

assign m_axi_gmem_ARLOCK = 2'd0;

assign m_axi_gmem_ARPROT = 3'd0;

assign m_axi_gmem_ARQOS = 4'd0;

assign m_axi_gmem_ARREGION = 4'd0;

assign m_axi_gmem_ARSIZE = 3'd0;

assign m_axi_gmem_ARUSER = 1'd0;

assign m_axi_gmem_ARVALID = 1'b0;

assign m_axi_gmem_AWADDR = ifmap_vec_write_U0_m_axi_gmem_AWADDR;

assign m_axi_gmem_AWBURST = ifmap_vec_write_U0_m_axi_gmem_AWBURST;

assign m_axi_gmem_AWCACHE = ifmap_vec_write_U0_m_axi_gmem_AWCACHE;

assign m_axi_gmem_AWID = ifmap_vec_write_U0_m_axi_gmem_AWID;

assign m_axi_gmem_AWLEN = ifmap_vec_write_U0_m_axi_gmem_AWLEN;

assign m_axi_gmem_AWLOCK = ifmap_vec_write_U0_m_axi_gmem_AWLOCK;

assign m_axi_gmem_AWPROT = ifmap_vec_write_U0_m_axi_gmem_AWPROT;

assign m_axi_gmem_AWQOS = ifmap_vec_write_U0_m_axi_gmem_AWQOS;

assign m_axi_gmem_AWREGION = ifmap_vec_write_U0_m_axi_gmem_AWREGION;

assign m_axi_gmem_AWSIZE = ifmap_vec_write_U0_m_axi_gmem_AWSIZE;

assign m_axi_gmem_AWUSER = ifmap_vec_write_U0_m_axi_gmem_AWUSER;

assign m_axi_gmem_AWVALID = ifmap_vec_write_U0_m_axi_gmem_AWVALID;

assign m_axi_gmem_BREADY = ifmap_vec_write_U0_m_axi_gmem_BREADY;

assign m_axi_gmem_RREADY = 1'b0;

assign m_axi_gmem_WDATA = ifmap_vec_write_U0_m_axi_gmem_WDATA;

assign m_axi_gmem_WID = ifmap_vec_write_U0_m_axi_gmem_WID;

assign m_axi_gmem_WLAST = ifmap_vec_write_U0_m_axi_gmem_WLAST;

assign m_axi_gmem_WSTRB = ifmap_vec_write_U0_m_axi_gmem_WSTRB;

assign m_axi_gmem_WUSER = ifmap_vec_write_U0_m_axi_gmem_WUSER;

assign m_axi_gmem_WVALID = ifmap_vec_write_U0_m_axi_gmem_WVALID;

endmodule //fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3