// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FFT_C_dataflow_parent_loop_proc (
        n,
        in_stream_V_dout,
        in_stream_V_empty_n,
        in_stream_V_read,
        ctrl1_reg,
        out_stream_V_din,
        out_stream_V_full_n,
        out_stream_V_write,
        ap_clk,
        ap_rst,
        ctrl1_reg_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] n;
input  [31:0] in_stream_V_dout;
input   in_stream_V_empty_n;
output   in_stream_V_read;
input  [31:0] ctrl1_reg;
output  [31:0] out_stream_V_din;
input   out_stream_V_full_n;
output   out_stream_V_write;
input   ap_clk;
input   ap_rst;
input   ctrl1_reg_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg ap_done;
reg ap_ready;
reg ap_idle;

wire    dataflow_in_loop_VITIS_LOOP_117_1_U0_in_stream_V_read;
wire   [31:0] dataflow_in_loop_VITIS_LOOP_117_1_U0_out_stream_V_din;
wire    dataflow_in_loop_VITIS_LOOP_117_1_U0_out_stream_V_write;
wire    dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_ready;
wire    dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_idle;
reg    dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_continue;
reg   [31:0] loop_dataflow_input_count;
reg   [31:0] loop_dataflow_output_count;
wire   [31:0] bound_minus_1;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 loop_dataflow_input_count = 32'd0;
#0 loop_dataflow_output_count = 32'd0;
end

FFT_C_dataflow_in_loop_VITIS_LOOP_117_1 dataflow_in_loop_VITIS_LOOP_117_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .in_stream_V_dout(in_stream_V_dout),
    .in_stream_V_empty_n(in_stream_V_empty_n),
    .in_stream_V_read(dataflow_in_loop_VITIS_LOOP_117_1_U0_in_stream_V_read),
    .ctrl1_reg(ctrl1_reg),
    .out_stream_V_din(dataflow_in_loop_VITIS_LOOP_117_1_U0_out_stream_V_din),
    .out_stream_V_full_n(out_stream_V_full_n),
    .out_stream_V_write(dataflow_in_loop_VITIS_LOOP_117_1_U0_out_stream_V_write),
    .ctrl1_reg_ap_vld(ctrl1_reg_ap_vld),
    .ap_start(dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_start),
    .ap_done(dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_done),
    .ap_ready(dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_ready),
    .ap_idle(dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_idle),
    .ap_continue(dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 32'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 32'd1);
        end else if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 32'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 32'd1);
        end else if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= 32'd0;
        end
    end
end

always @ (*) begin
    if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((loop_dataflow_output_count == 32'd0) & (ap_start == 1'b0) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_idle == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_ready == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~(loop_dataflow_output_count == bound_minus_1) | (ap_continue == 1'b1))) begin
        dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_continue = 1'b1;
    end else begin
        dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_continue = 1'b0;
    end
end

assign bound_minus_1 = (n - 32'd1);

assign dataflow_in_loop_VITIS_LOOP_117_1_U0_ap_start = ap_start;

assign in_stream_V_read = dataflow_in_loop_VITIS_LOOP_117_1_U0_in_stream_V_read;

assign out_stream_V_din = dataflow_in_loop_VITIS_LOOP_117_1_U0_out_stream_V_din;

assign out_stream_V_write = dataflow_in_loop_VITIS_LOOP_117_1_U0_out_stream_V_write;

endmodule //FFT_C_dataflow_parent_loop_proc