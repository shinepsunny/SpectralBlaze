// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_Row_Wise_Synch (
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
        c_fft_row_op_st_dout,
        c_fft_row_op_st_empty_n,
        c_fft_row_op_st_read,
        c_row_op_st_din,
        c_row_op_st_full_n,
        c_row_op_st_write,
        ctrl1_reg_dout,
        ctrl1_reg_empty_n,
        ctrl1_reg_read,
        ctrl2_reg_dout,
        ctrl2_reg_empty_n,
        ctrl2_reg_read,
        layer1_reg_dout,
        layer1_reg_empty_n,
        layer1_reg_read,
        ctrl1_reg_c18_din,
        ctrl1_reg_c18_full_n,
        ctrl1_reg_c18_write,
        ctrl2_reg_c22_din,
        ctrl2_reg_c22_full_n,
        ctrl2_reg_c22_write,
        layer1_reg_c25_din,
        layer1_reg_c25_full_n,
        layer1_reg_c25_write
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
input  [31:0] c_fft_row_op_st_dout;
input   c_fft_row_op_st_empty_n;
output   c_fft_row_op_st_read;
output  [31:0] c_row_op_st_din;
input   c_row_op_st_full_n;
output   c_row_op_st_write;
input  [31:0] ctrl1_reg_dout;
input   ctrl1_reg_empty_n;
output   ctrl1_reg_read;
input  [31:0] ctrl2_reg_dout;
input   ctrl2_reg_empty_n;
output   ctrl2_reg_read;
input  [31:0] layer1_reg_dout;
input   layer1_reg_empty_n;
output   layer1_reg_read;
output  [31:0] ctrl1_reg_c18_din;
input   ctrl1_reg_c18_full_n;
output   ctrl1_reg_c18_write;
output  [31:0] ctrl2_reg_c22_din;
input   ctrl2_reg_c22_full_n;
output   ctrl2_reg_c22_write;
output  [31:0] layer1_reg_c25_din;
input   layer1_reg_c25_full_n;
output   layer1_reg_c25_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg c_fft_row_op_st_read;
reg[31:0] c_row_op_st_din;
reg c_row_op_st_write;
reg ctrl1_reg_read;
reg ctrl2_reg_read;
reg layer1_reg_read;
reg ctrl1_reg_c18_write;
reg ctrl2_reg_c22_write;
reg layer1_reg_c25_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    ctrl1_reg_blk_n;
reg    ctrl2_reg_blk_n;
reg    layer1_reg_blk_n;
reg    ctrl1_reg_c18_blk_n;
reg    ctrl2_reg_c22_blk_n;
reg    layer1_reg_c25_blk_n;
wire   [7:0] empty_156_fu_179_p1;
reg   [7:0] empty_156_reg_533;
reg   [7:0] y_reg_540;
wire   [7:0] empty_157_fu_193_p1;
reg   [7:0] empty_157_reg_549;
reg   [7:0] tmp_s_reg_558;
wire   [15:0] bound13_fu_211_p2;
reg   [15:0] bound13_reg_563;
wire   [8:0] sub_i_i_fu_248_p2;
reg   [8:0] sub_i_i_reg_578;
wire    ap_CS_fsm_state4;
wire   [15:0] bound_fu_263_p2;
reg   [15:0] bound_reg_584;
wire   [39:0] bound5_fu_300_p2;
reg   [39:0] bound5_reg_589;
wire  signed [31:0] grp_fu_493_p2;
reg   [31:0] bound21_reg_594;
wire   [0:0] cmp_i_i_mid130_fu_306_p2;
reg   [0:0] cmp_i_i_mid130_reg_599;
wire   [0:0] icmp_ln1057_fu_312_p2;
reg   [0:0] icmp_ln1057_reg_604;
wire   [0:0] select_ln237_3_fu_405_p3;
reg   [0:0] select_ln237_3_reg_612;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln1057_6_fu_338_p2;
wire   [0:0] select_ln237_4_fu_423_p3;
reg   [0:0] select_ln237_4_reg_617;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_done;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_idle;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_ready;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_Row_Buffer_read;
wire   [31:0] grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_c_row_op_st_din;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_c_row_op_st_write;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_done;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_idle;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_ready;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_fft_row_op_st_read;
wire   [31:0] grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_row_op_st_din;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_row_op_st_write;
wire   [31:0] grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_Row_Buffer_din;
wire    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_Row_Buffer_write;
reg    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [31:0] Row_Buffer_dout;
wire    Row_Buffer_empty_n;
reg    Row_Buffer_read;
reg    grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start_reg;
wire    ap_CS_fsm_state7;
reg   [8:0] ap_NS_fsm;
wire    ap_NS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    Row_Buffer_full_n;
reg    Row_Buffer_write;
reg   [7:0] pnx_fu_90;
wire   [7:0] pnx_3_fu_451_p3;
reg    ap_block_state1;
reg   [7:0] pny_fu_94;
wire   [7:0] select_ln1057_fu_431_p3;
reg   [15:0] indvar_flatten16_fu_98;
wire   [15:0] select_ln1057_3_fu_465_p3;
reg   [31:0] indvar_flatten34_fu_102;
wire   [31:0] add_ln1057_1_fu_343_p2;
wire   [7:0] bound13_fu_211_p0;
wire   [15:0] cast11_fu_207_p1;
wire   [7:0] bound13_fu_211_p1;
wire   [15:0] empty_155_fu_175_p1;
wire   [8:0] ctrl2_reg_load_cast_cast_fu_245_p1;
wire   [7:0] bound_fu_263_p0;
wire   [7:0] bound_fu_263_p1;
wire   [0:0] empty_158_fu_269_p2;
wire   [7:0] smax2_fu_273_p3;
wire   [8:0] zext_ln239_fu_279_p1;
wire   [8:0] tmp_cast_fu_254_p1;
wire   [8:0] sub_ln239_fu_283_p2;
wire  signed [31:0] cast3_cast_fu_289_p1;
wire   [31:0] bound5_fu_300_p0;
wire   [7:0] bound5_fu_300_p1;
wire   [8:0] pny_cast_fu_329_p1;
wire   [0:0] icmp_ln1057_7_fu_355_p2;
wire   [0:0] cmp_fu_323_p2;
wire   [0:0] cmp_i_i_fu_333_p2;
wire   [0:0] icmp_ln1057_8_fu_381_p2;
wire   [7:0] select_ln237_fu_360_p3;
wire   [7:0] pny_5_fu_393_p2;
wire   [0:0] select_ln237_2_fu_386_p3;
wire   [0:0] cmp_mid1_fu_399_p2;
wire   [0:0] or_ln237_fu_368_p2;
wire   [8:0] pny_cast_mid1_fu_414_p1;
wire   [0:0] cmp_i_i_mid1_fu_418_p2;
wire   [0:0] select_ln237_1_fu_374_p3;
wire   [0:0] or_ln245_fu_445_p2;
wire   [7:0] add_ln245_fu_439_p2;
wire   [15:0] add_ln1057_fu_459_p2;
wire   [15:0] grp_fu_493_p0;
wire   [15:0] grp_fu_493_p1;
reg    grp_fu_493_ce;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire   [39:0] bound5_fu_300_p00;
wire   [39:0] bound5_fu_300_p10;
wire   [15:0] bound_fu_263_p00;
wire   [15:0] bound_fu_263_p10;
wire   [31:0] grp_fu_493_p00;
wire   [31:0] grp_fu_493_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start_reg = 1'b0;
#0 grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start_reg = 1'b0;
end

fwd_fft_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5 grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start),
    .ap_done(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_done),
    .ap_idle(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_idle),
    .ap_ready(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_ready),
    .Row_Buffer_dout(Row_Buffer_dout),
    .Row_Buffer_empty_n(Row_Buffer_empty_n),
    .Row_Buffer_read(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_Row_Buffer_read),
    .c_row_op_st_din(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_c_row_op_st_din),
    .c_row_op_st_full_n(c_row_op_st_full_n),
    .c_row_op_st_write(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_c_row_op_st_write),
    .bound(bound_reg_584),
    .select_ln237_3(select_ln237_3_reg_612)
);

fwd_fft_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7 grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start),
    .ap_done(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_done),
    .ap_idle(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_idle),
    .ap_ready(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_ready),
    .c_fft_row_op_st_dout(c_fft_row_op_st_dout),
    .c_fft_row_op_st_empty_n(c_fft_row_op_st_empty_n),
    .c_fft_row_op_st_read(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_fft_row_op_st_read),
    .c_row_op_st_din(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_row_op_st_din),
    .c_row_op_st_full_n(c_row_op_st_full_n),
    .c_row_op_st_write(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_row_op_st_write),
    .Row_Buffer_din(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_Row_Buffer_din),
    .Row_Buffer_full_n(Row_Buffer_full_n),
    .Row_Buffer_write(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_Row_Buffer_write),
    .i_op_assign_9(y_reg_540),
    .bound5(bound5_reg_589),
    .empty(tmp_s_reg_558),
    .ctrl1_reg_load_cast1(empty_157_reg_549),
    .select_ln237_4(select_ln237_4_reg_617)
);

fwd_fft_mul_8ns_8ns_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8ns_8ns_16_1_1_U225(
    .din0(bound13_fu_211_p0),
    .din1(bound13_fu_211_p1),
    .dout(bound13_fu_211_p2)
);

fwd_fft_mul_8ns_8ns_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8ns_8ns_16_1_1_U226(
    .din0(bound_fu_263_p0),
    .din1(bound_fu_263_p1),
    .dout(bound_fu_263_p2)
);

fwd_fft_mul_32ns_8ns_40_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 40 ))
mul_32ns_8ns_40_1_1_U227(
    .din0(bound5_fu_300_p0),
    .din1(bound5_fu_300_p1),
    .dout(bound5_fu_300_p2)
);

fwd_fft_mul_mul_16ns_16ns_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
mul_mul_16ns_16ns_32_4_1_U228(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_493_p0),
    .din1(grp_fu_493_p1),
    .ce(grp_fu_493_ce),
    .dout(grp_fu_493_p2)
);

fwd_fft_fifo_w32_d2560_A Row_Buffer_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_Row_Buffer_din),
    .if_full_n(Row_Buffer_full_n),
    .if_write(Row_Buffer_write),
    .if_dout(Row_Buffer_dout),
    .if_empty_n(Row_Buffer_empty_n),
    .if_read(Row_Buffer_read)
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
        end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd0))) begin
            grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start_reg <= 1'b1;
        end else if ((grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_ready == 1'b1)) begin
            grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state8) & (1'b1 == ap_CS_fsm_state7))) begin
            grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_ready == 1'b1)) begin
            grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start_reg <= 1'b0;
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
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten16_fu_98 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd0))) begin
        indvar_flatten16_fu_98 <= select_ln1057_3_fu_465_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten34_fu_102 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd0))) begin
        indvar_flatten34_fu_102 <= add_ln1057_1_fu_343_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        pnx_fu_90 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd0))) begin
        pnx_fu_90 <= pnx_3_fu_451_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        pny_fu_94 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd0))) begin
        pny_fu_94 <= select_ln1057_fu_431_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        bound13_reg_563 <= bound13_fu_211_p2;
        empty_156_reg_533 <= empty_156_fu_179_p1;
        empty_157_reg_549 <= empty_157_fu_193_p1;
        tmp_s_reg_558 <= {{ctrl1_reg_dout[31:24]}};
        y_reg_540 <= {{ctrl1_reg_dout[23:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bound21_reg_594 <= grp_fu_493_p2;
        bound5_reg_589 <= bound5_fu_300_p2;
        bound_reg_584 <= bound_fu_263_p2;
        cmp_i_i_mid130_reg_599 <= cmp_i_i_mid130_fu_306_p2;
        icmp_ln1057_reg_604 <= icmp_ln1057_fu_312_p2;
        sub_i_i_reg_578 <= sub_i_i_fu_248_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd0))) begin
        select_ln237_3_reg_612 <= select_ln237_3_fu_405_p3;
        select_ln237_4_reg_617 <= select_ln237_4_fu_423_p3;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        Row_Buffer_read = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_Row_Buffer_read;
    end else begin
        Row_Buffer_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        Row_Buffer_write = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_Row_Buffer_write;
    end else begin
        Row_Buffer_write = 1'b0;
    end
end

always @ (*) begin
    if (((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd1))) begin
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
        c_fft_row_op_st_read = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_fft_row_op_st_read;
    end else begin
        c_fft_row_op_st_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c_row_op_st_din = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_row_op_st_din;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c_row_op_st_din = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_c_row_op_st_din;
    end else begin
        c_row_op_st_din = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_row_op_st_din;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c_row_op_st_write = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_c_row_op_st_write;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c_row_op_st_write = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_c_row_op_st_write;
    end else begin
        c_row_op_st_write = 1'b0;
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
        ctrl1_reg_c18_blk_n = ctrl1_reg_c18_full_n;
    end else begin
        ctrl1_reg_c18_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_c18_write = 1'b1;
    end else begin
        ctrl1_reg_c18_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ctrl2_reg_c22_blk_n = ctrl2_reg_c22_full_n;
    end else begin
        ctrl2_reg_c22_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_c22_write = 1'b1;
    end else begin
        ctrl2_reg_c22_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_read = 1'b1;
    end else begin
        ctrl2_reg_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        grp_fu_493_ce = 1'b1;
    end else begin
        grp_fu_493_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd1))) begin
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
        layer1_reg_c25_blk_n = layer1_reg_c25_full_n;
    end else begin
        layer1_reg_c25_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_c25_write = 1'b1;
    end else begin
        layer1_reg_c25_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if ((~((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1057_6_fu_338_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1057_1_fu_343_p2 = (indvar_flatten34_fu_102 + 32'd1);

assign add_ln1057_fu_459_p2 = (indvar_flatten16_fu_98 + 16'd1);

assign add_ln245_fu_439_p2 = (pnx_fu_90 + 8'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_NS_fsm_state8 = ap_NS_fsm[32'd7];

always @ (*) begin
    ap_block_state1 = ((layer1_reg_c25_full_n == 1'b0) | (ctrl2_reg_c22_full_n == 1'b0) | (ctrl1_reg_c18_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign bound13_fu_211_p0 = cast11_fu_207_p1;

assign bound13_fu_211_p1 = cast11_fu_207_p1;

assign bound5_fu_300_p0 = bound5_fu_300_p00;

assign bound5_fu_300_p00 = $unsigned(cast3_cast_fu_289_p1);

assign bound5_fu_300_p1 = bound5_fu_300_p10;

assign bound5_fu_300_p10 = empty_157_reg_549;

assign bound_fu_263_p0 = bound_fu_263_p00;

assign bound_fu_263_p00 = y_reg_540;

assign bound_fu_263_p1 = bound_fu_263_p10;

assign bound_fu_263_p10 = empty_157_reg_549;

assign cast11_fu_207_p1 = empty_156_fu_179_p1;

assign cast3_cast_fu_289_p1 = $signed(sub_ln239_fu_283_p2);

assign cmp_fu_323_p2 = ((pny_fu_94 == 8'd0) ? 1'b1 : 1'b0);

assign cmp_i_i_fu_333_p2 = ((pny_cast_fu_329_p1 == sub_i_i_reg_578) ? 1'b1 : 1'b0);

assign cmp_i_i_mid130_fu_306_p2 = ((sub_i_i_fu_248_p2 == 9'd0) ? 1'b1 : 1'b0);

assign cmp_i_i_mid1_fu_418_p2 = ((pny_cast_mid1_fu_414_p1 == sub_i_i_reg_578) ? 1'b1 : 1'b0);

assign cmp_mid1_fu_399_p2 = ((pny_5_fu_393_p2 == 8'd0) ? 1'b1 : 1'b0);

assign ctrl1_reg_c18_din = ctrl1_reg_dout;

assign ctrl2_reg_c22_din = ctrl2_reg_dout;

assign ctrl2_reg_load_cast_cast_fu_245_p1 = empty_156_reg_533;

assign empty_155_fu_175_p1 = layer1_reg_dout[15:0];

assign empty_156_fu_179_p1 = ctrl2_reg_dout[7:0];

assign empty_157_fu_193_p1 = ctrl1_reg_dout[7:0];

assign empty_158_fu_269_p2 = ((y_reg_540 > empty_157_reg_549) ? 1'b1 : 1'b0);

assign grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_248_4_VITIS_LOOP_251_5_fu_152_ap_start_reg;

assign grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start = grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_263_7_fu_161_ap_start_reg;

assign grp_fu_493_p0 = grp_fu_493_p00;

assign grp_fu_493_p00 = empty_155_fu_175_p1;

assign grp_fu_493_p1 = grp_fu_493_p10;

assign grp_fu_493_p10 = bound13_fu_211_p2;

assign icmp_ln1057_6_fu_338_p2 = ((indvar_flatten34_fu_102 == bound21_reg_594) ? 1'b1 : 1'b0);

assign icmp_ln1057_7_fu_355_p2 = ((indvar_flatten16_fu_98 == bound13_reg_563) ? 1'b1 : 1'b0);

assign icmp_ln1057_8_fu_381_p2 = ((pnx_fu_90 == empty_156_reg_533) ? 1'b1 : 1'b0);

assign icmp_ln1057_fu_312_p2 = ((empty_156_reg_533 == 8'd0) ? 1'b1 : 1'b0);

assign layer1_reg_c25_din = layer1_reg_dout;

assign or_ln237_fu_368_p2 = (icmp_ln1057_7_fu_355_p2 | cmp_fu_323_p2);

assign or_ln245_fu_445_p2 = (select_ln237_2_fu_386_p3 | icmp_ln1057_7_fu_355_p2);

assign pnx_3_fu_451_p3 = ((or_ln245_fu_445_p2[0:0] == 1'b1) ? 8'd1 : add_ln245_fu_439_p2);

assign pny_5_fu_393_p2 = (select_ln237_fu_360_p3 + 8'd1);

assign pny_cast_fu_329_p1 = pny_fu_94;

assign pny_cast_mid1_fu_414_p1 = pny_5_fu_393_p2;

assign select_ln1057_3_fu_465_p3 = ((icmp_ln1057_7_fu_355_p2[0:0] == 1'b1) ? 16'd1 : add_ln1057_fu_459_p2);

assign select_ln1057_fu_431_p3 = ((select_ln237_2_fu_386_p3[0:0] == 1'b1) ? pny_5_fu_393_p2 : select_ln237_fu_360_p3);

assign select_ln237_1_fu_374_p3 = ((icmp_ln1057_7_fu_355_p2[0:0] == 1'b1) ? cmp_i_i_mid130_reg_599 : cmp_i_i_fu_333_p2);

assign select_ln237_2_fu_386_p3 = ((icmp_ln1057_7_fu_355_p2[0:0] == 1'b1) ? icmp_ln1057_reg_604 : icmp_ln1057_8_fu_381_p2);

assign select_ln237_3_fu_405_p3 = ((select_ln237_2_fu_386_p3[0:0] == 1'b1) ? cmp_mid1_fu_399_p2 : or_ln237_fu_368_p2);

assign select_ln237_4_fu_423_p3 = ((select_ln237_2_fu_386_p3[0:0] == 1'b1) ? cmp_i_i_mid1_fu_418_p2 : select_ln237_1_fu_374_p3);

assign select_ln237_fu_360_p3 = ((icmp_ln1057_7_fu_355_p2[0:0] == 1'b1) ? 8'd0 : pny_fu_94);

assign smax2_fu_273_p3 = ((empty_158_fu_269_p2[0:0] == 1'b1) ? y_reg_540 : empty_157_reg_549);

assign start_out = real_start;

assign sub_i_i_fu_248_p2 = ($signed(ctrl2_reg_load_cast_cast_fu_245_p1) + $signed(9'd511));

assign sub_ln239_fu_283_p2 = (zext_ln239_fu_279_p1 - tmp_cast_fu_254_p1);

assign tmp_cast_fu_254_p1 = y_reg_540;

assign zext_ln239_fu_279_p1 = smax2_fu_273_p3;

endmodule //fwd_fft_Row_Wise_Synch
