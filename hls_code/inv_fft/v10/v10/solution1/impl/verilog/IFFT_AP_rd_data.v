// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module IFFT_AP_rd_data (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
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
        m_axi_gmem_RFIFONUM,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        in_r,
        in_st_din,
        in_st_num_data_valid,
        in_st_fifo_cap,
        in_st_full_n,
        in_st_write,
        ctrl1_regp,
        pn,
        ctrl1_regp_c8_din,
        ctrl1_regp_c8_num_data_valid,
        ctrl1_regp_c8_fifo_cap,
        ctrl1_regp_c8_full_n,
        ctrl1_regp_c8_write
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
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
input  [8:0] m_axi_gmem_RFIFONUM;
input  [0:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [0:0] m_axi_gmem_BID;
input  [0:0] m_axi_gmem_BUSER;
input  [63:0] in_r;
output  [127:0] in_st_din;
input  [1:0] in_st_num_data_valid;
input  [1:0] in_st_fifo_cap;
input   in_st_full_n;
output   in_st_write;
input  [31:0] ctrl1_regp;
input  [31:0] pn;
output  [31:0] ctrl1_regp_c8_din;
input  [1:0] ctrl1_regp_c8_num_data_valid;
input  [1:0] ctrl1_regp_c8_fifo_cap;
input   ctrl1_regp_c8_full_n;
output   ctrl1_regp_c8_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_gmem_ARVALID;
reg[63:0] m_axi_gmem_ARADDR;
reg[0:0] m_axi_gmem_ARID;
reg[31:0] m_axi_gmem_ARLEN;
reg[2:0] m_axi_gmem_ARSIZE;
reg[1:0] m_axi_gmem_ARBURST;
reg[1:0] m_axi_gmem_ARLOCK;
reg[3:0] m_axi_gmem_ARCACHE;
reg[2:0] m_axi_gmem_ARPROT;
reg[3:0] m_axi_gmem_ARQOS;
reg[3:0] m_axi_gmem_ARREGION;
reg[0:0] m_axi_gmem_ARUSER;
reg m_axi_gmem_RREADY;
reg in_st_write;
reg ctrl1_regp_c8_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [31:0] rd_ptr;
reg    gmem_blk_n_AR;
wire    ap_CS_fsm_state4;
reg    ctrl1_regp_c8_blk_n;
wire   [0:0] icmp_ln155_fu_141_p2;
wire   [31:0] select_ln155_fu_151_p3;
reg   [31:0] select_ln155_reg_297;
wire   [7:0] empty_fu_159_p1;
reg   [7:0] empty_reg_303;
wire   [31:0] conv_i_i_fu_163_p1;
reg   [31:0] conv_i_i_reg_308;
wire   [0:0] icmp_ln1027_fu_171_p2;
reg   [0:0] icmp_ln1027_reg_313;
wire  signed [8:0] add_ln157_fu_177_p2;
reg  signed [8:0] add_ln157_reg_317;
wire   [30:0] add_ln160_fu_201_p2;
reg   [30:0] add_ln160_reg_322;
wire    ap_CS_fsm_state2;
wire   [31:0] zext_ln157_1_fu_210_p1;
reg   [31:0] zext_ln157_1_reg_333;
reg   [59:0] trunc_ln_reg_340;
wire   [31:0] grp_fu_239_p2;
reg   [31:0] mul_ln157_reg_356;
wire    ap_CS_fsm_state3;
wire   [37:0] grp_fu_250_p2;
reg   [37:0] mul_ln157_2_reg_361;
wire   [31:0] grp_fu_256_p2;
reg   [31:0] mul_ln157_1_reg_366;
wire   [31:0] add_ln157_3_fu_276_p2;
reg   [31:0] add_ln157_3_reg_376;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_done;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_idle;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_ready;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWVALID;
wire   [63:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWADDR;
wire   [0:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWID;
wire   [31:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWLEN;
wire   [2:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWSIZE;
wire   [1:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWBURST;
wire   [1:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWLOCK;
wire   [3:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWCACHE;
wire   [2:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWPROT;
wire   [3:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWQOS;
wire   [3:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWREGION;
wire   [0:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWUSER;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WVALID;
wire   [127:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WDATA;
wire   [15:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WSTRB;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WLAST;
wire   [0:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WID;
wire   [0:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WUSER;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARVALID;
wire   [63:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARADDR;
wire   [0:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARID;
wire   [31:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARLEN;
wire   [2:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARSIZE;
wire   [1:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARBURST;
wire   [1:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARLOCK;
wire   [3:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARCACHE;
wire   [2:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARPROT;
wire   [3:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARQOS;
wire   [3:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARREGION;
wire   [0:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARUSER;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_RREADY;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_BREADY;
wire   [127:0] grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_in_st_din;
wire    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_in_st_write;
reg   [0:0] ap_phi_mux_rd_ptr_flag_1_phi_fu_113_p4;
reg   [0:0] rd_ptr_flag_1_reg_110;
wire    ap_CS_fsm_state12;
reg    ap_block_state12_on_subcall_done;
reg    ap_block_state1;
reg   [31:0] ap_phi_mux_rd_ptr_new_1_phi_fu_124_p4;
reg   [31:0] rd_ptr_new_1_reg_120;
reg    grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [11:0] ap_NS_fsm;
wire    ap_NS_fsm_state11;
wire    ap_CS_fsm_state11;
wire  signed [63:0] sext_ln157_1_fu_262_p1;
wire   [8:0] zext_ln1027_fu_167_p1;
wire   [6:0] trunc_ln157_1_fu_183_p4;
wire  signed [29:0] sext_ln157_3_fu_193_p1;
wire   [30:0] zext_ln157_fu_197_p1;
wire   [35:0] shl_ln_fu_213_p3;
wire  signed [63:0] sext_ln157_2_fu_220_p1;
wire   [63:0] add_ln157_1_fu_224_p2;
wire   [30:0] grp_fu_239_p0;
wire   [7:0] grp_fu_239_p1;
wire   [7:0] grp_fu_250_p0;
wire   [30:0] grp_fu_250_p1;
wire   [30:0] grp_fu_256_p0;
wire   [31:0] add_ln157_2_fu_272_p2;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire   [37:0] grp_fu_250_p00;
wire   [37:0] grp_fu_250_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 12'd1;
#0 rd_ptr = 32'd0;
#0 grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start_reg = 1'b0;
end

IFFT_AP_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2 grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start),
    .ap_done(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_done),
    .ap_idle(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_idle),
    .ap_ready(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_ready),
    .m_axi_gmem_AWVALID(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(1'b0),
    .m_axi_gmem_AWADDR(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(1'b0),
    .m_axi_gmem_WDATA(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
    .m_axi_gmem_ARADDR(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
    .m_axi_gmem_RREADY(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(m_axi_gmem_RDATA),
    .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
    .m_axi_gmem_RID(m_axi_gmem_RID),
    .m_axi_gmem_RFIFONUM(m_axi_gmem_RFIFONUM),
    .m_axi_gmem_RUSER(m_axi_gmem_RUSER),
    .m_axi_gmem_RRESP(m_axi_gmem_RRESP),
    .m_axi_gmem_BVALID(1'b0),
    .m_axi_gmem_BREADY(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(2'd0),
    .m_axi_gmem_BID(1'd0),
    .m_axi_gmem_BUSER(1'd0),
    .in_st_din(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_in_st_din),
    .in_st_num_data_valid(2'd0),
    .in_st_fifo_cap(2'd0),
    .in_st_full_n(in_st_full_n),
    .in_st_write(grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_in_st_write),
    .sext_ln157_1(trunc_ln_reg_340),
    .mul_ln157_2(mul_ln157_2_reg_361)
);

IFFT_AP_mul_31ns_8ns_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 31 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 32 ))
mul_31ns_8ns_32_2_1_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_239_p0),
    .din1(grp_fu_239_p1),
    .ce(1'b1),
    .dout(grp_fu_239_p2)
);

IFFT_AP_mul_8ns_31ns_38_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 31 ),
    .dout_WIDTH( 38 ))
mul_8ns_31ns_38_2_1_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_250_p0),
    .din1(grp_fu_250_p1),
    .ce(1'b1),
    .dout(grp_fu_250_p2)
);

IFFT_AP_mul_31ns_9s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 31 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 32 ))
mul_31ns_9s_32_2_1_U18(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_256_p0),
    .din1(add_ln157_reg_317),
    .ce(1'b1),
    .dout(grp_fu_256_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state11) & (1'b1 == ap_CS_fsm_state10))) begin
            grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start_reg <= 1'b1;
        end else if ((grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_ready == 1'b1)) begin
            grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ctrl1_regp_c8_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln1027_fu_171_p2 == 1'd1))) begin
        rd_ptr_flag_1_reg_110 <= icmp_ln155_fu_141_p2;
    end else if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0))) begin
        rd_ptr_flag_1_reg_110 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ctrl1_regp_c8_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln1027_fu_171_p2 == 1'd1))) begin
        rd_ptr_new_1_reg_120 <= 32'd0;
    end else if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0))) begin
        rd_ptr_new_1_reg_120 <= add_ln157_3_reg_376;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln157_3_reg_376 <= add_ln157_3_fu_276_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln1027_fu_171_p2 == 1'd0))) begin
        add_ln157_reg_317 <= add_ln157_fu_177_p2;
        add_ln160_reg_322 <= add_ln160_fu_201_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        conv_i_i_reg_308[7 : 0] <= conv_i_i_fu_163_p1[7 : 0];
        empty_reg_303 <= empty_fu_159_p1;
        icmp_ln1027_reg_313 <= icmp_ln1027_fu_171_p2;
        select_ln155_reg_297 <= select_ln155_fu_151_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln157_1_reg_366 <= grp_fu_256_p2;
        mul_ln157_2_reg_361 <= grp_fu_250_p2;
        mul_ln157_reg_356 <= grp_fu_239_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state12_on_subcall_done) & (ap_phi_mux_rd_ptr_flag_1_phi_fu_113_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        rd_ptr <= ap_phi_mux_rd_ptr_new_1_phi_fu_124_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln_reg_340 <= {{add_ln157_1_fu_224_p2[63:4]}};
        zext_ln157_1_reg_333[30 : 0] <= zext_ln157_1_fu_210_p1[30 : 0];
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state12_on_subcall_done)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ctrl1_regp_c8_full_n == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((m_axi_gmem_ARREADY == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0))) begin
        ap_phi_mux_rd_ptr_flag_1_phi_fu_113_p4 = 1'd1;
    end else begin
        ap_phi_mux_rd_ptr_flag_1_phi_fu_113_p4 = rd_ptr_flag_1_reg_110;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0))) begin
        ap_phi_mux_rd_ptr_new_1_phi_fu_124_p4 = add_ln157_3_reg_376;
    end else begin
        ap_phi_mux_rd_ptr_new_1_phi_fu_124_p4 = rd_ptr_new_1_reg_120;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_regp_c8_blk_n = ctrl1_regp_c8_full_n;
    end else begin
        ctrl1_regp_c8_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ctrl1_regp_c8_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_regp_c8_write = 1'b1;
    end else begin
        ctrl1_regp_c8_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        gmem_blk_n_AR = m_axi_gmem_ARREADY;
    end else begin
        gmem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0))) begin
        in_st_write = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_in_st_write;
    end else begin
        in_st_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem_ARADDR = sext_ln157_1_fu_262_p1;
    end else if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARADDR = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARADDR;
    end else begin
        m_axi_gmem_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARBURST = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARBURST;
    end else begin
        m_axi_gmem_ARBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARCACHE = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARCACHE;
    end else begin
        m_axi_gmem_ARCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARID = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARID;
    end else begin
        m_axi_gmem_ARID = 1'd0;
    end
end

always @ (*) begin
    if (((m_axi_gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem_ARLEN = mul_ln157_reg_356;
    end else if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARLEN = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARLEN;
    end else begin
        m_axi_gmem_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARLOCK = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARLOCK;
    end else begin
        m_axi_gmem_ARLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARPROT = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARPROT;
    end else begin
        m_axi_gmem_ARPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARQOS = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARQOS;
    end else begin
        m_axi_gmem_ARQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARREGION = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARREGION;
    end else begin
        m_axi_gmem_ARREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARSIZE = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARSIZE;
    end else begin
        m_axi_gmem_ARSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARUSER = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARUSER;
    end else begin
        m_axi_gmem_ARUSER = 1'd0;
    end
end

always @ (*) begin
    if (((m_axi_gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_ARVALID = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_ARVALID;
    end else begin
        m_axi_gmem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln1027_reg_313 == 1'd0)))) begin
        m_axi_gmem_RREADY = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_m_axi_gmem_RREADY;
    end else begin
        m_axi_gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ctrl1_regp_c8_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln1027_fu_171_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ctrl1_regp_c8_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln1027_fu_171_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((m_axi_gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln157_1_fu_224_p2 = ($signed(sext_ln157_2_fu_220_p1) + $signed(in_r));

assign add_ln157_2_fu_272_p2 = (select_ln155_reg_297 + zext_ln157_1_reg_333);

assign add_ln157_3_fu_276_p2 = (add_ln157_2_fu_272_p2 + mul_ln157_1_reg_366);

assign add_ln157_fu_177_p2 = ($signed(zext_ln1027_fu_167_p1) + $signed(9'd511));

assign add_ln160_fu_201_p2 = (zext_ln157_fu_197_p1 + 31'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_NS_fsm_state11 = ap_NS_fsm[32'd10];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ctrl1_regp_c8_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state12_on_subcall_done = ((grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_done == 1'b0) & (icmp_ln1027_reg_313 == 1'd0));
end

assign ap_ready = internal_ap_ready;

assign conv_i_i_fu_163_p1 = empty_fu_159_p1;

assign ctrl1_regp_c8_din = ctrl1_regp;

assign empty_fu_159_p1 = ctrl1_regp[7:0];

assign grp_fu_239_p0 = zext_ln157_1_fu_210_p1;

assign grp_fu_239_p1 = conv_i_i_reg_308;

assign grp_fu_250_p0 = grp_fu_250_p00;

assign grp_fu_250_p00 = empty_reg_303;

assign grp_fu_250_p1 = grp_fu_250_p10;

assign grp_fu_250_p10 = add_ln160_reg_322;

assign grp_fu_256_p0 = zext_ln157_1_fu_210_p1;

assign grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_ap_start_reg;

assign icmp_ln1027_fu_171_p2 = ((empty_fu_159_p1 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln155_fu_141_p2 = ((pn == 32'd0) ? 1'b1 : 1'b0);

assign in_st_din = grp_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2_fu_131_in_st_din;

assign m_axi_gmem_AWADDR = 64'd0;

assign m_axi_gmem_AWBURST = 2'd0;

assign m_axi_gmem_AWCACHE = 4'd0;

assign m_axi_gmem_AWID = 1'd0;

assign m_axi_gmem_AWLEN = 32'd0;

assign m_axi_gmem_AWLOCK = 2'd0;

assign m_axi_gmem_AWPROT = 3'd0;

assign m_axi_gmem_AWQOS = 4'd0;

assign m_axi_gmem_AWREGION = 4'd0;

assign m_axi_gmem_AWSIZE = 3'd0;

assign m_axi_gmem_AWUSER = 1'd0;

assign m_axi_gmem_AWVALID = 1'b0;

assign m_axi_gmem_BREADY = 1'b0;

assign m_axi_gmem_WDATA = 128'd0;

assign m_axi_gmem_WID = 1'd0;

assign m_axi_gmem_WLAST = 1'b0;

assign m_axi_gmem_WSTRB = 16'd0;

assign m_axi_gmem_WUSER = 1'd0;

assign m_axi_gmem_WVALID = 1'b0;

assign select_ln155_fu_151_p3 = ((icmp_ln155_fu_141_p2[0:0] == 1'b1) ? 32'd0 : rd_ptr);

assign sext_ln157_1_fu_262_p1 = $signed(trunc_ln_reg_340);

assign sext_ln157_2_fu_220_p1 = $signed(shl_ln_fu_213_p3);

assign sext_ln157_3_fu_193_p1 = $signed(trunc_ln157_1_fu_183_p4);

assign shl_ln_fu_213_p3 = {{select_ln155_reg_297}, {4'd0}};

assign start_out = real_start;

assign trunc_ln157_1_fu_183_p4 = {{add_ln157_fu_177_p2[8:2]}};

assign zext_ln1027_fu_167_p1 = empty_fu_159_p1;

assign zext_ln157_1_fu_210_p1 = add_ln160_reg_322;

assign zext_ln157_fu_197_p1 = $unsigned(sext_ln157_3_fu_193_p1);

always @ (posedge ap_clk) begin
    conv_i_i_reg_308[31:8] <= 24'b000000000000000000000000;
    zext_ln157_1_reg_333[31] <= 1'b0;
end

endmodule //IFFT_AP_rd_data