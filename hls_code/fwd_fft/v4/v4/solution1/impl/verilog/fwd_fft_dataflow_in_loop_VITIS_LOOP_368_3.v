// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_dataflow_in_loop_VITIS_LOOP_368_3 (
        ap_clk,
        ap_rst,
        c_fft_row_op_st_dout,
        c_fft_row_op_st_empty_n,
        c_fft_row_op_st_read,
        p_read,
        c_fft_col_op_st_din,
        c_fft_col_op_st_full_n,
        c_fft_col_op_st_write,
        p_read_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_clk;
input   ap_rst;
input  [31:0] c_fft_row_op_st_dout;
input   c_fft_row_op_st_empty_n;
output   c_fft_row_op_st_read;
input  [31:0] p_read;
output  [31:0] c_fft_col_op_st_din;
input   c_fft_col_op_st_full_n;
output   c_fft_col_op_st_write;
input   p_read_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire   [15:0] ifmap_RF_M_real_i_q0;
wire   [15:0] ifmap_RF_M_real_t_q0;
wire   [15:0] ifmap_RF_M_imag_i_q0;
wire   [15:0] ifmap_RF_M_imag_t_q0;
wire    ifmap_gen_x_U0_ap_start;
wire    ifmap_gen_x_U0_ap_done;
wire    ifmap_gen_x_U0_ap_continue;
wire    ifmap_gen_x_U0_ap_idle;
wire    ifmap_gen_x_U0_ap_ready;
wire    ifmap_gen_x_U0_c_fft_row_op_st_read;
wire   [11:0] ifmap_gen_x_U0_ifmap_CF_M_real_address0;
wire    ifmap_gen_x_U0_ifmap_CF_M_real_ce0;
wire    ifmap_gen_x_U0_ifmap_CF_M_real_we0;
wire   [15:0] ifmap_gen_x_U0_ifmap_CF_M_real_d0;
wire   [11:0] ifmap_gen_x_U0_ifmap_CF_M_imag_address0;
wire    ifmap_gen_x_U0_ifmap_CF_M_imag_ce0;
wire    ifmap_gen_x_U0_ifmap_CF_M_imag_we0;
wire   [15:0] ifmap_gen_x_U0_ifmap_CF_M_imag_d0;
wire   [31:0] ifmap_gen_x_U0_ap_return;
wire    ap_channel_done_ctrl1_reg_c_channel1;
wire    ctrl1_reg_c_channel1_full_n;
reg    ap_sync_reg_channel_write_ctrl1_reg_c_channel1;
wire    ap_sync_channel_write_ctrl1_reg_c_channel1;
wire    ap_channel_done_ifmap_RF_M_imag;
wire    ifmap_gen_x_U0_ifmap_CF_M_imag_full_n;
reg    ap_sync_reg_channel_write_ifmap_RF_M_imag;
wire    ap_sync_channel_write_ifmap_RF_M_imag;
wire    ap_channel_done_ifmap_RF_M_real;
wire    ifmap_gen_x_U0_ifmap_CF_M_real_full_n;
reg    ap_sync_reg_channel_write_ifmap_RF_M_real;
wire    ap_sync_channel_write_ifmap_RF_M_real;
wire    compute_fft_write_U0_ap_start;
wire    compute_fft_write_U0_ap_done;
wire    compute_fft_write_U0_ap_continue;
wire    compute_fft_write_U0_ap_idle;
wire    compute_fft_write_U0_ap_ready;
wire   [11:0] compute_fft_write_U0_ifmap_fft_M_real_address0;
wire    compute_fft_write_U0_ifmap_fft_M_real_ce0;
wire   [11:0] compute_fft_write_U0_ifmap_fft_M_imag_address0;
wire    compute_fft_write_U0_ifmap_fft_M_imag_ce0;
wire   [31:0] compute_fft_write_U0_c_fft_col_op_st_din;
wire    compute_fft_write_U0_c_fft_col_op_st_write;
wire    ifmap_RF_M_real_i_full_n;
wire    ifmap_RF_M_real_t_empty_n;
wire    ifmap_RF_M_imag_i_full_n;
wire    ifmap_RF_M_imag_t_empty_n;
wire   [31:0] ctrl1_reg_c_channel1_dout;
wire    ctrl1_reg_c_channel1_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_ctrl1_reg_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_ifmap_RF_M_imag = 1'b0;
#0 ap_sync_reg_channel_write_ifmap_RF_M_real = 1'b0;
end

fwd_fft_dataflow_in_loop_VITIS_LOOP_368_3_ifmap_RF_M_real #(
    .DataWidth( 16 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
ifmap_RF_M_real_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(ifmap_gen_x_U0_ifmap_CF_M_real_address0),
    .i_ce0(ifmap_gen_x_U0_ifmap_CF_M_real_ce0),
    .i_we0(ifmap_gen_x_U0_ifmap_CF_M_real_we0),
    .i_d0(ifmap_gen_x_U0_ifmap_CF_M_real_d0),
    .i_q0(ifmap_RF_M_real_i_q0),
    .t_address0(compute_fft_write_U0_ifmap_fft_M_real_address0),
    .t_ce0(compute_fft_write_U0_ifmap_fft_M_real_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(ifmap_RF_M_real_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(ifmap_RF_M_real_i_full_n),
    .i_write(ap_channel_done_ifmap_RF_M_real),
    .t_empty_n(ifmap_RF_M_real_t_empty_n),
    .t_read(compute_fft_write_U0_ap_ready)
);

fwd_fft_dataflow_in_loop_VITIS_LOOP_368_3_ifmap_RF_M_real #(
    .DataWidth( 16 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
ifmap_RF_M_imag_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(ifmap_gen_x_U0_ifmap_CF_M_imag_address0),
    .i_ce0(ifmap_gen_x_U0_ifmap_CF_M_imag_ce0),
    .i_we0(ifmap_gen_x_U0_ifmap_CF_M_imag_we0),
    .i_d0(ifmap_gen_x_U0_ifmap_CF_M_imag_d0),
    .i_q0(ifmap_RF_M_imag_i_q0),
    .t_address0(compute_fft_write_U0_ifmap_fft_M_imag_address0),
    .t_ce0(compute_fft_write_U0_ifmap_fft_M_imag_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(ifmap_RF_M_imag_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(ifmap_RF_M_imag_i_full_n),
    .i_write(ap_channel_done_ifmap_RF_M_imag),
    .t_empty_n(ifmap_RF_M_imag_t_empty_n),
    .t_read(compute_fft_write_U0_ap_ready)
);

fwd_fft_ifmap_gen_x ifmap_gen_x_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ifmap_gen_x_U0_ap_start),
    .ap_done(ifmap_gen_x_U0_ap_done),
    .ap_continue(ifmap_gen_x_U0_ap_continue),
    .ap_idle(ifmap_gen_x_U0_ap_idle),
    .ap_ready(ifmap_gen_x_U0_ap_ready),
    .c_fft_row_op_st_dout(c_fft_row_op_st_dout),
    .c_fft_row_op_st_empty_n(c_fft_row_op_st_empty_n),
    .c_fft_row_op_st_read(ifmap_gen_x_U0_c_fft_row_op_st_read),
    .ifmap_CF_M_real_address0(ifmap_gen_x_U0_ifmap_CF_M_real_address0),
    .ifmap_CF_M_real_ce0(ifmap_gen_x_U0_ifmap_CF_M_real_ce0),
    .ifmap_CF_M_real_we0(ifmap_gen_x_U0_ifmap_CF_M_real_we0),
    .ifmap_CF_M_real_d0(ifmap_gen_x_U0_ifmap_CF_M_real_d0),
    .ifmap_CF_M_imag_address0(ifmap_gen_x_U0_ifmap_CF_M_imag_address0),
    .ifmap_CF_M_imag_ce0(ifmap_gen_x_U0_ifmap_CF_M_imag_ce0),
    .ifmap_CF_M_imag_we0(ifmap_gen_x_U0_ifmap_CF_M_imag_we0),
    .ifmap_CF_M_imag_d0(ifmap_gen_x_U0_ifmap_CF_M_imag_d0),
    .p_read(p_read),
    .ap_return(ifmap_gen_x_U0_ap_return)
);

fwd_fft_compute_fft_write compute_fft_write_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(compute_fft_write_U0_ap_start),
    .ap_done(compute_fft_write_U0_ap_done),
    .ap_continue(compute_fft_write_U0_ap_continue),
    .ap_idle(compute_fft_write_U0_ap_idle),
    .ap_ready(compute_fft_write_U0_ap_ready),
    .ifmap_fft_M_real_address0(compute_fft_write_U0_ifmap_fft_M_real_address0),
    .ifmap_fft_M_real_ce0(compute_fft_write_U0_ifmap_fft_M_real_ce0),
    .ifmap_fft_M_real_q0(ifmap_RF_M_real_t_q0),
    .ifmap_fft_M_imag_address0(compute_fft_write_U0_ifmap_fft_M_imag_address0),
    .ifmap_fft_M_imag_ce0(compute_fft_write_U0_ifmap_fft_M_imag_ce0),
    .ifmap_fft_M_imag_q0(ifmap_RF_M_imag_t_q0),
    .c_fft_col_op_st_din(compute_fft_write_U0_c_fft_col_op_st_din),
    .c_fft_col_op_st_full_n(c_fft_col_op_st_full_n),
    .c_fft_col_op_st_write(compute_fft_write_U0_c_fft_col_op_st_write),
    .p_read(ctrl1_reg_c_channel1_dout)
);

fwd_fft_fifo_w32_d2_S_x1 ctrl1_reg_c_channel1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(ifmap_gen_x_U0_ap_return),
    .if_full_n(ctrl1_reg_c_channel1_full_n),
    .if_write(ap_channel_done_ctrl1_reg_c_channel1),
    .if_dout(ctrl1_reg_c_channel1_dout),
    .if_empty_n(ctrl1_reg_c_channel1_empty_n),
    .if_read(compute_fft_write_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ctrl1_reg_c_channel1 <= 1'b0;
    end else begin
        if (((ifmap_gen_x_U0_ap_done & ifmap_gen_x_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ctrl1_reg_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ctrl1_reg_c_channel1 <= ap_sync_channel_write_ctrl1_reg_c_channel1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ifmap_RF_M_imag <= 1'b0;
    end else begin
        if (((ifmap_gen_x_U0_ap_done & ifmap_gen_x_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ifmap_RF_M_imag <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ifmap_RF_M_imag <= ap_sync_channel_write_ifmap_RF_M_imag;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ifmap_RF_M_real <= 1'b0;
    end else begin
        if (((ifmap_gen_x_U0_ap_done & ifmap_gen_x_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ifmap_RF_M_real <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ifmap_RF_M_real <= ap_sync_channel_write_ifmap_RF_M_real;
        end
    end
end

assign ap_channel_done_ctrl1_reg_c_channel1 = (ifmap_gen_x_U0_ap_done & (ap_sync_reg_channel_write_ctrl1_reg_c_channel1 ^ 1'b1));

assign ap_channel_done_ifmap_RF_M_imag = (ifmap_gen_x_U0_ap_done & (ap_sync_reg_channel_write_ifmap_RF_M_imag ^ 1'b1));

assign ap_channel_done_ifmap_RF_M_real = (ifmap_gen_x_U0_ap_done & (ap_sync_reg_channel_write_ifmap_RF_M_real ^ 1'b1));

assign ap_done = compute_fft_write_U0_ap_done;

assign ap_idle = (ifmap_gen_x_U0_ap_idle & (ctrl1_reg_c_channel1_empty_n ^ 1'b1) & (ifmap_RF_M_imag_t_empty_n ^ 1'b1) & (ifmap_RF_M_real_t_empty_n ^ 1'b1) & compute_fft_write_U0_ap_idle);

assign ap_ready = ifmap_gen_x_U0_ap_ready;

assign ap_sync_channel_write_ctrl1_reg_c_channel1 = ((ctrl1_reg_c_channel1_full_n & ap_channel_done_ctrl1_reg_c_channel1) | ap_sync_reg_channel_write_ctrl1_reg_c_channel1);

assign ap_sync_channel_write_ifmap_RF_M_imag = ((ifmap_gen_x_U0_ifmap_CF_M_imag_full_n & ap_channel_done_ifmap_RF_M_imag) | ap_sync_reg_channel_write_ifmap_RF_M_imag);

assign ap_sync_channel_write_ifmap_RF_M_real = ((ifmap_gen_x_U0_ifmap_CF_M_real_full_n & ap_channel_done_ifmap_RF_M_real) | ap_sync_reg_channel_write_ifmap_RF_M_real);

assign c_fft_col_op_st_din = compute_fft_write_U0_c_fft_col_op_st_din;

assign c_fft_col_op_st_write = compute_fft_write_U0_c_fft_col_op_st_write;

assign c_fft_row_op_st_read = ifmap_gen_x_U0_c_fft_row_op_st_read;

assign compute_fft_write_U0_ap_continue = ap_continue;

assign compute_fft_write_U0_ap_start = (ifmap_RF_M_real_t_empty_n & ifmap_RF_M_imag_t_empty_n & ctrl1_reg_c_channel1_empty_n);

assign ifmap_gen_x_U0_ap_continue = (ap_sync_channel_write_ifmap_RF_M_real & ap_sync_channel_write_ifmap_RF_M_imag & ap_sync_channel_write_ctrl1_reg_c_channel1);

assign ifmap_gen_x_U0_ap_start = ap_start;

assign ifmap_gen_x_U0_ifmap_CF_M_imag_full_n = ifmap_RF_M_imag_i_full_n;

assign ifmap_gen_x_U0_ifmap_CF_M_real_full_n = ifmap_RF_M_real_i_full_n;

endmodule //fwd_fft_dataflow_in_loop_VITIS_LOOP_368_3