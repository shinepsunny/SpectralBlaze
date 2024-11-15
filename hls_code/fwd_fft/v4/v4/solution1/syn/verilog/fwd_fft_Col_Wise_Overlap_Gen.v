// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_Col_Wise_Overlap_Gen (
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
        c_ifmap_patch_st_dout,
        c_ifmap_patch_st_empty_n,
        c_ifmap_patch_st_read,
        c_ifmap_col_op_st_din,
        c_ifmap_col_op_st_full_n,
        c_ifmap_col_op_st_write,
        ctrl1_reg_dout,
        ctrl1_reg_empty_n,
        ctrl1_reg_read,
        ctrl2_reg_dout,
        ctrl2_reg_empty_n,
        ctrl2_reg_read,
        layer1_reg_dout,
        layer1_reg_empty_n,
        layer1_reg_read,
        ctrl1_reg_c20_din,
        ctrl1_reg_c20_full_n,
        ctrl1_reg_c20_write,
        ctrl2_reg_c25_din,
        ctrl2_reg_c25_full_n,
        ctrl2_reg_c25_write,
        layer1_reg_c30_din,
        layer1_reg_c30_full_n,
        layer1_reg_c30_write
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

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
input  [31:0] c_ifmap_patch_st_dout;
input   c_ifmap_patch_st_empty_n;
output   c_ifmap_patch_st_read;
output  [31:0] c_ifmap_col_op_st_din;
input   c_ifmap_col_op_st_full_n;
output   c_ifmap_col_op_st_write;
input  [31:0] ctrl1_reg_dout;
input   ctrl1_reg_empty_n;
output   ctrl1_reg_read;
input  [31:0] ctrl2_reg_dout;
input   ctrl2_reg_empty_n;
output   ctrl2_reg_read;
input  [31:0] layer1_reg_dout;
input   layer1_reg_empty_n;
output   layer1_reg_read;
output  [31:0] ctrl1_reg_c20_din;
input   ctrl1_reg_c20_full_n;
output   ctrl1_reg_c20_write;
output  [31:0] ctrl2_reg_c25_din;
input   ctrl2_reg_c25_full_n;
output   ctrl2_reg_c25_write;
output  [31:0] layer1_reg_c30_din;
input   layer1_reg_c30_full_n;
output   layer1_reg_c30_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg c_ifmap_patch_st_read;
reg c_ifmap_col_op_st_write;
reg ctrl1_reg_read;
reg ctrl2_reg_read;
reg layer1_reg_read;
reg ctrl1_reg_c20_write;
reg ctrl2_reg_c25_write;
reg layer1_reg_c30_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    ctrl1_reg_blk_n;
reg    ctrl2_reg_blk_n;
reg    layer1_reg_blk_n;
reg    ctrl1_reg_c20_blk_n;
reg    ctrl2_reg_c25_blk_n;
reg    layer1_reg_c30_blk_n;
wire   [15:0] empty_181_fu_137_p1;
reg   [15:0] empty_181_reg_260;
wire   [7:0] empty_182_fu_141_p1;
reg   [7:0] empty_182_reg_265;
reg   [7:0] p_cast1_reg_272;
wire   [7:0] trunc_ln266_fu_155_p1;
reg   [7:0] trunc_ln266_reg_278;
reg   [7:0] trunc_ln_reg_285;
wire   [15:0] bound_fu_175_p2;
reg   [15:0] bound_reg_290;
wire    ap_CS_fsm_state2;
wire   [23:0] grp_fu_242_p2;
reg   [23:0] bound4_reg_306;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_fu_249_p2;
reg   [31:0] bound16_reg_322;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [8:0] sub_i_i_fu_210_p2;
reg   [8:0] sub_i_i_reg_338;
wire    ap_CS_fsm_state10;
wire   [47:0] grp_fu_200_p2;
reg   [47:0] bound42_reg_343;
wire   [0:0] cmp_i_i_mid157_fu_217_p2;
reg   [0:0] cmp_i_i_mid157_reg_348;
wire   [0:0] icmp_ln1057_fu_224_p2;
reg   [0:0] icmp_ln1057_reg_353;
wire   [0:0] icmp_ln1057_21_fu_230_p2;
reg   [0:0] icmp_ln1057_21_reg_358;
wire   [0:0] icmp_ln1057_22_fu_236_p2;
reg   [0:0] icmp_ln1057_22_reg_363;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_done;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_idle;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_ready;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_patch_st_read;
wire   [31:0] grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_col_op_st_din;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_col_op_st_write;
wire   [31:0] grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_din;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_write;
wire    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_read;
reg    grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [31:0] Col_Buffer_dout;
wire    Col_Buffer_empty_n;
reg    Col_Buffer_read;
wire    Col_Buffer_full_n;
reg    Col_Buffer_write;
reg    ap_block_state1;
wire   [7:0] bound_fu_175_p0;
wire   [7:0] bound_fu_175_p1;
wire   [15:0] grp_fu_200_p0;
wire   [31:0] grp_fu_200_p1;
wire   [8:0] ctrl2_reg_load_cast_cast_fu_207_p1;
wire   [7:0] grp_fu_242_p0;
wire   [15:0] grp_fu_242_p1;
wire   [7:0] grp_fu_249_p0;
wire   [23:0] grp_fu_249_p1;
reg   [10:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire   [15:0] bound_fu_175_p00;
wire   [15:0] bound_fu_175_p10;
wire   [47:0] grp_fu_200_p00;
wire   [47:0] grp_fu_200_p10;
wire   [23:0] grp_fu_242_p00;
wire   [23:0] grp_fu_242_p10;
wire   [31:0] grp_fu_249_p00;
wire   [31:0] grp_fu_249_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start_reg = 1'b0;
end

fwd_fft_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5 grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start),
    .ap_done(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_done),
    .ap_idle(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_idle),
    .ap_ready(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_ready),
    .c_ifmap_patch_st_dout(c_ifmap_patch_st_dout),
    .c_ifmap_patch_st_empty_n(c_ifmap_patch_st_empty_n),
    .c_ifmap_patch_st_read(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_patch_st_read),
    .c_ifmap_col_op_st_din(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_col_op_st_din),
    .c_ifmap_col_op_st_full_n(c_ifmap_col_op_st_full_n),
    .c_ifmap_col_op_st_write(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_col_op_st_write),
    .Col_Buffer_din(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_din),
    .Col_Buffer_full_n(Col_Buffer_full_n),
    .Col_Buffer_write(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_write),
    .Col_Buffer_dout(Col_Buffer_dout),
    .Col_Buffer_empty_n(Col_Buffer_empty_n),
    .Col_Buffer_read(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_read),
    .sub_i_i(sub_i_i_reg_338),
    .bound42(bound42_reg_343),
    .bound16(bound16_reg_322),
    .cmp_i_i_mid157(cmp_i_i_mid157_reg_348),
    .trunc_ln(trunc_ln266_reg_278),
    .icmp_ln1057(icmp_ln1057_reg_353),
    .bound(bound_reg_290),
    .icmp_ln1057_21(icmp_ln1057_21_reg_358),
    .bound4(bound4_reg_306),
    .icmp_ln1057_22(icmp_ln1057_22_reg_363),
    .trunc_ln40(trunc_ln_reg_285),
    .p_cast1(p_cast1_reg_272)
);

fwd_fft_mul_8ns_8ns_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8ns_8ns_16_1_1_U59(
    .din0(bound_fu_175_p0),
    .din1(bound_fu_175_p1),
    .dout(bound_fu_175_p2)
);

fwd_fft_mul_16ns_32ns_48_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 48 ))
mul_16ns_32ns_48_2_1_U60(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_200_p0),
    .din1(grp_fu_200_p1),
    .ce(1'b1),
    .dout(grp_fu_200_p2)
);

fwd_fft_mul_mul_8ns_16ns_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 24 ))
mul_mul_8ns_16ns_24_4_1_U61(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_242_p0),
    .din1(grp_fu_242_p1),
    .ce(1'b1),
    .dout(grp_fu_242_p2)
);

fwd_fft_mul_mul_8ns_24ns_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 32 ))
mul_mul_8ns_24ns_32_4_1_U62(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_249_p0),
    .din1(grp_fu_249_p1),
    .ce(1'b1),
    .dout(grp_fu_249_p2)
);

fwd_fft_fifo_w32_d620_A Col_Buffer_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_din),
    .if_full_n(Col_Buffer_full_n),
    .if_write(Col_Buffer_write),
    .if_dout(Col_Buffer_dout),
    .if_empty_n(Col_Buffer_empty_n),
    .if_read(Col_Buffer_read)
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
        end else if (((1'b1 == ap_CS_fsm_state11) & (grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start_reg <= 1'b1;
        end else if ((grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_ready == 1'b1)) begin
            grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start_reg <= 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bound16_reg_322 <= grp_fu_249_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        bound42_reg_343 <= grp_fu_200_p2;
        cmp_i_i_mid157_reg_348 <= cmp_i_i_mid157_fu_217_p2;
        icmp_ln1057_21_reg_358 <= icmp_ln1057_21_fu_230_p2;
        icmp_ln1057_22_reg_363 <= icmp_ln1057_22_fu_236_p2;
        icmp_ln1057_reg_353 <= icmp_ln1057_fu_224_p2;
        sub_i_i_reg_338 <= sub_i_i_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bound4_reg_306 <= grp_fu_242_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound_reg_290 <= bound_fu_175_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_181_reg_260 <= empty_181_fu_137_p1;
        empty_182_reg_265 <= empty_182_fu_141_p1;
        p_cast1_reg_272 <= {{ctrl1_reg_dout[31:24]}};
        trunc_ln266_reg_278 <= trunc_ln266_fu_155_p1;
        trunc_ln_reg_285 <= {{ctrl1_reg_dout[23:16]}};
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        Col_Buffer_read = grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_read;
    end else begin
        Col_Buffer_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        Col_Buffer_write = grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_Col_Buffer_write;
    end else begin
        Col_Buffer_write = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

always @ (*) begin
    if ((grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end

always @ (*) begin
    if (((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_done == 1'b1))) begin
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
    if ((1'b1 == ap_CS_fsm_state11)) begin
        c_ifmap_col_op_st_write = grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_col_op_st_write;
    end else begin
        c_ifmap_col_op_st_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        c_ifmap_patch_st_read = grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_patch_st_read;
    end else begin
        c_ifmap_patch_st_read = 1'b0;
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
        ctrl1_reg_c20_blk_n = ctrl1_reg_c20_full_n;
    end else begin
        ctrl1_reg_c20_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_c20_write = 1'b1;
    end else begin
        ctrl1_reg_c20_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ctrl2_reg_c25_blk_n = ctrl2_reg_c25_full_n;
    end else begin
        ctrl2_reg_c25_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_c25_write = 1'b1;
    end else begin
        ctrl2_reg_c25_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl2_reg_read = 1'b1;
    end else begin
        ctrl2_reg_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_done == 1'b1))) begin
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
        layer1_reg_c30_blk_n = layer1_reg_c30_full_n;
    end else begin
        layer1_reg_c30_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer1_reg_c30_write = 1'b1;
    end else begin
        layer1_reg_c30_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if ((~((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((1'b1 == ap_CS_fsm_state11) & (grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((layer1_reg_c30_full_n == 1'b0) | (ctrl2_reg_c25_full_n == 1'b0) | (ctrl1_reg_c20_full_n == 1'b0) | (layer1_reg_empty_n == 1'b0) | (ctrl2_reg_empty_n == 1'b0) | (ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign bound_fu_175_p0 = bound_fu_175_p00;

assign bound_fu_175_p00 = p_cast1_reg_272;

assign bound_fu_175_p1 = bound_fu_175_p10;

assign bound_fu_175_p10 = trunc_ln266_reg_278;

assign c_ifmap_col_op_st_din = grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_c_ifmap_col_op_st_din;

assign cmp_i_i_mid157_fu_217_p2 = ((sub_i_i_fu_210_p2 == 9'd0) ? 1'b1 : 1'b0);

assign ctrl1_reg_c20_din = ctrl1_reg_dout;

assign ctrl2_reg_c25_din = ctrl2_reg_dout;

assign ctrl2_reg_load_cast_cast_fu_207_p1 = empty_182_reg_265;

assign empty_181_fu_137_p1 = layer1_reg_dout[15:0];

assign empty_182_fu_141_p1 = ctrl2_reg_dout[7:0];

assign grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start = grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116_ap_start_reg;

assign grp_fu_200_p0 = grp_fu_200_p00;

assign grp_fu_200_p00 = empty_181_reg_260;

assign grp_fu_200_p1 = grp_fu_200_p10;

assign grp_fu_200_p10 = bound16_reg_322;

assign grp_fu_242_p0 = grp_fu_242_p00;

assign grp_fu_242_p00 = empty_182_reg_265;

assign grp_fu_242_p1 = grp_fu_242_p10;

assign grp_fu_242_p10 = bound_fu_175_p2;

assign grp_fu_249_p0 = grp_fu_249_p00;

assign grp_fu_249_p00 = empty_182_reg_265;

assign grp_fu_249_p1 = grp_fu_249_p10;

assign grp_fu_249_p10 = grp_fu_242_p2;

assign icmp_ln1057_21_fu_230_p2 = ((bound_reg_290 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1057_22_fu_236_p2 = ((bound4_reg_306 == 24'd0) ? 1'b1 : 1'b0);

assign icmp_ln1057_fu_224_p2 = ((trunc_ln266_reg_278 == 8'd0) ? 1'b1 : 1'b0);

assign layer1_reg_c30_din = layer1_reg_dout;

assign start_out = real_start;

assign sub_i_i_fu_210_p2 = ($signed(ctrl2_reg_load_cast_cast_fu_207_p1) + $signed(9'd511));

assign trunc_ln266_fu_155_p1 = ctrl1_reg_dout[7:0];

endmodule //fwd_fft_Col_Wise_Overlap_Gen
