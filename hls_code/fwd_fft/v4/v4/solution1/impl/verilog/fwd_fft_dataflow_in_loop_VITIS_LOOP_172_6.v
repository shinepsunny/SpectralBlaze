// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_dataflow_in_loop_VITIS_LOOP_172_6 (
        p_read,
        c_ifmap_col_op_st_dout,
        c_ifmap_col_op_st_empty_n,
        c_ifmap_col_op_st_read,
        c_fft_row_op_st_din,
        c_fft_row_op_st_full_n,
        c_fft_row_op_st_write,
        pny,
        p_read1,
        y_6,
        Row_Buffer_din,
        Row_Buffer_full_n,
        Row_Buffer_write,
        ap_clk,
        ap_rst,
        p_read_ap_vld,
        ap_start,
        ap_done,
        pny_ap_vld,
        p_read1_ap_vld,
        y_6_ap_vld,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] p_read;
input  [31:0] c_ifmap_col_op_st_dout;
input   c_ifmap_col_op_st_empty_n;
output   c_ifmap_col_op_st_read;
output  [31:0] c_fft_row_op_st_din;
input   c_fft_row_op_st_full_n;
output   c_fft_row_op_st_write;
input  [7:0] pny;
input  [7:0] p_read1;
input  [31:0] y_6;
output  [31:0] Row_Buffer_din;
input   Row_Buffer_full_n;
output   Row_Buffer_write;
input   ap_clk;
input   ap_rst;
input   p_read_ap_vld;
input   ap_start;
output   ap_done;
input   pny_ap_vld;
input   p_read1_ap_vld;
input   y_6_ap_vld;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    VITIS_LOOP_176_7_proc_U0_ap_start;
wire    VITIS_LOOP_176_7_proc_U0_ap_done;
wire    VITIS_LOOP_176_7_proc_U0_ap_continue;
wire    VITIS_LOOP_176_7_proc_U0_ap_idle;
wire    VITIS_LOOP_176_7_proc_U0_ap_ready;
wire    VITIS_LOOP_176_7_proc_U0_c_ifmap_col_op_st_read;
wire   [7:0] VITIS_LOOP_176_7_proc_U0_p_read;
wire    ap_sync_continue;
wire    VITIS_LOOP_184_8_proc_U0_ap_start;
wire    VITIS_LOOP_184_8_proc_U0_ap_done;
wire    VITIS_LOOP_184_8_proc_U0_ap_continue;
wire    VITIS_LOOP_184_8_proc_U0_ap_idle;
wire    VITIS_LOOP_184_8_proc_U0_ap_ready;
wire   [31:0] VITIS_LOOP_184_8_proc_U0_c_fft_row_op_st_din;
wire    VITIS_LOOP_184_8_proc_U0_c_fft_row_op_st_write;
wire   [31:0] VITIS_LOOP_184_8_proc_U0_Row_Buffer_din;
wire    VITIS_LOOP_184_8_proc_U0_Row_Buffer_write;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_VITIS_LOOP_176_7_proc_U0_ap_ready;
wire    ap_sync_VITIS_LOOP_176_7_proc_U0_ap_ready;
reg    ap_sync_reg_VITIS_LOOP_184_8_proc_U0_ap_ready;
wire    ap_sync_VITIS_LOOP_184_8_proc_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_VITIS_LOOP_176_7_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_VITIS_LOOP_184_8_proc_U0_ap_ready = 1'b0;
end

fwd_fft_VITIS_LOOP_176_7_proc VITIS_LOOP_176_7_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(VITIS_LOOP_176_7_proc_U0_ap_start),
    .ap_done(VITIS_LOOP_176_7_proc_U0_ap_done),
    .ap_continue(VITIS_LOOP_176_7_proc_U0_ap_continue),
    .ap_idle(VITIS_LOOP_176_7_proc_U0_ap_idle),
    .ap_ready(VITIS_LOOP_176_7_proc_U0_ap_ready),
    .c_ifmap_col_op_st_dout(c_ifmap_col_op_st_dout),
    .c_ifmap_col_op_st_empty_n(c_ifmap_col_op_st_empty_n),
    .c_ifmap_col_op_st_read(VITIS_LOOP_176_7_proc_U0_c_ifmap_col_op_st_read),
    .p_read(VITIS_LOOP_176_7_proc_U0_p_read)
);

fwd_fft_VITIS_LOOP_184_8_proc VITIS_LOOP_184_8_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(VITIS_LOOP_184_8_proc_U0_ap_start),
    .ap_done(VITIS_LOOP_184_8_proc_U0_ap_done),
    .ap_continue(VITIS_LOOP_184_8_proc_U0_ap_continue),
    .ap_idle(VITIS_LOOP_184_8_proc_U0_ap_idle),
    .ap_ready(VITIS_LOOP_184_8_proc_U0_ap_ready),
    .p_read(p_read),
    .c_fft_row_op_st_din(VITIS_LOOP_184_8_proc_U0_c_fft_row_op_st_din),
    .c_fft_row_op_st_full_n(c_fft_row_op_st_full_n),
    .c_fft_row_op_st_write(VITIS_LOOP_184_8_proc_U0_c_fft_row_op_st_write),
    .pny(pny),
    .p_read1(p_read1),
    .y_6(y_6),
    .Row_Buffer_din(VITIS_LOOP_184_8_proc_U0_Row_Buffer_din),
    .Row_Buffer_full_n(Row_Buffer_full_n),
    .Row_Buffer_write(VITIS_LOOP_184_8_proc_U0_Row_Buffer_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_VITIS_LOOP_176_7_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_VITIS_LOOP_176_7_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_VITIS_LOOP_176_7_proc_U0_ap_ready <= ap_sync_VITIS_LOOP_176_7_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_VITIS_LOOP_184_8_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_VITIS_LOOP_184_8_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_VITIS_LOOP_184_8_proc_U0_ap_ready <= ap_sync_VITIS_LOOP_184_8_proc_U0_ap_ready;
        end
    end
end

assign Row_Buffer_din = VITIS_LOOP_184_8_proc_U0_Row_Buffer_din;

assign Row_Buffer_write = VITIS_LOOP_184_8_proc_U0_Row_Buffer_write;

assign VITIS_LOOP_176_7_proc_U0_ap_continue = ap_sync_continue;

assign VITIS_LOOP_176_7_proc_U0_ap_start = ((ap_sync_reg_VITIS_LOOP_176_7_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign VITIS_LOOP_176_7_proc_U0_p_read = {{p_read[(8 - 32'd1):0]}};

assign VITIS_LOOP_184_8_proc_U0_ap_continue = ap_sync_continue;

assign VITIS_LOOP_184_8_proc_U0_ap_start = ((ap_sync_reg_VITIS_LOOP_184_8_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign ap_done = ap_sync_done;

assign ap_idle = (VITIS_LOOP_184_8_proc_U0_ap_idle & VITIS_LOOP_176_7_proc_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_VITIS_LOOP_176_7_proc_U0_ap_ready = (ap_sync_reg_VITIS_LOOP_176_7_proc_U0_ap_ready | VITIS_LOOP_176_7_proc_U0_ap_ready);

assign ap_sync_VITIS_LOOP_184_8_proc_U0_ap_ready = (ap_sync_reg_VITIS_LOOP_184_8_proc_U0_ap_ready | VITIS_LOOP_184_8_proc_U0_ap_ready);

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_done = (VITIS_LOOP_184_8_proc_U0_ap_done & VITIS_LOOP_176_7_proc_U0_ap_done);

assign ap_sync_ready = (ap_sync_VITIS_LOOP_184_8_proc_U0_ap_ready & ap_sync_VITIS_LOOP_176_7_proc_U0_ap_ready);

assign c_fft_row_op_st_din = VITIS_LOOP_184_8_proc_U0_c_fft_row_op_st_din;

assign c_fft_row_op_st_write = VITIS_LOOP_184_8_proc_U0_c_fft_row_op_st_write;

assign c_ifmap_col_op_st_read = VITIS_LOOP_176_7_proc_U0_c_ifmap_col_op_st_read;

endmodule //fwd_fft_dataflow_in_loop_VITIS_LOOP_172_6