// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_FFT_C_Block_split5_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ctrl2_reg_dout,
        ctrl2_reg_empty_n,
        ctrl2_reg_read,
        layer1_reg_dout,
        layer1_reg_empty_n,
        layer1_reg_read,
        ctrl2_reg_c_din,
        ctrl2_reg_c_full_n,
        ctrl2_reg_c_write,
        layer1_reg_c_din,
        layer1_reg_c_full_n,
        layer1_reg_c_write,
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] ctrl2_reg_dout;
input   ctrl2_reg_empty_n;
output   ctrl2_reg_read;
input  [31:0] layer1_reg_dout;
input   layer1_reg_empty_n;
output   layer1_reg_read;
output  [31:0] ctrl2_reg_c_din;
input   ctrl2_reg_c_full_n;
output   ctrl2_reg_c_write;
output  [31:0] layer1_reg_c_din;
input   layer1_reg_c_full_n;
output   layer1_reg_c_write;
output  [23:0] ap_return_0;
output  [15:0] ap_return_1;
output  [39:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ctrl2_reg_read;
reg layer1_reg_read;
reg ctrl2_reg_c_write;
reg layer1_reg_c_write;
reg[23:0] ap_return_0;
reg[15:0] ap_return_1;
reg[39:0] ap_return_2;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ctrl2_reg_blk_n;
reg    layer1_reg_blk_n;
reg    ctrl2_reg_c_blk_n;
reg    layer1_reg_c_blk_n;
reg    ap_block_state1;
wire   [7:0] empty_fu_56_p1;
wire   [15:0] empty_181_fu_68_p1;
wire   [23:0] rhs_V_1_out_0_fu_60_p1;
wire   [15:0] rhs_V_out_0_fu_64_p1;
wire   [39:0] rhs_V_2_out_0_fu_72_p1;
reg   [23:0] ap_return_0_preg;
reg   [15:0] ap_return_1_preg;
reg   [39:0] ap_return_2_preg;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_return_0_preg = 24'd0;
#0 ap_return_1_preg = 16'd0;
#0 ap_return_2_preg = 40'd0;
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
        end else if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_0_preg[0] <= 1'b0;
        ap_return_0_preg[1] <= 1'b0;
        ap_return_0_preg[2] <= 1'b0;
        ap_return_0_preg[3] <= 1'b0;
        ap_return_0_preg[4] <= 1'b0;
        ap_return_0_preg[5] <= 1'b0;
        ap_return_0_preg[6] <= 1'b0;
        ap_return_0_preg[7] <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                        ap_return_0_preg[7 : 0] <= rhs_V_1_out_0_fu_60_p1[7 : 0];
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_1_preg[0] <= 1'b0;
        ap_return_1_preg[1] <= 1'b0;
        ap_return_1_preg[2] <= 1'b0;
        ap_return_1_preg[3] <= 1'b0;
        ap_return_1_preg[4] <= 1'b0;
        ap_return_1_preg[5] <= 1'b0;
        ap_return_1_preg[6] <= 1'b0;
        ap_return_1_preg[7] <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                        ap_return_1_preg[7 : 0] <= rhs_V_out_0_fu_64_p1[7 : 0];
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_2_preg[0] <= 1'b0;
        ap_return_2_preg[1] <= 1'b0;
        ap_return_2_preg[2] <= 1'b0;
        ap_return_2_preg[3] <= 1'b0;
        ap_return_2_preg[4] <= 1'b0;
        ap_return_2_preg[5] <= 1'b0;
        ap_return_2_preg[6] <= 1'b0;
        ap_return_2_preg[7] <= 1'b0;
        ap_return_2_preg[8] <= 1'b0;
        ap_return_2_preg[9] <= 1'b0;
        ap_return_2_preg[10] <= 1'b0;
        ap_return_2_preg[11] <= 1'b0;
        ap_return_2_preg[12] <= 1'b0;
        ap_return_2_preg[13] <= 1'b0;
        ap_return_2_preg[14] <= 1'b0;
        ap_return_2_preg[15] <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                        ap_return_2_preg[15 : 0] <= rhs_V_2_out_0_fu_72_p1[15 : 0];
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_0 = rhs_V_1_out_0_fu_60_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_1 = rhs_V_out_0_fu_64_p1;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_2 = rhs_V_2_out_0_fu_72_p1;
    end else begin
        ap_return_2 = ap_return_2_preg;
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
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_c_write = 1'b1;
    end else begin
        ctrl2_reg_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_c_write = 1'b1;
    end else begin
        layer1_reg_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    ap_block_state1 = ((ap_start == 1'b0) | (layer1_reg_c_full_n == 1'b0) | (ctrl2_reg_c_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ctrl2_reg_c_din = ctrl2_reg_dout;

assign empty_181_fu_68_p1 = layer1_reg_dout[15:0];

assign empty_fu_56_p1 = ctrl2_reg_dout[7:0];

assign layer1_reg_c_din = layer1_reg_dout;

assign rhs_V_1_out_0_fu_60_p1 = empty_fu_56_p1;

assign rhs_V_2_out_0_fu_72_p1 = empty_181_fu_68_p1;

assign rhs_V_out_0_fu_64_p1 = empty_fu_56_p1;

always @ (posedge ap_clk) begin
    ap_return_0_preg[23:8] <= 16'b0000000000000000;
    ap_return_1_preg[15:8] <= 8'b00000000;
    ap_return_2_preg[39:16] <= 24'b000000000000000000000000;
end

endmodule //fwd_fft_FFT_C_Block_split5_proc