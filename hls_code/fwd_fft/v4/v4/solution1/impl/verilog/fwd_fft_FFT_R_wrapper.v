// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_FFT_R_wrapper (
        c_ifmap_col_op_st_dout,
        c_ifmap_col_op_st_empty_n,
        c_ifmap_col_op_st_read,
        c_fft_row_op_st_din,
        c_fft_row_op_st_full_n,
        c_fft_row_op_st_write,
        ctrl1_reg_dout,
        ctrl1_reg_empty_n,
        ctrl1_reg_read,
        ctrl1_reg_c19_din,
        ctrl1_reg_c19_full_n,
        ctrl1_reg_c19_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] c_ifmap_col_op_st_dout;
input   c_ifmap_col_op_st_empty_n;
output   c_ifmap_col_op_st_read;
output  [31:0] c_fft_row_op_st_din;
input   c_fft_row_op_st_full_n;
output   c_fft_row_op_st_write;
input  [31:0] ctrl1_reg_dout;
input   ctrl1_reg_empty_n;
output   ctrl1_reg_read;
output  [31:0] ctrl1_reg_c19_din;
input   ctrl1_reg_c19_full_n;
output   ctrl1_reg_c19_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    entry_proc35_U0_ap_start;
wire    entry_proc35_U0_ap_done;
wire    entry_proc35_U0_ap_continue;
wire    entry_proc35_U0_ap_idle;
wire    entry_proc35_U0_ap_ready;
wire    entry_proc35_U0_ctrl1_reg_read;
wire   [31:0] entry_proc35_U0_ctrl1_reg_c19_din;
wire    entry_proc35_U0_ctrl1_reg_c19_write;
wire   [31:0] entry_proc35_U0_ap_return;
wire    ctrl1_reg_tmp_channel_full_n;
wire    FFT_R_U0_c_ifmap_col_op_st_read;
wire   [31:0] FFT_R_U0_c_fft_row_op_st_din;
wire    FFT_R_U0_c_fft_row_op_st_write;
wire    FFT_R_U0_ap_start;
wire    FFT_R_U0_ap_done;
wire    FFT_R_U0_ap_ready;
wire    FFT_R_U0_ap_idle;
wire    FFT_R_U0_ap_continue;
wire   [31:0] ctrl1_reg_tmp_channel_dout;
wire    ctrl1_reg_tmp_channel_empty_n;

fwd_fft_entry_proc35 entry_proc35_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(entry_proc35_U0_ap_start),
    .ap_done(entry_proc35_U0_ap_done),
    .ap_continue(entry_proc35_U0_ap_continue),
    .ap_idle(entry_proc35_U0_ap_idle),
    .ap_ready(entry_proc35_U0_ap_ready),
    .ctrl1_reg_dout(ctrl1_reg_dout),
    .ctrl1_reg_empty_n(ctrl1_reg_empty_n),
    .ctrl1_reg_read(entry_proc35_U0_ctrl1_reg_read),
    .ctrl1_reg_c19_din(entry_proc35_U0_ctrl1_reg_c19_din),
    .ctrl1_reg_c19_full_n(ctrl1_reg_c19_full_n),
    .ctrl1_reg_c19_write(entry_proc35_U0_ctrl1_reg_c19_write),
    .ap_return(entry_proc35_U0_ap_return)
);

fwd_fft_FFT_R FFT_R_U0(
    .c_ifmap_col_op_st_dout(c_ifmap_col_op_st_dout),
    .c_ifmap_col_op_st_empty_n(c_ifmap_col_op_st_empty_n),
    .c_ifmap_col_op_st_read(FFT_R_U0_c_ifmap_col_op_st_read),
    .c_fft_row_op_st_din(FFT_R_U0_c_fft_row_op_st_din),
    .c_fft_row_op_st_full_n(c_fft_row_op_st_full_n),
    .c_fft_row_op_st_write(FFT_R_U0_c_fft_row_op_st_write),
    .p_read(ctrl1_reg_tmp_channel_dout),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .p_read_ap_vld(1'b0),
    .ap_start(FFT_R_U0_ap_start),
    .ap_done(FFT_R_U0_ap_done),
    .ap_ready(FFT_R_U0_ap_ready),
    .ap_idle(FFT_R_U0_ap_idle),
    .ap_continue(FFT_R_U0_ap_continue)
);

fwd_fft_fifo_w32_d2_S_x ctrl1_reg_tmp_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc35_U0_ap_return),
    .if_full_n(ctrl1_reg_tmp_channel_full_n),
    .if_write(entry_proc35_U0_ap_done),
    .if_dout(ctrl1_reg_tmp_channel_dout),
    .if_empty_n(ctrl1_reg_tmp_channel_empty_n),
    .if_read(FFT_R_U0_ap_ready)
);

assign FFT_R_U0_ap_continue = ap_continue;

assign FFT_R_U0_ap_start = ctrl1_reg_tmp_channel_empty_n;

assign ap_done = FFT_R_U0_ap_done;

assign ap_idle = ((ctrl1_reg_tmp_channel_empty_n ^ 1'b1) & entry_proc35_U0_ap_idle & FFT_R_U0_ap_idle);

assign ap_ready = entry_proc35_U0_ap_ready;

assign c_fft_row_op_st_din = FFT_R_U0_c_fft_row_op_st_din;

assign c_fft_row_op_st_write = FFT_R_U0_c_fft_row_op_st_write;

assign c_ifmap_col_op_st_read = FFT_R_U0_c_ifmap_col_op_st_read;

assign ctrl1_reg_c19_din = entry_proc35_U0_ctrl1_reg_c19_din;

assign ctrl1_reg_c19_write = entry_proc35_U0_ctrl1_reg_c19_write;

assign ctrl1_reg_read = entry_proc35_U0_ctrl1_reg_read;

assign entry_proc35_U0_ap_continue = ctrl1_reg_tmp_channel_full_n;

assign entry_proc35_U0_ap_start = ap_start;

endmodule //fwd_fft_FFT_R_wrapper