// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module patch_gen_dataflow_in_loop_VITIS_LOOP_226_2 (
        ap_clk,
        ap_rst,
        ctrl1_reg,
        ctrl2_reg,
        pny_2,
        layer2_reg,
        in1_TDATA,
        in1_TKEEP,
        in1_TSTRB,
        in1_TLAST,
        in2_TDATA,
        in2_TKEEP,
        in2_TSTRB,
        in2_TLAST,
        col_ov_pix_out_V_din,
        col_ov_pix_out_V_full_n,
        col_ov_pix_out_V_write,
        ctrl1_reg_ap_vld,
        ctrl2_reg_ap_vld,
        pny_2_ap_vld,
        layer2_reg_ap_vld,
        in1_TVALID,
        in1_TREADY,
        in2_TVALID,
        in2_TREADY,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_clk;
input   ap_rst;
input  [31:0] ctrl1_reg;
input  [31:0] ctrl2_reg;
input  [7:0] pny_2;
input  [31:0] layer2_reg;
input  [15:0] in1_TDATA;
input  [1:0] in1_TKEEP;
input  [1:0] in1_TSTRB;
input  [0:0] in1_TLAST;
input  [15:0] in2_TDATA;
input  [1:0] in2_TKEEP;
input  [1:0] in2_TSTRB;
input  [0:0] in2_TLAST;
output  [31:0] col_ov_pix_out_V_din;
input   col_ov_pix_out_V_full_n;
output   col_ov_pix_out_V_write;
input   ctrl1_reg_ap_vld;
input   ctrl2_reg_ap_vld;
input   pny_2_ap_vld;
input   layer2_reg_ap_vld;
input   in1_TVALID;
output   in1_TREADY;
input   in2_TVALID;
output   in2_TREADY;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire   [15:0] burst_buffer1_i_q0;
wire   [15:0] burst_buffer1_t_q0;
wire   [15:0] burst_buffer2_i_q0;
wire   [15:0] burst_buffer2_t_q0;
wire    VITIS_LOOP_230_3_proc_U0_ap_start;
wire    VITIS_LOOP_230_3_proc_U0_ap_done;
wire    VITIS_LOOP_230_3_proc_U0_ap_continue;
wire    VITIS_LOOP_230_3_proc_U0_ap_idle;
wire    VITIS_LOOP_230_3_proc_U0_ap_ready;
wire   [13:0] VITIS_LOOP_230_3_proc_U0_burst_buffer11_address0;
wire    VITIS_LOOP_230_3_proc_U0_burst_buffer11_ce0;
wire    VITIS_LOOP_230_3_proc_U0_burst_buffer11_we0;
wire   [15:0] VITIS_LOOP_230_3_proc_U0_burst_buffer11_d0;
wire   [13:0] VITIS_LOOP_230_3_proc_U0_burst_buffer22_address0;
wire    VITIS_LOOP_230_3_proc_U0_burst_buffer22_ce0;
wire    VITIS_LOOP_230_3_proc_U0_burst_buffer22_we0;
wire   [15:0] VITIS_LOOP_230_3_proc_U0_burst_buffer22_d0;
wire    VITIS_LOOP_230_3_proc_U0_in1_TREADY;
wire    VITIS_LOOP_230_3_proc_U0_in2_TREADY;
wire   [31:0] VITIS_LOOP_230_3_proc_U0_ap_return_0;
wire   [31:0] VITIS_LOOP_230_3_proc_U0_ap_return_1;
wire    ap_channel_done_ctrl2_reg_c_channel;
wire    ctrl2_reg_c_channel_full_n;
reg    ap_sync_reg_channel_write_ctrl2_reg_c_channel;
wire    ap_sync_channel_write_ctrl2_reg_c_channel;
wire    ap_channel_done_ctrl1_reg_c_channel;
wire    ctrl1_reg_c_channel_full_n;
reg    ap_sync_reg_channel_write_ctrl1_reg_c_channel;
wire    ap_sync_channel_write_ctrl1_reg_c_channel;
wire    ap_channel_done_burst_buffer2;
wire    VITIS_LOOP_230_3_proc_U0_burst_buffer22_full_n;
reg    ap_sync_reg_channel_write_burst_buffer2;
wire    ap_sync_channel_write_burst_buffer2;
wire    ap_channel_done_burst_buffer1;
wire    VITIS_LOOP_230_3_proc_U0_burst_buffer11_full_n;
reg    ap_sync_reg_channel_write_burst_buffer1;
wire    ap_sync_channel_write_burst_buffer1;
wire    VITIS_LOOP_254_6_proc_U0_ap_start;
wire    VITIS_LOOP_254_6_proc_U0_ap_done;
wire    VITIS_LOOP_254_6_proc_U0_ap_continue;
wire    VITIS_LOOP_254_6_proc_U0_ap_idle;
wire    VITIS_LOOP_254_6_proc_U0_ap_ready;
wire   [13:0] VITIS_LOOP_254_6_proc_U0_burst_buffer11_address0;
wire    VITIS_LOOP_254_6_proc_U0_burst_buffer11_ce0;
wire   [13:0] VITIS_LOOP_254_6_proc_U0_burst_buffer22_address0;
wire    VITIS_LOOP_254_6_proc_U0_burst_buffer22_ce0;
wire   [31:0] VITIS_LOOP_254_6_proc_U0_col_ov_pix_out_V_din;
wire    VITIS_LOOP_254_6_proc_U0_col_ov_pix_out_V_write;
wire    burst_buffer1_i_full_n;
wire    burst_buffer1_t_empty_n;
wire    burst_buffer2_i_full_n;
wire    burst_buffer2_t_empty_n;
wire   [31:0] ctrl1_reg_c_channel_dout;
wire    ctrl1_reg_c_channel_empty_n;
wire   [31:0] ctrl2_reg_c_channel_dout;
wire    ctrl2_reg_c_channel_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_ctrl2_reg_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_ctrl1_reg_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_burst_buffer2 = 1'b0;
#0 ap_sync_reg_channel_write_burst_buffer1 = 1'b0;
end

patch_gen_dataflow_in_loop_VITIS_LOOP_226_2_burst_buffer1 #(
    .DataWidth( 16 ),
    .AddressRange( 15872 ),
    .AddressWidth( 14 ))
burst_buffer1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_address0),
    .i_ce0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_ce0),
    .i_we0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_we0),
    .i_d0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_d0),
    .i_q0(burst_buffer1_i_q0),
    .t_address0(VITIS_LOOP_254_6_proc_U0_burst_buffer11_address0),
    .t_ce0(VITIS_LOOP_254_6_proc_U0_burst_buffer11_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(burst_buffer1_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(burst_buffer1_i_full_n),
    .i_write(ap_channel_done_burst_buffer1),
    .t_empty_n(burst_buffer1_t_empty_n),
    .t_read(VITIS_LOOP_254_6_proc_U0_ap_ready)
);

patch_gen_dataflow_in_loop_VITIS_LOOP_226_2_burst_buffer1 #(
    .DataWidth( 16 ),
    .AddressRange( 15872 ),
    .AddressWidth( 14 ))
burst_buffer2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_address0),
    .i_ce0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_ce0),
    .i_we0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_we0),
    .i_d0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_d0),
    .i_q0(burst_buffer2_i_q0),
    .t_address0(VITIS_LOOP_254_6_proc_U0_burst_buffer22_address0),
    .t_ce0(VITIS_LOOP_254_6_proc_U0_burst_buffer22_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(burst_buffer2_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(burst_buffer2_i_full_n),
    .i_write(ap_channel_done_burst_buffer2),
    .t_empty_n(burst_buffer2_t_empty_n),
    .t_read(VITIS_LOOP_254_6_proc_U0_ap_ready)
);

patch_gen_VITIS_LOOP_230_3_proc VITIS_LOOP_230_3_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(VITIS_LOOP_230_3_proc_U0_ap_start),
    .ap_done(VITIS_LOOP_230_3_proc_U0_ap_done),
    .ap_continue(VITIS_LOOP_230_3_proc_U0_ap_continue),
    .ap_idle(VITIS_LOOP_230_3_proc_U0_ap_idle),
    .ap_ready(VITIS_LOOP_230_3_proc_U0_ap_ready),
    .ctrl1_reg(ctrl1_reg),
    .ctrl2_reg(ctrl2_reg),
    .pny_2(pny_2),
    .layer2_reg(layer2_reg),
    .burst_buffer11_address0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_address0),
    .burst_buffer11_ce0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_ce0),
    .burst_buffer11_we0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_we0),
    .burst_buffer11_d0(VITIS_LOOP_230_3_proc_U0_burst_buffer11_d0),
    .burst_buffer22_address0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_address0),
    .burst_buffer22_ce0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_ce0),
    .burst_buffer22_we0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_we0),
    .burst_buffer22_d0(VITIS_LOOP_230_3_proc_U0_burst_buffer22_d0),
    .in1_TDATA(in1_TDATA),
    .in1_TVALID(in1_TVALID),
    .in1_TREADY(VITIS_LOOP_230_3_proc_U0_in1_TREADY),
    .in1_TKEEP(in1_TKEEP),
    .in1_TSTRB(in1_TSTRB),
    .in1_TLAST(in1_TLAST),
    .in2_TDATA(in2_TDATA),
    .in2_TVALID(in2_TVALID),
    .in2_TREADY(VITIS_LOOP_230_3_proc_U0_in2_TREADY),
    .in2_TKEEP(in2_TKEEP),
    .in2_TSTRB(in2_TSTRB),
    .in2_TLAST(in2_TLAST),
    .ap_return_0(VITIS_LOOP_230_3_proc_U0_ap_return_0),
    .ap_return_1(VITIS_LOOP_230_3_proc_U0_ap_return_1)
);

patch_gen_VITIS_LOOP_254_6_proc VITIS_LOOP_254_6_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(VITIS_LOOP_254_6_proc_U0_ap_start),
    .ap_done(VITIS_LOOP_254_6_proc_U0_ap_done),
    .ap_continue(VITIS_LOOP_254_6_proc_U0_ap_continue),
    .ap_idle(VITIS_LOOP_254_6_proc_U0_ap_idle),
    .ap_ready(VITIS_LOOP_254_6_proc_U0_ap_ready),
    .p_read(ctrl2_reg_c_channel_dout),
    .p_read1(ctrl1_reg_c_channel_dout),
    .burst_buffer11_address0(VITIS_LOOP_254_6_proc_U0_burst_buffer11_address0),
    .burst_buffer11_ce0(VITIS_LOOP_254_6_proc_U0_burst_buffer11_ce0),
    .burst_buffer11_q0(burst_buffer1_t_q0),
    .burst_buffer22_address0(VITIS_LOOP_254_6_proc_U0_burst_buffer22_address0),
    .burst_buffer22_ce0(VITIS_LOOP_254_6_proc_U0_burst_buffer22_ce0),
    .burst_buffer22_q0(burst_buffer2_t_q0),
    .col_ov_pix_out_V_din(VITIS_LOOP_254_6_proc_U0_col_ov_pix_out_V_din),
    .col_ov_pix_out_V_full_n(col_ov_pix_out_V_full_n),
    .col_ov_pix_out_V_write(VITIS_LOOP_254_6_proc_U0_col_ov_pix_out_V_write)
);

patch_gen_fifo_w32_d2_S ctrl1_reg_c_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(VITIS_LOOP_230_3_proc_U0_ap_return_0),
    .if_full_n(ctrl1_reg_c_channel_full_n),
    .if_write(ap_channel_done_ctrl1_reg_c_channel),
    .if_dout(ctrl1_reg_c_channel_dout),
    .if_empty_n(ctrl1_reg_c_channel_empty_n),
    .if_read(VITIS_LOOP_254_6_proc_U0_ap_ready)
);

patch_gen_fifo_w32_d2_S ctrl2_reg_c_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(VITIS_LOOP_230_3_proc_U0_ap_return_1),
    .if_full_n(ctrl2_reg_c_channel_full_n),
    .if_write(ap_channel_done_ctrl2_reg_c_channel),
    .if_dout(ctrl2_reg_c_channel_dout),
    .if_empty_n(ctrl2_reg_c_channel_empty_n),
    .if_read(VITIS_LOOP_254_6_proc_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_burst_buffer1 <= 1'b0;
    end else begin
        if (((VITIS_LOOP_230_3_proc_U0_ap_done & VITIS_LOOP_230_3_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_burst_buffer1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_burst_buffer1 <= ap_sync_channel_write_burst_buffer1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_burst_buffer2 <= 1'b0;
    end else begin
        if (((VITIS_LOOP_230_3_proc_U0_ap_done & VITIS_LOOP_230_3_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_burst_buffer2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_burst_buffer2 <= ap_sync_channel_write_burst_buffer2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ctrl1_reg_c_channel <= 1'b0;
    end else begin
        if (((VITIS_LOOP_230_3_proc_U0_ap_done & VITIS_LOOP_230_3_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ctrl1_reg_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ctrl1_reg_c_channel <= ap_sync_channel_write_ctrl1_reg_c_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_ctrl2_reg_c_channel <= 1'b0;
    end else begin
        if (((VITIS_LOOP_230_3_proc_U0_ap_done & VITIS_LOOP_230_3_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_ctrl2_reg_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_ctrl2_reg_c_channel <= ap_sync_channel_write_ctrl2_reg_c_channel;
        end
    end
end

assign VITIS_LOOP_230_3_proc_U0_ap_continue = (ap_sync_channel_write_ctrl2_reg_c_channel & ap_sync_channel_write_ctrl1_reg_c_channel & ap_sync_channel_write_burst_buffer2 & ap_sync_channel_write_burst_buffer1);

assign VITIS_LOOP_230_3_proc_U0_ap_start = ap_start;

assign VITIS_LOOP_230_3_proc_U0_burst_buffer11_full_n = burst_buffer1_i_full_n;

assign VITIS_LOOP_230_3_proc_U0_burst_buffer22_full_n = burst_buffer2_i_full_n;

assign VITIS_LOOP_254_6_proc_U0_ap_continue = ap_continue;

assign VITIS_LOOP_254_6_proc_U0_ap_start = (ctrl2_reg_c_channel_empty_n & ctrl1_reg_c_channel_empty_n & burst_buffer2_t_empty_n & burst_buffer1_t_empty_n);

assign ap_channel_done_burst_buffer1 = ((ap_sync_reg_channel_write_burst_buffer1 ^ 1'b1) & VITIS_LOOP_230_3_proc_U0_ap_done);

assign ap_channel_done_burst_buffer2 = ((ap_sync_reg_channel_write_burst_buffer2 ^ 1'b1) & VITIS_LOOP_230_3_proc_U0_ap_done);

assign ap_channel_done_ctrl1_reg_c_channel = ((ap_sync_reg_channel_write_ctrl1_reg_c_channel ^ 1'b1) & VITIS_LOOP_230_3_proc_U0_ap_done);

assign ap_channel_done_ctrl2_reg_c_channel = ((ap_sync_reg_channel_write_ctrl2_reg_c_channel ^ 1'b1) & VITIS_LOOP_230_3_proc_U0_ap_done);

assign ap_done = VITIS_LOOP_254_6_proc_U0_ap_done;

assign ap_idle = ((ctrl2_reg_c_channel_empty_n ^ 1'b1) & (ctrl1_reg_c_channel_empty_n ^ 1'b1) & (burst_buffer2_t_empty_n ^ 1'b1) & (burst_buffer1_t_empty_n ^ 1'b1) & VITIS_LOOP_254_6_proc_U0_ap_idle & VITIS_LOOP_230_3_proc_U0_ap_idle);

assign ap_ready = VITIS_LOOP_230_3_proc_U0_ap_ready;

assign ap_sync_channel_write_burst_buffer1 = ((ap_channel_done_burst_buffer1 & VITIS_LOOP_230_3_proc_U0_burst_buffer11_full_n) | ap_sync_reg_channel_write_burst_buffer1);

assign ap_sync_channel_write_burst_buffer2 = ((ap_channel_done_burst_buffer2 & VITIS_LOOP_230_3_proc_U0_burst_buffer22_full_n) | ap_sync_reg_channel_write_burst_buffer2);

assign ap_sync_channel_write_ctrl1_reg_c_channel = ((ctrl1_reg_c_channel_full_n & ap_channel_done_ctrl1_reg_c_channel) | ap_sync_reg_channel_write_ctrl1_reg_c_channel);

assign ap_sync_channel_write_ctrl2_reg_c_channel = ((ctrl2_reg_c_channel_full_n & ap_channel_done_ctrl2_reg_c_channel) | ap_sync_reg_channel_write_ctrl2_reg_c_channel);

assign col_ov_pix_out_V_din = VITIS_LOOP_254_6_proc_U0_col_ov_pix_out_V_din;

assign col_ov_pix_out_V_write = VITIS_LOOP_254_6_proc_U0_col_ov_pix_out_V_write;

assign in1_TREADY = VITIS_LOOP_230_3_proc_U0_in1_TREADY;

assign in2_TREADY = VITIS_LOOP_230_3_proc_U0_in2_TREADY;

endmodule //patch_gen_dataflow_in_loop_VITIS_LOOP_226_2