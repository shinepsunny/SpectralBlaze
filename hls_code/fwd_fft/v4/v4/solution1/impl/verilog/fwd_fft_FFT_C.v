// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_FFT_C (
        c_row_op_trans_st_dout,
        c_row_op_trans_st_empty_n,
        c_row_op_trans_st_read,
        c_fft_col_op_st_din,
        c_fft_col_op_st_full_n,
        c_fft_col_op_st_write,
        ctrl1_reg_dout,
        ctrl1_reg_empty_n,
        ctrl1_reg_read,
        ctrl2_reg_dout,
        ctrl2_reg_empty_n,
        ctrl2_reg_read,
        layer1_reg_dout,
        layer1_reg_empty_n,
        layer1_reg_read,
        ctrl1_reg_c_din,
        ctrl1_reg_c_full_n,
        ctrl1_reg_c_write,
        ctrl2_reg_c_din,
        ctrl2_reg_c_full_n,
        ctrl2_reg_c_write,
        layer1_reg_c_din,
        layer1_reg_c_full_n,
        layer1_reg_c_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] c_row_op_trans_st_dout;
input   c_row_op_trans_st_empty_n;
output   c_row_op_trans_st_read;
output  [31:0] c_fft_col_op_st_din;
input   c_fft_col_op_st_full_n;
output   c_fft_col_op_st_write;
input  [31:0] ctrl1_reg_dout;
input   ctrl1_reg_empty_n;
output   ctrl1_reg_read;
input  [31:0] ctrl2_reg_dout;
input   ctrl2_reg_empty_n;
output   ctrl2_reg_read;
input  [31:0] layer1_reg_dout;
input   layer1_reg_empty_n;
output   layer1_reg_read;
output  [31:0] ctrl1_reg_c_din;
input   ctrl1_reg_c_full_n;
output   ctrl1_reg_c_write;
output  [31:0] ctrl2_reg_c_din;
input   ctrl2_reg_c_full_n;
output   ctrl2_reg_c_write;
output  [31:0] layer1_reg_c_din;
input   layer1_reg_c_full_n;
output   layer1_reg_c_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    FFT_C_Block_split11_proc_U0_ap_start;
wire    FFT_C_Block_split11_proc_U0_ap_done;
wire    FFT_C_Block_split11_proc_U0_ap_continue;
wire    FFT_C_Block_split11_proc_U0_ap_idle;
wire    FFT_C_Block_split11_proc_U0_ap_ready;
wire    FFT_C_Block_split11_proc_U0_ctrl2_reg_read;
wire    FFT_C_Block_split11_proc_U0_layer1_reg_read;
wire   [31:0] FFT_C_Block_split11_proc_U0_ctrl2_reg_c_din;
wire    FFT_C_Block_split11_proc_U0_ctrl2_reg_c_write;
wire   [31:0] FFT_C_Block_split11_proc_U0_layer1_reg_c_din;
wire    FFT_C_Block_split11_proc_U0_layer1_reg_c_write;
wire   [23:0] FFT_C_Block_split11_proc_U0_ap_return_0;
wire   [15:0] FFT_C_Block_split11_proc_U0_ap_return_1;
wire   [39:0] FFT_C_Block_split11_proc_U0_ap_return_2;
wire    ap_channel_done_rhs_V_4_loc_channel;
wire    rhs_V_4_loc_channel_full_n;
reg    ap_sync_reg_channel_write_rhs_V_4_loc_channel;
wire    ap_sync_channel_write_rhs_V_4_loc_channel;
wire    ap_channel_done_rhs_V_loc_channel;
wire    rhs_V_loc_channel_full_n;
reg    ap_sync_reg_channel_write_rhs_V_loc_channel;
wire    ap_sync_channel_write_rhs_V_loc_channel;
wire    ap_channel_done_rhs_V_3_loc_channel;
wire    rhs_V_3_loc_channel_full_n;
reg    ap_sync_reg_channel_write_rhs_V_3_loc_channel;
wire    ap_sync_channel_write_rhs_V_3_loc_channel;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_start;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_done;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_continue;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_idle;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_ready;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_read;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_row_op_trans_st_read;
wire   [31:0] FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_fft_col_op_st_din;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_fft_col_op_st_write;
wire   [31:0] FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_c_din;
wire    FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_c_write;
wire   [23:0] rhs_V_3_loc_channel_dout;
wire    rhs_V_3_loc_channel_empty_n;
wire   [15:0] rhs_V_loc_channel_dout;
wire    rhs_V_loc_channel_empty_n;
wire   [39:0] rhs_V_4_loc_channel_dout;
wire    rhs_V_4_loc_channel_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_rhs_V_4_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_rhs_V_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_rhs_V_3_loc_channel = 1'b0;
end

fwd_fft_FFT_C_Block_split11_proc FFT_C_Block_split11_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(FFT_C_Block_split11_proc_U0_ap_start),
    .ap_done(FFT_C_Block_split11_proc_U0_ap_done),
    .ap_continue(FFT_C_Block_split11_proc_U0_ap_continue),
    .ap_idle(FFT_C_Block_split11_proc_U0_ap_idle),
    .ap_ready(FFT_C_Block_split11_proc_U0_ap_ready),
    .ctrl2_reg_dout(ctrl2_reg_dout),
    .ctrl2_reg_empty_n(ctrl2_reg_empty_n),
    .ctrl2_reg_read(FFT_C_Block_split11_proc_U0_ctrl2_reg_read),
    .layer1_reg_dout(layer1_reg_dout),
    .layer1_reg_empty_n(layer1_reg_empty_n),
    .layer1_reg_read(FFT_C_Block_split11_proc_U0_layer1_reg_read),
    .ctrl2_reg_c_din(FFT_C_Block_split11_proc_U0_ctrl2_reg_c_din),
    .ctrl2_reg_c_full_n(ctrl2_reg_c_full_n),
    .ctrl2_reg_c_write(FFT_C_Block_split11_proc_U0_ctrl2_reg_c_write),
    .layer1_reg_c_din(FFT_C_Block_split11_proc_U0_layer1_reg_c_din),
    .layer1_reg_c_full_n(layer1_reg_c_full_n),
    .layer1_reg_c_write(FFT_C_Block_split11_proc_U0_layer1_reg_c_write),
    .ap_return_0(FFT_C_Block_split11_proc_U0_ap_return_0),
    .ap_return_1(FFT_C_Block_split11_proc_U0_ap_return_1),
    .ap_return_2(FFT_C_Block_split11_proc_U0_ap_return_2)
);

fwd_fft_FFT_C_Loop_VITIS_LOOP_131_1_proc FFT_C_Loop_VITIS_LOOP_131_1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_start),
    .ap_done(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_done),
    .ap_continue(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_continue),
    .ap_idle(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_idle),
    .ap_ready(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_ready),
    .ctrl1_reg_dout(ctrl1_reg_dout),
    .ctrl1_reg_empty_n(ctrl1_reg_empty_n),
    .ctrl1_reg_read(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_read),
    .p_read(rhs_V_loc_channel_dout),
    .p_read1(rhs_V_3_loc_channel_dout),
    .p_read2(rhs_V_4_loc_channel_dout),
    .c_row_op_trans_st_dout(c_row_op_trans_st_dout),
    .c_row_op_trans_st_empty_n(c_row_op_trans_st_empty_n),
    .c_row_op_trans_st_read(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_row_op_trans_st_read),
    .c_fft_col_op_st_din(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_fft_col_op_st_din),
    .c_fft_col_op_st_full_n(c_fft_col_op_st_full_n),
    .c_fft_col_op_st_write(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_fft_col_op_st_write),
    .ctrl1_reg_c_din(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_c_din),
    .ctrl1_reg_c_full_n(ctrl1_reg_c_full_n),
    .ctrl1_reg_c_write(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_c_write)
);

fwd_fft_fifo_w24_d2_S_x rhs_V_3_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(FFT_C_Block_split11_proc_U0_ap_return_0),
    .if_full_n(rhs_V_3_loc_channel_full_n),
    .if_write(ap_channel_done_rhs_V_3_loc_channel),
    .if_dout(rhs_V_3_loc_channel_dout),
    .if_empty_n(rhs_V_3_loc_channel_empty_n),
    .if_read(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_ready)
);

fwd_fft_fifo_w16_d2_S_x rhs_V_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(FFT_C_Block_split11_proc_U0_ap_return_1),
    .if_full_n(rhs_V_loc_channel_full_n),
    .if_write(ap_channel_done_rhs_V_loc_channel),
    .if_dout(rhs_V_loc_channel_dout),
    .if_empty_n(rhs_V_loc_channel_empty_n),
    .if_read(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_ready)
);

fwd_fft_fifo_w40_d2_S_x rhs_V_4_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(FFT_C_Block_split11_proc_U0_ap_return_2),
    .if_full_n(rhs_V_4_loc_channel_full_n),
    .if_write(ap_channel_done_rhs_V_4_loc_channel),
    .if_dout(rhs_V_4_loc_channel_dout),
    .if_empty_n(rhs_V_4_loc_channel_empty_n),
    .if_read(FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_rhs_V_3_loc_channel <= 1'b0;
    end else begin
        if (((FFT_C_Block_split11_proc_U0_ap_done & FFT_C_Block_split11_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_rhs_V_3_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_rhs_V_3_loc_channel <= ap_sync_channel_write_rhs_V_3_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_rhs_V_4_loc_channel <= 1'b0;
    end else begin
        if (((FFT_C_Block_split11_proc_U0_ap_done & FFT_C_Block_split11_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_rhs_V_4_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_rhs_V_4_loc_channel <= ap_sync_channel_write_rhs_V_4_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_rhs_V_loc_channel <= 1'b0;
    end else begin
        if (((FFT_C_Block_split11_proc_U0_ap_done & FFT_C_Block_split11_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_rhs_V_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_rhs_V_loc_channel <= ap_sync_channel_write_rhs_V_loc_channel;
        end
    end
end

assign FFT_C_Block_split11_proc_U0_ap_continue = (ap_sync_channel_write_rhs_V_loc_channel & ap_sync_channel_write_rhs_V_4_loc_channel & ap_sync_channel_write_rhs_V_3_loc_channel);

assign FFT_C_Block_split11_proc_U0_ap_start = ap_start;

assign FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_continue = ap_continue;

assign FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_start = (rhs_V_loc_channel_empty_n & rhs_V_4_loc_channel_empty_n & rhs_V_3_loc_channel_empty_n);

assign ap_channel_done_rhs_V_3_loc_channel = ((ap_sync_reg_channel_write_rhs_V_3_loc_channel ^ 1'b1) & FFT_C_Block_split11_proc_U0_ap_done);

assign ap_channel_done_rhs_V_4_loc_channel = ((ap_sync_reg_channel_write_rhs_V_4_loc_channel ^ 1'b1) & FFT_C_Block_split11_proc_U0_ap_done);

assign ap_channel_done_rhs_V_loc_channel = ((ap_sync_reg_channel_write_rhs_V_loc_channel ^ 1'b1) & FFT_C_Block_split11_proc_U0_ap_done);

assign ap_done = FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_done;

assign ap_idle = ((rhs_V_4_loc_channel_empty_n ^ 1'b1) & (rhs_V_loc_channel_empty_n ^ 1'b1) & (rhs_V_3_loc_channel_empty_n ^ 1'b1) & FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ap_idle & FFT_C_Block_split11_proc_U0_ap_idle);

assign ap_ready = FFT_C_Block_split11_proc_U0_ap_ready;

assign ap_sync_channel_write_rhs_V_3_loc_channel = ((rhs_V_3_loc_channel_full_n & ap_channel_done_rhs_V_3_loc_channel) | ap_sync_reg_channel_write_rhs_V_3_loc_channel);

assign ap_sync_channel_write_rhs_V_4_loc_channel = ((rhs_V_4_loc_channel_full_n & ap_channel_done_rhs_V_4_loc_channel) | ap_sync_reg_channel_write_rhs_V_4_loc_channel);

assign ap_sync_channel_write_rhs_V_loc_channel = ((rhs_V_loc_channel_full_n & ap_channel_done_rhs_V_loc_channel) | ap_sync_reg_channel_write_rhs_V_loc_channel);

assign c_fft_col_op_st_din = FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_fft_col_op_st_din;

assign c_fft_col_op_st_write = FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_fft_col_op_st_write;

assign c_row_op_trans_st_read = FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_c_row_op_trans_st_read;

assign ctrl1_reg_c_din = FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_c_din;

assign ctrl1_reg_c_write = FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_c_write;

assign ctrl1_reg_read = FFT_C_Loop_VITIS_LOOP_131_1_proc_U0_ctrl1_reg_read;

assign ctrl2_reg_c_din = FFT_C_Block_split11_proc_U0_ctrl2_reg_c_din;

assign ctrl2_reg_c_write = FFT_C_Block_split11_proc_U0_ctrl2_reg_c_write;

assign ctrl2_reg_read = FFT_C_Block_split11_proc_U0_ctrl2_reg_read;

assign layer1_reg_c_din = FFT_C_Block_split11_proc_U0_layer1_reg_c_din;

assign layer1_reg_c_write = FFT_C_Block_split11_proc_U0_layer1_reg_c_write;

assign layer1_reg_read = FFT_C_Block_split11_proc_U0_layer1_reg_read;

endmodule //fwd_fft_FFT_C
