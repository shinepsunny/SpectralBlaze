// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module IFFT_AP_buffer_r (
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
        buffer1_0_address0,
        buffer1_0_ce0,
        buffer1_0_we0,
        buffer1_0_d0,
        buffer1_1_address0,
        buffer1_1_ce0,
        buffer1_1_we0,
        buffer1_1_d0,
        ctrl1_reg_3,
        ctrl2_reg_0,
        actp_reg_3,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

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
output  [12:0] buffer1_0_address0;
output   buffer1_0_ce0;
output   buffer1_0_we0;
output  [15:0] buffer1_0_d0;
output  [12:0] buffer1_1_address0;
output   buffer1_1_ce0;
output   buffer1_1_we0;
output  [15:0] buffer1_1_d0;
input  [7:0] ctrl1_reg_3;
input  [7:0] ctrl2_reg_0;
input  [7:0] actp_reg_3;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_st_read;
reg[7:0] ap_return_0;
reg[7:0] ap_return_1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] grp_fu_73_p2;
reg   [7:0] div_reg_151;
wire    ap_CS_fsm_state12;
reg   [7:0] tmp_reg_160;
wire    ap_CS_fsm_state13;
wire   [38:0] bound_fu_104_p2;
reg   [38:0] bound_reg_165;
wire    ap_CS_fsm_state14;
wire   [46:0] bound4_fu_117_p2;
reg   [46:0] bound4_reg_171;
wire    ap_CS_fsm_state15;
wire   [0:0] icmp_ln1027_fu_123_p2;
reg   [0:0] icmp_ln1027_reg_176;
wire    ap_CS_fsm_state16;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_idle;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_ready;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_out_st_read;
wire   [12:0] grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_address0;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_ce0;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_we0;
wire   [15:0] grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_d0;
wire   [12:0] grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_address0;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_ce0;
wire    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_we0;
wire   [15:0] grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_d0;
reg    grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    ap_block_state1;
wire   [8:0] div_cast28_fu_79_p1;
wire   [8:0] add_ln304_fu_82_p2;
wire   [7:0] bound_fu_104_p0;
wire   [7:0] bound_fu_104_p1;
wire   [7:0] bound4_fu_117_p0;
wire   [15:0] bound4_fu_117_p1;
reg    grp_fu_73_ap_start;
wire    grp_fu_73_ap_done;
reg    grp_fu_73_ce;
reg   [7:0] ap_return_0_preg;
reg   [7:0] ap_return_1_preg;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire   [46:0] bound4_fu_117_p00;
wire   [46:0] bound4_fu_117_p10;
wire   [38:0] bound_fu_104_p00;
wire   [38:0] bound_fu_104_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 17'd1;
#0 grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 8'd0;
#0 ap_return_1_preg = 8'd0;
end

IFFT_AP_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3 grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start),
    .ap_done(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done),
    .ap_idle(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_idle),
    .ap_ready(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_ready),
    .out_st_dout(out_st_dout),
    .out_st_num_data_valid(2'd0),
    .out_st_fifo_cap(2'd0),
    .out_st_empty_n(out_st_empty_n),
    .out_st_read(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_out_st_read),
    .bound4(bound4_reg_171),
    .buffer1_0_address0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_address0),
    .buffer1_0_ce0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_ce0),
    .buffer1_0_we0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_we0),
    .buffer1_0_d0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_d0),
    .buffer1_1_address0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_address0),
    .buffer1_1_ce0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_ce0),
    .buffer1_1_we0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_we0),
    .buffer1_1_d0(grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_d0),
    .bound(bound_reg_165),
    .div_cast(div_reg_151),
    .conv_i_i72(div_reg_151),
    .icmp_ln1027(icmp_ln1027_reg_176)
);

IFFT_AP_udiv_8ns_8ns_8_12_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
udiv_8ns_8ns_8_12_seq_1_U378(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_73_ap_start),
    .done(grp_fu_73_ap_done),
    .din0(ctrl1_reg_3),
    .din1(actp_reg_3),
    .ce(grp_fu_73_ce),
    .dout(grp_fu_73_p2)
);

IFFT_AP_mul_8ns_8ns_39_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 39 ))
mul_8ns_8ns_39_1_1_U379(
    .din0(bound_fu_104_p0),
    .din1(bound_fu_104_p1),
    .dout(bound_fu_104_p2)
);

IFFT_AP_mul_8ns_16ns_47_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 47 ))
mul_8ns_16ns_47_1_1_U380(
    .din0(bound4_fu_117_p0),
    .din1(bound4_fu_117_p1),
    .dout(bound4_fu_117_p2)
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
        end else if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 8'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
            ap_return_0_preg <= ctrl1_reg_3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 8'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
            ap_return_1_preg <= actp_reg_3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_ready == 1'b1)) begin
            grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        bound4_reg_171 <= bound4_fu_117_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        bound_reg_165 <= bound_fu_104_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        div_reg_151 <= grp_fu_73_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        icmp_ln1027_reg_176 <= icmp_ln1027_fu_123_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp_reg_160 <= {{add_ln304_fu_82_p2[8:1]}};
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

always @ (*) begin
    if ((grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
        ap_return_0 = ctrl1_reg_3;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
        ap_return_1 = actp_reg_3;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_73_ap_start = 1'b1;
    end else begin
        grp_fu_73_ap_start = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_fu_73_ce = 1'b0;
    end else begin
        grp_fu_73_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        out_st_read = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_out_st_read;
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
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln304_fu_82_p2 = (div_cast28_fu_79_p1 + 9'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign bound4_fu_117_p0 = bound4_fu_117_p00;

assign bound4_fu_117_p00 = ctrl2_reg_0;

assign bound4_fu_117_p1 = bound4_fu_117_p10;

assign bound4_fu_117_p10 = bound_reg_165;

assign bound_fu_104_p0 = bound_fu_104_p00;

assign bound_fu_104_p00 = div_reg_151;

assign bound_fu_104_p1 = bound_fu_104_p10;

assign bound_fu_104_p10 = tmp_reg_160;

assign buffer1_0_address0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_address0;

assign buffer1_0_ce0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_ce0;

assign buffer1_0_d0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_d0;

assign buffer1_0_we0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_0_we0;

assign buffer1_1_address0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_address0;

assign buffer1_1_ce0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_ce0;

assign buffer1_1_d0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_d0;

assign buffer1_1_we0 = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_buffer1_1_we0;

assign div_cast28_fu_79_p1 = div_reg_151;

assign grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start = grp_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3_fu_58_ap_start_reg;

assign icmp_ln1027_fu_123_p2 = ((div_reg_151 != 8'd0) ? 1'b1 : 1'b0);

endmodule //IFFT_AP_buffer_r