// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module IFFT_AP_buffer_write (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        out_st_dout,
        out_st_num_data_valid,
        out_st_fifo_cap,
        out_st_empty_n,
        out_st_read,
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
        out1_dout,
        out1_num_data_valid,
        out1_fifo_cap,
        out1_empty_n,
        out1_read,
        out2_dout,
        out2_num_data_valid,
        out2_fifo_cap,
        out2_empty_n,
        out2_read,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] out_st_dout;
input  [1:0] out_st_num_data_valid;
input  [1:0] out_st_fifo_cap;
input   out_st_empty_n;
output   out_st_read;
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
input  [63:0] out1_dout;
input  [2:0] out1_num_data_valid;
input  [2:0] out1_fifo_cap;
input   out1_empty_n;
output   out1_read;
input  [63:0] out2_dout;
input  [2:0] out2_num_data_valid;
input  [2:0] out2_fifo_cap;
input   out2_empty_n;
output   out2_read;
input  [7:0] p_read;
input  [7:0] p_read1;
input  [15:0] p_read2;
input  [15:0] p_read3;
input  [7:0] p_read4;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_st_read;
reg m_axi_gmem_AWVALID;
reg m_axi_gmem_WVALID;
reg m_axi_gmem_BREADY;
reg out1_read;
reg out2_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    out1_blk_n;
wire    ap_CS_fsm_state4;
reg    out2_blk_n;
reg   [63:0] out2_read_reg_169;
reg   [63:0] out1_read_reg_174;
wire  signed [23:0] grp_fu_132_p2;
reg   [23:0] mul_i_i_reg_179;
wire    grp_dataflow_parent_loop_proc18_fu_100_out_st_read;
wire    grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWVALID;
wire   [63:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWADDR;
wire   [0:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWID;
wire   [31:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWLEN;
wire   [2:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWSIZE;
wire   [1:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWBURST;
wire   [1:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWLOCK;
wire   [3:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWCACHE;
wire   [2:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWPROT;
wire   [3:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWQOS;
wire   [3:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWREGION;
wire   [0:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWUSER;
wire    grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WVALID;
wire   [127:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WDATA;
wire   [15:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WSTRB;
wire    grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WLAST;
wire   [0:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WID;
wire   [0:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WUSER;
wire    grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARVALID;
wire   [63:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARADDR;
wire   [0:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARID;
wire   [31:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARLEN;
wire   [2:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARSIZE;
wire   [1:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARBURST;
wire   [1:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARLOCK;
wire   [3:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARCACHE;
wire   [2:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARPROT;
wire   [3:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARQOS;
wire   [3:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARREGION;
wire   [0:0] grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARUSER;
wire    grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_RREADY;
wire    grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_BREADY;
wire    grp_dataflow_parent_loop_proc18_fu_100_ap_start;
wire    grp_dataflow_parent_loop_proc18_fu_100_ap_done;
wire    grp_dataflow_parent_loop_proc18_fu_100_ap_ready;
wire    grp_dataflow_parent_loop_proc18_fu_100_ap_idle;
reg    grp_dataflow_parent_loop_proc18_fu_100_ap_continue;
reg    grp_dataflow_parent_loop_proc18_fu_100_ap_start_reg;
reg    ap_block_state4_ignore_call14;
wire    ap_CS_fsm_state5;
wire    ap_sync_grp_dataflow_parent_loop_proc18_fu_100_ap_ready;
wire    ap_sync_grp_dataflow_parent_loop_proc18_fu_100_ap_done;
reg    ap_block_state5_on_subcall_done;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_ready;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_done;
reg    ap_block_state1;
reg    ap_block_state4;
wire   [15:0] grp_fu_132_p0;
wire   [7:0] grp_fu_132_p1;
reg    grp_fu_132_ce;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire   [23:0] grp_fu_132_p00;
wire   [23:0] grp_fu_132_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 grp_dataflow_parent_loop_proc18_fu_100_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_ready = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_done = 1'b0;
end

IFFT_AP_dataflow_parent_loop_proc18 grp_dataflow_parent_loop_proc18_fu_100(
    .mul_i(mul_i_i_reg_179),
    .out_st_dout(out_st_dout),
    .out_st_empty_n(out_st_empty_n),
    .out_st_read(grp_dataflow_parent_loop_proc18_fu_100_out_st_read),
    .ctrl1_reg_ls(p_read),
    .ctrl2_reg_pn(p_read1),
    .actp_reg_pool_size(p_read4),
    .m_axi_gmem_AWVALID(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
    .m_axi_gmem_AWADDR(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(m_axi_gmem_WREADY),
    .m_axi_gmem_WDATA(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(1'b0),
    .m_axi_gmem_ARADDR(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(1'b0),
    .m_axi_gmem_RREADY(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(128'd0),
    .m_axi_gmem_RLAST(1'b0),
    .m_axi_gmem_RID(1'd0),
    .m_axi_gmem_RFIFONUM(9'd0),
    .m_axi_gmem_RUSER(1'd0),
    .m_axi_gmem_RRESP(2'd0),
    .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
    .m_axi_gmem_BREADY(grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(m_axi_gmem_BRESP),
    .m_axi_gmem_BID(m_axi_gmem_BID),
    .m_axi_gmem_BUSER(m_axi_gmem_BUSER),
    .out1(out1_read_reg_174),
    .out2(out2_read_reg_169),
    .layer2_reg_ifs(p_read3),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ctrl1_reg_ls_ap_vld(1'b1),
    .ctrl2_reg_pn_ap_vld(1'b1),
    .actp_reg_pool_size_ap_vld(1'b1),
    .out1_ap_vld(1'b1),
    .out2_ap_vld(1'b1),
    .layer2_reg_ifs_ap_vld(1'b1),
    .ap_start(grp_dataflow_parent_loop_proc18_fu_100_ap_start),
    .ap_done(grp_dataflow_parent_loop_proc18_fu_100_ap_done),
    .ap_ready(grp_dataflow_parent_loop_proc18_fu_100_ap_ready),
    .ap_idle(grp_dataflow_parent_loop_proc18_fu_100_ap_idle),
    .ap_continue(grp_dataflow_parent_loop_proc18_fu_100_ap_continue)
);

IFFT_AP_mul_mul_16ns_8ns_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_mul_16ns_8ns_24_4_1_U435(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_132_p0),
    .din1(grp_fu_132_p1),
    .ce(grp_fu_132_ce),
    .dout(grp_fu_132_p2)
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
        end else if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_done <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc18_fu_100_ap_done == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_ready <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc18_fu_100_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_parent_loop_proc18_fu_100_ap_start_reg <= 1'b0;
    end else begin
        if ((((ap_sync_grp_dataflow_parent_loop_proc18_fu_100_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state5)) | (~((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4)))) begin
            grp_dataflow_parent_loop_proc18_fu_100_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_parent_loop_proc18_fu_100_ap_ready == 1'b1)) begin
            grp_dataflow_parent_loop_proc18_fu_100_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_i_i_reg_179 <= grp_fu_132_p2;
        out1_read_reg_174 <= out1_dout;
        out2_read_reg_169 <= out2_dout;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if (((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0))) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state5_on_subcall_done)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        grp_dataflow_parent_loop_proc18_fu_100_ap_continue = 1'b1;
    end else begin
        grp_dataflow_parent_loop_proc18_fu_100_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & ((ap_done_reg == 1'b1) | (ap_start == 1'b0))) | ((1'b1 == ap_CS_fsm_state4) & ((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0))))) begin
        grp_fu_132_ce = 1'b0;
    end else begin
        grp_fu_132_ce = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem_AWVALID = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWVALID;
    end else begin
        m_axi_gmem_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem_BREADY = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_BREADY;
    end else begin
        m_axi_gmem_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem_WVALID = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WVALID;
    end else begin
        m_axi_gmem_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out1_blk_n = out1_empty_n;
    end else begin
        out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        out1_read = 1'b1;
    end else begin
        out1_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out2_blk_n = out2_empty_n;
    end else begin
        out2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        out2_read = 1'b1;
    end else begin
        out2_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_st_read = grp_dataflow_parent_loop_proc18_fu_100_out_st_read;
    end else begin
        out_st_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if ((~((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state4 = ((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_ignore_call14 = ((out1_empty_n == 1'b0) | (out2_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_on_subcall_done = ((ap_sync_grp_dataflow_parent_loop_proc18_fu_100_ap_ready & ap_sync_grp_dataflow_parent_loop_proc18_fu_100_ap_done) == 1'b0);
end

assign ap_sync_grp_dataflow_parent_loop_proc18_fu_100_ap_done = (grp_dataflow_parent_loop_proc18_fu_100_ap_done | ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_done);

assign ap_sync_grp_dataflow_parent_loop_proc18_fu_100_ap_ready = (grp_dataflow_parent_loop_proc18_fu_100_ap_ready | ap_sync_reg_grp_dataflow_parent_loop_proc18_fu_100_ap_ready);

assign grp_dataflow_parent_loop_proc18_fu_100_ap_start = grp_dataflow_parent_loop_proc18_fu_100_ap_start_reg;

assign grp_fu_132_p0 = grp_fu_132_p00;

assign grp_fu_132_p00 = p_read2;

assign grp_fu_132_p1 = grp_fu_132_p10;

assign grp_fu_132_p10 = p_read1;

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

assign m_axi_gmem_AWADDR = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWADDR;

assign m_axi_gmem_AWBURST = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWBURST;

assign m_axi_gmem_AWCACHE = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWCACHE;

assign m_axi_gmem_AWID = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWID;

assign m_axi_gmem_AWLEN = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWLEN;

assign m_axi_gmem_AWLOCK = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWLOCK;

assign m_axi_gmem_AWPROT = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWPROT;

assign m_axi_gmem_AWQOS = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWQOS;

assign m_axi_gmem_AWREGION = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWREGION;

assign m_axi_gmem_AWSIZE = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWSIZE;

assign m_axi_gmem_AWUSER = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_AWUSER;

assign m_axi_gmem_RREADY = 1'b0;

assign m_axi_gmem_WDATA = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WDATA;

assign m_axi_gmem_WID = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WID;

assign m_axi_gmem_WLAST = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WLAST;

assign m_axi_gmem_WSTRB = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WSTRB;

assign m_axi_gmem_WUSER = grp_dataflow_parent_loop_proc18_fu_100_m_axi_gmem_WUSER;

endmodule //IFFT_AP_buffer_write
