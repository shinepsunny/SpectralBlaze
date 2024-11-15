// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_FFT_R (
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
        c_ifmap_col_op_st_dout,
        c_ifmap_col_op_st_empty_n,
        c_ifmap_col_op_st_read,
        c_fft_row_op_st_din,
        c_fft_row_op_st_full_n,
        c_fft_row_op_st_write,
        ctrl1_reg_dout,
        ctrl1_reg_empty_n,
        ctrl1_reg_read,
        ctrl2_reg_dout,
        ctrl2_reg_empty_n,
        ctrl2_reg_read,
        layer1_reg_dout,
        layer1_reg_empty_n,
        layer1_reg_read,
        ctrl1_reg_c19_din,
        ctrl1_reg_c19_full_n,
        ctrl1_reg_c19_write,
        ctrl2_reg_c24_din,
        ctrl2_reg_c24_full_n,
        ctrl2_reg_c24_write,
        layer1_reg_c29_din,
        layer1_reg_c29_full_n,
        layer1_reg_c29_write
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

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
input  [31:0] c_ifmap_col_op_st_dout;
input   c_ifmap_col_op_st_empty_n;
output   c_ifmap_col_op_st_read;
output  [31:0] c_fft_row_op_st_din;
input   c_fft_row_op_st_full_n;
output   c_fft_row_op_st_write;
input  [31:0] ctrl1_reg_dout;
input   ctrl1_reg_empty_n;
output   ctrl1_reg_read;
input  [31:0] ctrl2_reg_dout;
input   ctrl2_reg_empty_n;
output   ctrl2_reg_read;
input  [31:0] layer1_reg_dout;
input   layer1_reg_empty_n;
output   layer1_reg_read;
output  [31:0] ctrl1_reg_c19_din;
input   ctrl1_reg_c19_full_n;
output   ctrl1_reg_c19_write;
output  [31:0] ctrl2_reg_c24_din;
input   ctrl2_reg_c24_full_n;
output   ctrl2_reg_c24_write;
output  [31:0] layer1_reg_c29_din;
input   layer1_reg_c29_full_n;
output   layer1_reg_c29_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg c_ifmap_col_op_st_read;
reg c_fft_row_op_st_write;
reg ctrl1_reg_read;
reg ctrl2_reg_read;
reg layer1_reg_read;
reg ctrl1_reg_c19_write;
reg ctrl2_reg_c24_write;
reg layer1_reg_c29_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    ctrl1_reg_blk_n;
reg    ctrl2_reg_blk_n;
reg    layer1_reg_blk_n;
reg    ctrl1_reg_c19_blk_n;
reg    ctrl2_reg_c24_blk_n;
reg    layer1_reg_c29_blk_n;
reg   [31:0] ctrl1_reg_read_reg_203;
reg   [7:0] trunc_ln_reg_208;
wire   [7:0] rhs_fu_156_p1;
reg   [7:0] rhs_reg_213;
wire   [15:0] trunc_ln225_fu_160_p1;
reg   [15:0] trunc_ln225_reg_219;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state5;
wire  signed [31:0] grp_fu_196_p2;
reg   [31:0] n_reg_244;
wire    ap_CS_fsm_state8;
wire    grp_dataflow_parent_loop_proc11_fu_112_c_ifmap_col_op_st_read;
wire   [31:0] grp_dataflow_parent_loop_proc11_fu_112_c_fft_row_op_st_din;
wire    grp_dataflow_parent_loop_proc11_fu_112_c_fft_row_op_st_write;
wire    grp_dataflow_parent_loop_proc11_fu_112_ap_start;
wire    grp_dataflow_parent_loop_proc11_fu_112_ap_done;
wire    grp_dataflow_parent_loop_proc11_fu_112_ap_ready;
wire    grp_dataflow_parent_loop_proc11_fu_112_ap_idle;
reg    grp_dataflow_parent_loop_proc11_fu_112_ap_continue;
reg    grp_dataflow_parent_loop_proc11_fu_112_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_sync_grp_dataflow_parent_loop_proc11_fu_112_ap_ready;
wire    ap_sync_grp_dataflow_parent_loop_proc11_fu_112_ap_done;
reg    ap_block_state9_on_subcall_done;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_ready;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_done;
reg    ap_block_state1;
wire   [7:0] ret_1_fu_173_p0;
wire   [7:0] ret_1_fu_173_p1;
wire   [15:0] ret_1_fu_173_p2;
wire   [23:0] grp_fu_189_p2;
wire   [15:0] grp_fu_189_p0;
wire   [7:0] grp_fu_189_p1;
wire   [23:0] grp_fu_196_p0;
wire   [15:0] grp_fu_196_p1;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire   [23:0] grp_fu_189_p00;
wire   [23:0] grp_fu_189_p10;
wire   [31:0] grp_fu_196_p00;
wire   [31:0] grp_fu_196_p10;
wire   [15:0] ret_1_fu_173_p00;
wire   [15:0] ret_1_fu_173_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_parent_loop_proc11_fu_112_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_ready = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_done = 1'b0;
end

fwd_fft_dataflow_parent_loop_proc11 grp_dataflow_parent_loop_proc11_fu_112(
    .n(n_reg_244),
    .c_ifmap_col_op_st_dout(c_ifmap_col_op_st_dout),
    .c_ifmap_col_op_st_empty_n(c_ifmap_col_op_st_empty_n),
    .c_ifmap_col_op_st_read(grp_dataflow_parent_loop_proc11_fu_112_c_ifmap_col_op_st_read),
    .p_read(ctrl1_reg_read_reg_203),
    .c_fft_row_op_st_din(grp_dataflow_parent_loop_proc11_fu_112_c_fft_row_op_st_din),
    .c_fft_row_op_st_full_n(c_fft_row_op_st_full_n),
    .c_fft_row_op_st_write(grp_dataflow_parent_loop_proc11_fu_112_c_fft_row_op_st_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .p_read_ap_vld(1'b1),
    .ap_start(grp_dataflow_parent_loop_proc11_fu_112_ap_start),
    .ap_done(grp_dataflow_parent_loop_proc11_fu_112_ap_done),
    .ap_ready(grp_dataflow_parent_loop_proc11_fu_112_ap_ready),
    .ap_idle(grp_dataflow_parent_loop_proc11_fu_112_ap_idle),
    .ap_continue(grp_dataflow_parent_loop_proc11_fu_112_ap_continue)
);

fwd_fft_mul_8ns_8ns_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8ns_8ns_16_1_1_U218(
    .din0(ret_1_fu_173_p0),
    .din1(ret_1_fu_173_p1),
    .dout(ret_1_fu_173_p2)
);

fwd_fft_mul_mul_16ns_8ns_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_mul_16ns_8ns_24_4_1_U219(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_189_p0),
    .din1(grp_fu_189_p1),
    .ce(1'b1),
    .dout(grp_fu_189_p2)
);

fwd_fft_mul_mul_24ns_16ns_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
mul_mul_24ns_16ns_32_4_1_U220(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_196_p0),
    .din1(grp_fu_196_p1),
    .ce(1'b1),
    .dout(grp_fu_196_p2)
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_done <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_done <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc11_fu_112_ap_done == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_ready <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_ready <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc11_fu_112_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_parent_loop_proc11_fu_112_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state9) & (ap_sync_grp_dataflow_parent_loop_proc11_fu_112_ap_ready == 1'b0)))) begin
            grp_dataflow_parent_loop_proc11_fu_112_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_parent_loop_proc11_fu_112_ap_ready == 1'b1)) begin
            grp_dataflow_parent_loop_proc11_fu_112_ap_start_reg <= 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state1)) begin
        ctrl1_reg_read_reg_203 <= ctrl1_reg_dout;
        rhs_reg_213 <= rhs_fu_156_p1;
        trunc_ln225_reg_219 <= trunc_ln225_fu_160_p1;
        trunc_ln_reg_208 <= {{ctrl1_reg_dout[31:24]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_reg_244 <= grp_fu_196_p2;
    end
end

always @ (*) begin
    if (((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state9_on_subcall_done)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c_fft_row_op_st_write = grp_dataflow_parent_loop_proc11_fu_112_c_fft_row_op_st_write;
    end else begin
        c_fft_row_op_st_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c_ifmap_col_op_st_read = grp_dataflow_parent_loop_proc11_fu_112_c_ifmap_col_op_st_read;
    end else begin
        c_ifmap_col_op_st_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_blk_n = ctrl1_reg_empty_n;
    end else begin
        ctrl1_reg_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_c19_blk_n = ctrl1_reg_c19_full_n;
    end else begin
        ctrl1_reg_c19_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_c19_write = 1'b1;
    end else begin
        ctrl1_reg_c19_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_read = 1'b1;
    end else begin
        ctrl1_reg_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_blk_n = ctrl2_reg_empty_n;
    end else begin
        ctrl2_reg_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_c24_blk_n = ctrl2_reg_c24_full_n;
    end else begin
        ctrl2_reg_c24_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_c24_write = 1'b1;
    end else begin
        ctrl2_reg_c24_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_read = 1'b1;
    end else begin
        ctrl2_reg_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
        grp_dataflow_parent_loop_proc11_fu_112_ap_continue = 1'b1;
    end else begin
        grp_dataflow_parent_loop_proc11_fu_112_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_blk_n = layer1_reg_empty_n;
    end else begin
        layer1_reg_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_c29_blk_n = layer1_reg_c29_full_n;
    end else begin
        layer1_reg_c29_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_c29_write = 1'b1;
    end else begin
        layer1_reg_c29_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_read = 1'b1;
    end else begin
        layer1_reg_read = 1'b0;
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
            if ((~((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state5;
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
            if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((layer1_reg_c29_full_n == 1'b0) | (ctrl2_reg_c24_full_n == 1'b0) | (ctrl1_reg_c19_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

always @ (*) begin
    ap_block_state9_on_subcall_done = ((ap_sync_grp_dataflow_parent_loop_proc11_fu_112_ap_ready & ap_sync_grp_dataflow_parent_loop_proc11_fu_112_ap_done) == 1'b0);
end

assign ap_ready = internal_ap_ready;

assign ap_sync_grp_dataflow_parent_loop_proc11_fu_112_ap_done = (grp_dataflow_parent_loop_proc11_fu_112_ap_done | ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_done);

assign ap_sync_grp_dataflow_parent_loop_proc11_fu_112_ap_ready = (grp_dataflow_parent_loop_proc11_fu_112_ap_ready | ap_sync_reg_grp_dataflow_parent_loop_proc11_fu_112_ap_ready);

assign c_fft_row_op_st_din = grp_dataflow_parent_loop_proc11_fu_112_c_fft_row_op_st_din;

assign ctrl1_reg_c19_din = ctrl1_reg_dout;

assign ctrl2_reg_c24_din = ctrl2_reg_dout;

assign grp_dataflow_parent_loop_proc11_fu_112_ap_start = grp_dataflow_parent_loop_proc11_fu_112_ap_start_reg;

assign grp_fu_189_p0 = grp_fu_189_p00;

assign grp_fu_189_p00 = ret_1_fu_173_p2;

assign grp_fu_189_p1 = grp_fu_189_p10;

assign grp_fu_189_p10 = rhs_reg_213;

assign grp_fu_196_p0 = grp_fu_196_p00;

assign grp_fu_196_p00 = grp_fu_189_p2;

assign grp_fu_196_p1 = grp_fu_196_p10;

assign grp_fu_196_p10 = trunc_ln225_reg_219;

assign layer1_reg_c29_din = layer1_reg_dout;

assign ret_1_fu_173_p0 = ret_1_fu_173_p00;

assign ret_1_fu_173_p00 = trunc_ln_reg_208;

assign ret_1_fu_173_p1 = ret_1_fu_173_p10;

assign ret_1_fu_173_p10 = rhs_reg_213;

assign rhs_fu_156_p1 = ctrl2_reg_dout[7:0];

assign start_out = real_start;

assign trunc_ln225_fu_160_p1 = layer1_reg_dout[15:0];

endmodule //fwd_fft_FFT_R
