// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_entry_proc46 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ctrl1_reg_dout,
        ctrl1_reg_empty_n,
        ctrl1_reg_read,
        ctrl1_reg_c_din,
        ctrl1_reg_c_full_n,
        ctrl1_reg_c_write,
        ctrl2_reg_dout,
        ctrl2_reg_empty_n,
        ctrl2_reg_read,
        ctrl2_reg_c_din,
        ctrl2_reg_c_full_n,
        ctrl2_reg_c_write,
        layer1_reg_dout,
        layer1_reg_empty_n,
        layer1_reg_read,
        layer1_reg_c_din,
        layer1_reg_c_full_n,
        layer1_reg_c_write,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] ctrl1_reg_dout;
input   ctrl1_reg_empty_n;
output   ctrl1_reg_read;
output  [31:0] ctrl1_reg_c_din;
input   ctrl1_reg_c_full_n;
output   ctrl1_reg_c_write;
input  [31:0] ctrl2_reg_dout;
input   ctrl2_reg_empty_n;
output   ctrl2_reg_read;
output  [31:0] ctrl2_reg_c_din;
input   ctrl2_reg_c_full_n;
output   ctrl2_reg_c_write;
input  [31:0] layer1_reg_dout;
input   layer1_reg_empty_n;
output   layer1_reg_read;
output  [31:0] layer1_reg_c_din;
input   layer1_reg_c_full_n;
output   layer1_reg_c_write;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ctrl1_reg_read;
reg ctrl1_reg_c_write;
reg ctrl2_reg_read;
reg ctrl2_reg_c_write;
reg layer1_reg_read;
reg layer1_reg_c_write;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ctrl1_reg_blk_n;
reg    ctrl1_reg_c_blk_n;
reg    ctrl2_reg_blk_n;
reg    ctrl2_reg_c_blk_n;
reg    layer1_reg_blk_n;
reg    layer1_reg_c_blk_n;
reg    ap_block_state1;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [31:0] ap_return_2_preg;
reg   [31:0] ap_return_3_preg;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
#0 ap_return_2_preg = 32'd0;
#0 ap_return_3_preg = 32'd0;
end

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
        end else if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_0_preg <= ctrl1_reg_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_1_preg <= ctrl2_reg_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_2_preg <= layer1_reg_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_3_preg <= ctrl1_reg_dout;
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_0 = ctrl1_reg_dout;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_1 = ctrl2_reg_dout;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_2 = layer1_reg_dout;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_3 = ctrl1_reg_dout;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_blk_n = ctrl1_reg_empty_n;
    end else begin
        ctrl1_reg_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_c_blk_n = ctrl1_reg_c_full_n;
    end else begin
        ctrl1_reg_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_c_write = 1'b1;
    end else begin
        ctrl1_reg_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_read = 1'b1;
    end else begin
        ctrl1_reg_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_blk_n = ctrl2_reg_empty_n;
    end else begin
        ctrl2_reg_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_c_blk_n = ctrl2_reg_c_full_n;
    end else begin
        ctrl2_reg_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_c_write = 1'b1;
    end else begin
        ctrl2_reg_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_read = 1'b1;
    end else begin
        ctrl2_reg_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_blk_n = layer1_reg_empty_n;
    end else begin
        layer1_reg_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_c_blk_n = layer1_reg_c_full_n;
    end else begin
        layer1_reg_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_c_write = 1'b1;
    end else begin
        layer1_reg_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_read = 1'b1;
    end else begin
        layer1_reg_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_c_full_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ctrl1_reg_c_din = ctrl1_reg_dout;

assign ctrl2_reg_c_din = ctrl2_reg_dout;

assign layer1_reg_c_din = layer1_reg_dout;

endmodule //fwd_fft_entry_proc46