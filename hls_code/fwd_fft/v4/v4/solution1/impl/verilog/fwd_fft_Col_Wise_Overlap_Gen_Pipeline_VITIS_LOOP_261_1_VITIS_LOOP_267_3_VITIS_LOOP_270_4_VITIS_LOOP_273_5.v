// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_261_1_VITIS_LOOP_267_3_VITIS_LOOP_270_4_VITIS_LOOP_273_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        c_ifmap_patch_st_dout,
        c_ifmap_patch_st_empty_n,
        c_ifmap_patch_st_read,
        c_ifmap_col_op_st_din,
        c_ifmap_col_op_st_full_n,
        c_ifmap_col_op_st_write,
        Col_Buffer_din,
        Col_Buffer_full_n,
        Col_Buffer_write,
        Col_Buffer_dout,
        Col_Buffer_empty_n,
        Col_Buffer_read,
        sub_i_i,
        bound42,
        bound16,
        cmp_i_i_mid157,
        trunc_ln,
        icmp_ln1057,
        bound,
        icmp_ln1057_21,
        bound4,
        icmp_ln1057_22,
        trunc_ln40,
        p_cast1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] c_ifmap_patch_st_dout;
input   c_ifmap_patch_st_empty_n;
output   c_ifmap_patch_st_read;
output  [63:0] c_ifmap_col_op_st_din;
input   c_ifmap_col_op_st_full_n;
output   c_ifmap_col_op_st_write;
output  [63:0] Col_Buffer_din;
input   Col_Buffer_full_n;
output   Col_Buffer_write;
input  [63:0] Col_Buffer_dout;
input   Col_Buffer_empty_n;
output   Col_Buffer_read;
input  [8:0] sub_i_i;
input  [47:0] bound42;
input  [31:0] bound16;
input  [0:0] cmp_i_i_mid157;
input  [7:0] trunc_ln;
input  [0:0] icmp_ln1057;
input  [15:0] bound;
input  [0:0] icmp_ln1057_21;
input  [23:0] bound4;
input  [0:0] icmp_ln1057_22;
input  [7:0] trunc_ln40;
input  [7:0] p_cast1;

reg ap_idle;
reg c_ifmap_patch_st_read;
reg[63:0] c_ifmap_col_op_st_din;
reg c_ifmap_col_op_st_write;
reg Col_Buffer_write;
reg Col_Buffer_read;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] icmp_ln1057_20_reg_716;
reg   [0:0] or_ln288_reg_720;
reg    ap_predicate_op112_write_state4;
reg   [0:0] select_ln259_8_reg_712;
reg    ap_predicate_op114_read_state4;
reg    ap_predicate_op115_write_state4;
reg    ap_predicate_op117_write_state4;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1057_15_fu_259_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    c_ifmap_col_op_st_blk_n;
wire    ap_block_pp0_stage0;
reg    Col_Buffer_i_blk_n;
reg    Col_Buffer_o_blk_n;
reg    c_ifmap_patch_st_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1057_15_reg_679;
wire   [0:0] icmp_ln1057_16_fu_279_p2;
reg   [0:0] icmp_ln1057_16_reg_683;
wire   [0:0] select_ln259_3_fu_301_p3;
reg   [0:0] select_ln259_3_reg_690;
wire   [0:0] or_ln259_1_fu_308_p2;
reg   [0:0] or_ln259_1_reg_697;
wire   [0:0] select_ln259_7_fu_314_p3;
reg   [0:0] select_ln259_7_reg_703;
wire   [0:0] select_ln259_8_fu_483_p3;
wire   [0:0] icmp_ln1057_20_fu_537_p2;
wire   [0:0] or_ln288_fu_547_p2;
reg    ap_condition_exit_pp0_iter2_stage0;
reg   [7:0] x_fu_100;
wire   [7:0] x_16_fu_553_p2;
wire    ap_loop_init;
reg   [15:0] indvar_flatten_fu_104;
wire   [15:0] select_ln1057_7_fu_348_p3;
reg   [7:0] pnx_fu_108;
wire   [7:0] select_ln1057_fu_512_p3;
reg   [23:0] indvar_flatten11_fu_112;
wire   [23:0] select_ln1057_8_fu_362_p3;
reg   [31:0] indvar_flatten37_fu_116;
wire   [31:0] select_ln1057_9_fu_376_p3;
reg   [47:0] indvar_flatten71_fu_120;
wire   [47:0] add_ln1057_3_fu_264_p2;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln1057_18_fu_284_p2;
wire   [0:0] icmp_ln1057_19_fu_296_p2;
wire   [0:0] select_ln259_2_fu_289_p3;
wire   [0:0] or_ln1057_fu_336_p2;
wire   [0:0] or_ln1057_1_fu_342_p2;
wire   [15:0] add_ln1057_fu_330_p2;
wire   [23:0] add_ln1057_4_fu_356_p2;
wire   [31:0] add_ln1057_5_fu_370_p2;
wire   [8:0] pnx_cast_fu_413_p1;
wire   [0:0] cmp_fu_407_p2;
wire   [0:0] cmp_i_i_fu_417_p2;
wire   [0:0] icmp_ln1057_17_fu_436_p2;
wire   [0:0] or_ln259_fu_425_p2;
wire   [0:0] select_ln259_fu_430_p3;
wire   [0:0] select_ln259_1_fu_441_p3;
wire   [7:0] select_ln259_4_fu_447_p3;
wire   [7:0] pnx_8_fu_471_p2;
wire   [0:0] cmp_mid1_fu_477_p2;
wire   [0:0] or_ln259_2_fu_454_p2;
wire   [8:0] pnx_cast_mid1_fu_490_p1;
wire   [0:0] cmp_i_i_mid1_fu_494_p2;
wire   [0:0] select_ln259_5_fu_459_p3;
wire   [0:0] select_ln259_6_fu_465_p3;
wire   [0:0] select_ln259_10_fu_506_p3;
wire   [0:0] or_ln259_3_fu_519_p2;
wire   [0:0] or_ln259_4_fu_524_p2;
wire   [7:0] select_ln259_11_fu_529_p3;
wire   [0:0] select_ln259_9_fu_499_p3;
wire   [0:0] icmp_ln288_fu_542_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fwd_fft_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten11_fu_112 <= 24'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1057_15_fu_259_p2 == 1'd0))) begin
            indvar_flatten11_fu_112 <= select_ln1057_8_fu_362_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten37_fu_116 <= 32'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1057_15_fu_259_p2 == 1'd0))) begin
            indvar_flatten37_fu_116 <= select_ln1057_9_fu_376_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten71_fu_120 <= 48'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1057_15_fu_259_p2 == 1'd0))) begin
            indvar_flatten71_fu_120 <= add_ln1057_3_fu_264_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_104 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1057_15_fu_259_p2 == 1'd0))) begin
            indvar_flatten_fu_104 <= select_ln1057_7_fu_348_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pnx_fu_108 <= 8'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1057_15_reg_679 == 1'd0))) begin
            pnx_fu_108 <= select_ln1057_fu_512_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_fu_100 <= 8'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1057_15_reg_679 == 1'd0))) begin
            x_fu_100 <= x_16_fu_553_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln1057_15_reg_679 <= icmp_ln1057_15_fu_259_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1057_15_fu_259_p2 == 1'd0))) begin
        icmp_ln1057_16_reg_683 <= icmp_ln1057_16_fu_279_p2;
        or_ln259_1_reg_697 <= or_ln259_1_fu_308_p2;
        select_ln259_3_reg_690 <= select_ln259_3_fu_301_p3;
        select_ln259_7_reg_703 <= select_ln259_7_fu_314_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_15_reg_679 == 1'd0))) begin
        icmp_ln1057_20_reg_716 <= icmp_ln1057_20_fu_537_p2;
        select_ln259_8_reg_712 <= select_ln259_8_fu_483_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_20_fu_537_p2 == 1'd0) & (icmp_ln1057_15_reg_679 == 1'd0))) begin
        or_ln288_reg_720 <= or_ln288_fu_547_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op114_read_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Col_Buffer_i_blk_n = Col_Buffer_empty_n;
    end else begin
        Col_Buffer_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op112_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Col_Buffer_o_blk_n = Col_Buffer_full_n;
    end else begin
        Col_Buffer_o_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op114_read_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Col_Buffer_read = 1'b1;
    end else begin
        Col_Buffer_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op112_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        Col_Buffer_write = 1'b1;
    end else begin
        Col_Buffer_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1057_15_fu_259_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1057_15_reg_679 == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op117_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op115_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln1057_20_reg_716 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        c_ifmap_col_op_st_blk_n = c_ifmap_col_op_st_full_n;
    end else begin
        c_ifmap_col_op_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_op117_write_state4 == 1'b1)) begin
            c_ifmap_col_op_st_din = 64'd0;
        end else if ((ap_predicate_op115_write_state4 == 1'b1)) begin
            c_ifmap_col_op_st_din = Col_Buffer_dout;
        end else if ((icmp_ln1057_20_reg_716 == 1'd0)) begin
            c_ifmap_col_op_st_din = c_ifmap_patch_st_dout;
        end else begin
            c_ifmap_col_op_st_din = 'bx;
        end
    end else begin
        c_ifmap_col_op_st_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op117_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op115_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_20_reg_716 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        c_ifmap_col_op_st_write = 1'b1;
    end else begin
        c_ifmap_col_op_st_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln1057_20_reg_716 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        c_ifmap_patch_st_blk_n = c_ifmap_patch_st_empty_n;
    end else begin
        c_ifmap_patch_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_20_reg_716 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        c_ifmap_patch_st_read = 1'b1;
    end else begin
        c_ifmap_patch_st_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Col_Buffer_din = c_ifmap_patch_st_dout;

assign add_ln1057_3_fu_264_p2 = (indvar_flatten71_fu_120 + 48'd1);

assign add_ln1057_4_fu_356_p2 = (indvar_flatten11_fu_112 + 24'd1);

assign add_ln1057_5_fu_370_p2 = (indvar_flatten37_fu_116 + 32'd1);

assign add_ln1057_fu_330_p2 = (indvar_flatten_fu_104 + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (((ap_predicate_op117_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op115_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op114_read_state4 == 1'b1) & (1'b0 == Col_Buffer_empty_n)) | ((ap_predicate_op112_write_state4 == 1'b1) & (1'b0 == Col_Buffer_full_n)) | ((c_ifmap_col_op_st_full_n == 1'b0) & (icmp_ln1057_20_reg_716 == 1'd0)) | ((icmp_ln1057_20_reg_716 == 1'd0) & (c_ifmap_patch_st_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (((ap_predicate_op117_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op115_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op114_read_state4 == 1'b1) & (1'b0 == Col_Buffer_empty_n)) | ((ap_predicate_op112_write_state4 == 1'b1) & (1'b0 == Col_Buffer_full_n)) | ((c_ifmap_col_op_st_full_n == 1'b0) & (icmp_ln1057_20_reg_716 == 1'd0)) | ((icmp_ln1057_20_reg_716 == 1'd0) & (c_ifmap_patch_st_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (((ap_predicate_op117_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op115_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op114_read_state4 == 1'b1) & (1'b0 == Col_Buffer_empty_n)) | ((ap_predicate_op112_write_state4 == 1'b1) & (1'b0 == Col_Buffer_full_n)) | ((c_ifmap_col_op_st_full_n == 1'b0) & (icmp_ln1057_20_reg_716 == 1'd0)) | ((icmp_ln1057_20_reg_716 == 1'd0) & (c_ifmap_patch_st_empty_n == 1'b0))));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (((ap_predicate_op117_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op115_write_state4 == 1'b1) & (c_ifmap_col_op_st_full_n == 1'b0)) | ((ap_predicate_op114_read_state4 == 1'b1) & (1'b0 == Col_Buffer_empty_n)) | ((ap_predicate_op112_write_state4 == 1'b1) & (1'b0 == Col_Buffer_full_n)) | ((c_ifmap_col_op_st_full_n == 1'b0) & (icmp_ln1057_20_reg_716 == 1'd0)) | ((icmp_ln1057_20_reg_716 == 1'd0) & (c_ifmap_patch_st_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

always @ (*) begin
    ap_predicate_op112_write_state4 = ((or_ln288_reg_720 == 1'd0) & (icmp_ln1057_20_reg_716 == 1'd0));
end

always @ (*) begin
    ap_predicate_op114_read_state4 = ((select_ln259_8_reg_712 == 1'd0) & (icmp_ln1057_20_reg_716 == 1'd1));
end

always @ (*) begin
    ap_predicate_op115_write_state4 = ((select_ln259_8_reg_712 == 1'd0) & (icmp_ln1057_20_reg_716 == 1'd1));
end

always @ (*) begin
    ap_predicate_op117_write_state4 = ((select_ln259_8_reg_712 == 1'd1) & (icmp_ln1057_20_reg_716 == 1'd1));
end

assign cmp_fu_407_p2 = ((pnx_fu_108 == 8'd0) ? 1'b1 : 1'b0);

assign cmp_i_i_fu_417_p2 = ((pnx_cast_fu_413_p1 == sub_i_i) ? 1'b1 : 1'b0);

assign cmp_i_i_mid1_fu_494_p2 = ((pnx_cast_mid1_fu_490_p1 == sub_i_i) ? 1'b1 : 1'b0);

assign cmp_mid1_fu_477_p2 = ((pnx_8_fu_471_p2 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1057_15_fu_259_p2 = ((indvar_flatten71_fu_120 == bound42) ? 1'b1 : 1'b0);

assign icmp_ln1057_16_fu_279_p2 = ((indvar_flatten37_fu_116 == bound16) ? 1'b1 : 1'b0);

assign icmp_ln1057_17_fu_436_p2 = ((x_fu_100 == trunc_ln) ? 1'b1 : 1'b0);

assign icmp_ln1057_18_fu_284_p2 = ((indvar_flatten_fu_104 == bound) ? 1'b1 : 1'b0);

assign icmp_ln1057_19_fu_296_p2 = ((indvar_flatten11_fu_112 == bound4) ? 1'b1 : 1'b0);

assign icmp_ln1057_20_fu_537_p2 = ((select_ln259_11_fu_529_p3 < trunc_ln40) ? 1'b1 : 1'b0);

assign icmp_ln288_fu_542_p2 = ((select_ln259_11_fu_529_p3 < p_cast1) ? 1'b1 : 1'b0);

assign or_ln1057_1_fu_342_p2 = (or_ln1057_fu_336_p2 | icmp_ln1057_16_fu_279_p2);

assign or_ln1057_fu_336_p2 = (select_ln259_7_fu_314_p3 | select_ln259_3_fu_301_p3);

assign or_ln259_1_fu_308_p2 = (select_ln259_3_fu_301_p3 | icmp_ln1057_16_fu_279_p2);

assign or_ln259_2_fu_454_p2 = (select_ln259_3_reg_690 | or_ln259_fu_425_p2);

assign or_ln259_3_fu_519_p2 = (select_ln259_7_reg_703 | select_ln259_10_fu_506_p3);

assign or_ln259_4_fu_524_p2 = (or_ln259_3_fu_519_p2 | or_ln259_1_reg_697);

assign or_ln259_fu_425_p2 = (icmp_ln1057_16_reg_683 | cmp_fu_407_p2);

assign or_ln288_fu_547_p2 = (select_ln259_9_fu_499_p3 | icmp_ln288_fu_542_p2);

assign pnx_8_fu_471_p2 = (select_ln259_4_fu_447_p3 + 8'd1);

assign pnx_cast_fu_413_p1 = pnx_fu_108;

assign pnx_cast_mid1_fu_490_p1 = pnx_8_fu_471_p2;

assign select_ln1057_7_fu_348_p3 = ((or_ln1057_1_fu_342_p2[0:0] == 1'b1) ? 16'd1 : add_ln1057_fu_330_p2);

assign select_ln1057_8_fu_362_p3 = ((or_ln259_1_fu_308_p2[0:0] == 1'b1) ? 24'd1 : add_ln1057_4_fu_356_p2);

assign select_ln1057_9_fu_376_p3 = ((icmp_ln1057_16_fu_279_p2[0:0] == 1'b1) ? 32'd1 : add_ln1057_5_fu_370_p2);

assign select_ln1057_fu_512_p3 = ((select_ln259_7_reg_703[0:0] == 1'b1) ? pnx_8_fu_471_p2 : select_ln259_4_fu_447_p3);

assign select_ln259_10_fu_506_p3 = ((select_ln259_7_reg_703[0:0] == 1'b1) ? icmp_ln1057 : select_ln259_6_fu_465_p3);

assign select_ln259_11_fu_529_p3 = ((or_ln259_4_fu_524_p2[0:0] == 1'b1) ? 8'd0 : x_fu_100);

assign select_ln259_1_fu_441_p3 = ((icmp_ln1057_16_reg_683[0:0] == 1'b1) ? icmp_ln1057 : icmp_ln1057_17_fu_436_p2);

assign select_ln259_2_fu_289_p3 = ((icmp_ln1057_16_fu_279_p2[0:0] == 1'b1) ? icmp_ln1057_21 : icmp_ln1057_18_fu_284_p2);

assign select_ln259_3_fu_301_p3 = ((icmp_ln1057_16_fu_279_p2[0:0] == 1'b1) ? icmp_ln1057_22 : icmp_ln1057_19_fu_296_p2);

assign select_ln259_4_fu_447_p3 = ((or_ln259_1_reg_697[0:0] == 1'b1) ? 8'd0 : pnx_fu_108);

assign select_ln259_5_fu_459_p3 = ((select_ln259_3_reg_690[0:0] == 1'b1) ? cmp_i_i_mid157 : select_ln259_fu_430_p3);

assign select_ln259_6_fu_465_p3 = ((select_ln259_3_reg_690[0:0] == 1'b1) ? icmp_ln1057 : select_ln259_1_fu_441_p3);

assign select_ln259_7_fu_314_p3 = ((select_ln259_3_fu_301_p3[0:0] == 1'b1) ? icmp_ln1057_21 : select_ln259_2_fu_289_p3);

assign select_ln259_8_fu_483_p3 = ((select_ln259_7_reg_703[0:0] == 1'b1) ? cmp_mid1_fu_477_p2 : or_ln259_2_fu_454_p2);

assign select_ln259_9_fu_499_p3 = ((select_ln259_7_reg_703[0:0] == 1'b1) ? cmp_i_i_mid1_fu_494_p2 : select_ln259_5_fu_459_p3);

assign select_ln259_fu_430_p3 = ((icmp_ln1057_16_reg_683[0:0] == 1'b1) ? cmp_i_i_mid157 : cmp_i_i_fu_417_p2);

assign x_16_fu_553_p2 = (select_ln259_11_fu_529_p3 + 8'd1);

endmodule //fwd_fft_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_261_1_VITIS_LOOP_267_3_VITIS_LOOP_270_4_VITIS_LOOP_273_5