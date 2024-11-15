// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Mem_patch_Wr_ifmap_gen (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        c_fft_col_op_st_V_dout,
        c_fft_col_op_st_V_empty_n,
        c_fft_col_op_st_V_read,
        ifmap_CF_M_real_address0,
        ifmap_CF_M_real_ce0,
        ifmap_CF_M_real_we0,
        ifmap_CF_M_real_d0,
        ifmap_CF_M_imag_address0,
        ifmap_CF_M_imag_ce0,
        ifmap_CF_M_imag_we0,
        ifmap_CF_M_imag_d0,
        ctrl1_reg,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] c_fft_col_op_st_V_dout;
input   c_fft_col_op_st_V_empty_n;
output   c_fft_col_op_st_V_read;
output  [10:0] ifmap_CF_M_real_address0;
output   ifmap_CF_M_real_ce0;
output  [3:0] ifmap_CF_M_real_we0;
output  [31:0] ifmap_CF_M_real_d0;
output  [10:0] ifmap_CF_M_imag_address0;
output   ifmap_CF_M_imag_ce0;
output  [3:0] ifmap_CF_M_imag_we0;
output  [31:0] ifmap_CF_M_imag_d0;
input  [31:0] ctrl1_reg;
output  [7:0] ap_return;

reg ap_idle;
reg c_fft_col_op_st_V_read;
reg ifmap_CF_M_real_ce0;
reg[3:0] ifmap_CF_M_real_we0;
reg ifmap_CF_M_imag_ce0;
reg[3:0] ifmap_CF_M_imag_we0;
reg[7:0] ap_return;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln1057_fu_164_p2;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    c_fft_col_op_st_V_blk_n;
wire    ap_block_pp0_stage0;
wire   [0:0] trunc_ln550_fu_224_p1;
reg   [0:0] trunc_ln550_reg_559;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] and_ln145_cast_mid2_v_fu_228_p3;
reg   [4:0] and_ln145_cast_mid2_v_reg_564;
wire   [4:0] or_ln550_fu_236_p2;
reg   [4:0] or_ln550_reg_570;
wire   [10:0] add_ln557_fu_254_p2;
reg   [10:0] add_ln557_reg_576;
reg   [31:0] c_fft_col_op_st_V_read_reg_581;
wire   [0:0] icmp_ln145_fu_260_p2;
reg   [0:0] icmp_ln145_reg_587;
wire   [0:0] icmp_ln145_1_fu_266_p2;
reg   [0:0] icmp_ln145_1_reg_595;
wire   [63:0] zext_ln557_fu_293_p1;
reg   [7:0] y_fu_84;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_y_load;
wire   [7:0] add_ln554_fu_272_p2;
reg   [7:0] x_fu_88;
reg   [7:0] ap_sig_allocacmp_x_load;
wire   [7:0] select_ln550_1_fu_202_p3;
reg   [15:0] indvar_flatten_fu_92;
reg   [15:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [15:0] add_ln1057_fu_170_p2;
wire   [3:0] shl_ln145_2_fu_424_p2;
wire   [7:0] empty_fu_132_p1;
wire   [7:0] bound_fu_140_p0;
wire   [15:0] cast_fu_136_p1;
wire   [7:0] bound_fu_140_p1;
wire   [15:0] bound_fu_140_p2;
wire   [0:0] icmp_ln1057_2_fu_188_p2;
wire   [7:0] add_ln551_fu_182_p2;
wire   [6:0] zext_ln557_mid2_v_fu_210_p4;
wire   [7:0] select_ln550_fu_194_p3;
wire   [5:0] trunc_ln557_fu_242_p1;
wire   [10:0] tmp_11_cast_fu_246_p3;
wire   [10:0] zext_ln550_fu_220_p1;
wire   [15:0] trunc_ln145_fu_298_p1;
wire   [5:0] zext_ln145_fu_310_p1;
wire   [5:0] zext_ln145_1_fu_313_p1;
wire   [5:0] xor_ln145_fu_320_p2;
wire   [5:0] select_ln145_fu_326_p3;
wire   [5:0] select_ln145_2_fu_340_p3;
wire   [5:0] select_ln145_1_fu_333_p3;
wire   [5:0] xor_ln145_1_fu_347_p2;
wire   [31:0] zext_ln145_2_fu_316_p1;
wire   [31:0] zext_ln145_3_fu_353_p1;
wire   [31:0] shl_ln145_fu_365_p2;
reg   [31:0] tmp_fu_371_p4;
wire   [31:0] zext_ln145_4_fu_357_p1;
wire   [31:0] zext_ln145_5_fu_361_p1;
wire   [31:0] shl_ln145_1_fu_388_p2;
wire   [31:0] lshr_ln145_fu_394_p2;
wire   [31:0] select_ln145_3_fu_381_p3;
wire   [31:0] and_ln145_fu_400_p2;
wire   [1:0] tmp_1_fu_413_p3;
wire   [3:0] zext_ln145_6_fu_420_p1;
wire   [15:0] trunc_ln145_1_fu_301_p4;
wire   [5:0] zext_ln145_7_fu_432_p1;
wire   [5:0] zext_ln145_8_fu_435_p1;
wire   [5:0] xor_ln145_2_fu_442_p2;
wire   [5:0] select_ln145_4_fu_448_p3;
wire   [5:0] select_ln145_6_fu_462_p3;
wire   [5:0] select_ln145_5_fu_455_p3;
wire   [5:0] xor_ln145_3_fu_469_p2;
wire   [31:0] zext_ln145_9_fu_438_p1;
wire   [31:0] zext_ln145_10_fu_475_p1;
wire   [31:0] shl_ln145_3_fu_487_p2;
reg   [31:0] tmp_2_fu_493_p4;
wire   [31:0] zext_ln145_11_fu_479_p1;
wire   [31:0] zext_ln145_12_fu_483_p1;
wire   [31:0] shl_ln145_4_fu_510_p2;
wire   [31:0] lshr_ln145_1_fu_516_p2;
wire   [31:0] select_ln145_7_fu_503_p3;
wire   [31:0] and_ln145_2_fu_522_p2;
reg   [7:0] ap_return_preg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_116;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_return_preg = 8'd0;
end

Mem_patch_Wr_mul_8ns_8ns_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8ns_8ns_16_1_1_U1(
    .din0(bound_fu_140_p0),
    .din1(bound_fu_140_p1),
    .dout(bound_fu_140_p2)
);

Mem_patch_Wr_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_return_preg <= empty_fu_132_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((icmp_ln1057_fu_164_p2 == 1'd0)) begin
            indvar_flatten_fu_92 <= add_ln1057_fu_170_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_92 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((icmp_ln1057_fu_164_p2 == 1'd0)) begin
            x_fu_88 <= select_ln550_1_fu_202_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_88 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((icmp_ln1057_fu_164_p2 == 1'd0)) begin
            y_fu_84 <= add_ln554_fu_272_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            y_fu_84 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln557_reg_576 <= add_ln557_fu_254_p2;
        and_ln145_cast_mid2_v_reg_564[4] <= and_ln145_cast_mid2_v_fu_228_p3[4];
        c_fft_col_op_st_V_read_reg_581 <= c_fft_col_op_st_V_dout;
        icmp_ln145_1_reg_595 <= icmp_ln145_1_fu_266_p2;
        icmp_ln145_reg_587 <= icmp_ln145_fu_260_p2;
        or_ln550_reg_570[4] <= or_ln550_fu_236_p2[4];
        trunc_ln550_reg_559 <= trunc_ln550_fu_224_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln1057_fu_164_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_return = empty_fu_132_p1;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_92;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_x_load = 8'd0;
    end else begin
        ap_sig_allocacmp_x_load = x_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_y_load = 8'd0;
    end else begin
        ap_sig_allocacmp_y_load = y_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (icmp_ln1057_fu_164_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fft_col_op_st_V_blk_n = c_fft_col_op_st_V_empty_n;
    end else begin
        c_fft_col_op_st_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_164_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fft_col_op_st_V_read = 1'b1;
    end else begin
        c_fft_col_op_st_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifmap_CF_M_imag_ce0 = 1'b1;
    end else begin
        ifmap_CF_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifmap_CF_M_imag_we0 = shl_ln145_2_fu_424_p2;
    end else begin
        ifmap_CF_M_imag_we0 = 4'd0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifmap_CF_M_real_ce0 = 1'b1;
    end else begin
        ifmap_CF_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifmap_CF_M_real_we0 = shl_ln145_2_fu_424_p2;
    end else begin
        ifmap_CF_M_real_we0 = 4'd0;
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

assign add_ln1057_fu_170_p2 = (ap_sig_allocacmp_indvar_flatten_load + 16'd1);

assign add_ln551_fu_182_p2 = (ap_sig_allocacmp_x_load + 8'd1);

assign add_ln554_fu_272_p2 = (select_ln550_fu_194_p3 + 8'd1);

assign add_ln557_fu_254_p2 = (tmp_11_cast_fu_246_p3 + zext_ln550_fu_220_p1);

assign and_ln145_2_fu_522_p2 = (shl_ln145_4_fu_510_p2 & lshr_ln145_1_fu_516_p2);

assign and_ln145_cast_mid2_v_fu_228_p3 = {{trunc_ln550_fu_224_p1}, {4'd0}};

assign and_ln145_fu_400_p2 = (shl_ln145_1_fu_388_p2 & lshr_ln145_fu_394_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_164_p2 == 1'd0) & (c_fft_col_op_st_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_164_p2 == 1'd0) & (c_fft_col_op_st_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_164_p2 == 1'd0) & (c_fft_col_op_st_V_empty_n == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_116 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bound_fu_140_p0 = cast_fu_136_p1;

assign bound_fu_140_p1 = cast_fu_136_p1;

assign cast_fu_136_p1 = empty_fu_132_p1;

assign empty_fu_132_p1 = ctrl1_reg[7:0];

assign icmp_ln1057_2_fu_188_p2 = ((ap_sig_allocacmp_y_load == empty_fu_132_p1) ? 1'b1 : 1'b0);

assign icmp_ln1057_fu_164_p2 = ((ap_sig_allocacmp_indvar_flatten_load == bound_fu_140_p2) ? 1'b1 : 1'b0);

assign icmp_ln145_1_fu_266_p2 = ((and_ln145_cast_mid2_v_fu_228_p3 > or_ln550_fu_236_p2) ? 1'b1 : 1'b0);

assign icmp_ln145_fu_260_p2 = ((and_ln145_cast_mid2_v_fu_228_p3 > or_ln550_fu_236_p2) ? 1'b1 : 1'b0);

assign ifmap_CF_M_imag_address0 = zext_ln557_fu_293_p1;

assign ifmap_CF_M_imag_d0 = (select_ln145_7_fu_503_p3 & and_ln145_2_fu_522_p2);

assign ifmap_CF_M_real_address0 = zext_ln557_fu_293_p1;

assign ifmap_CF_M_real_d0 = (select_ln145_3_fu_381_p3 & and_ln145_fu_400_p2);

assign lshr_ln145_1_fu_516_p2 = 32'd4294967295 >> zext_ln145_12_fu_483_p1;

assign lshr_ln145_fu_394_p2 = 32'd4294967295 >> zext_ln145_5_fu_361_p1;

assign or_ln550_fu_236_p2 = (5'd15 | and_ln145_cast_mid2_v_fu_228_p3);

assign select_ln145_1_fu_333_p3 = ((icmp_ln145_reg_587[0:0] == 1'b1) ? zext_ln145_1_fu_313_p1 : zext_ln145_fu_310_p1);

assign select_ln145_2_fu_340_p3 = ((icmp_ln145_reg_587[0:0] == 1'b1) ? xor_ln145_fu_320_p2 : zext_ln145_fu_310_p1);

assign select_ln145_3_fu_381_p3 = ((icmp_ln145_reg_587[0:0] == 1'b1) ? tmp_fu_371_p4 : shl_ln145_fu_365_p2);

assign select_ln145_4_fu_448_p3 = ((icmp_ln145_1_reg_595[0:0] == 1'b1) ? zext_ln145_7_fu_432_p1 : zext_ln145_8_fu_435_p1);

assign select_ln145_5_fu_455_p3 = ((icmp_ln145_1_reg_595[0:0] == 1'b1) ? zext_ln145_8_fu_435_p1 : zext_ln145_7_fu_432_p1);

assign select_ln145_6_fu_462_p3 = ((icmp_ln145_1_reg_595[0:0] == 1'b1) ? xor_ln145_2_fu_442_p2 : zext_ln145_7_fu_432_p1);

assign select_ln145_7_fu_503_p3 = ((icmp_ln145_1_reg_595[0:0] == 1'b1) ? tmp_2_fu_493_p4 : shl_ln145_3_fu_487_p2);

assign select_ln145_fu_326_p3 = ((icmp_ln145_reg_587[0:0] == 1'b1) ? zext_ln145_fu_310_p1 : zext_ln145_1_fu_313_p1);

assign select_ln550_1_fu_202_p3 = ((icmp_ln1057_2_fu_188_p2[0:0] == 1'b1) ? add_ln551_fu_182_p2 : ap_sig_allocacmp_x_load);

assign select_ln550_fu_194_p3 = ((icmp_ln1057_2_fu_188_p2[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_y_load);

assign shl_ln145_1_fu_388_p2 = 32'd4294967295 << zext_ln145_4_fu_357_p1;

assign shl_ln145_2_fu_424_p2 = 4'd3 << zext_ln145_6_fu_420_p1;

assign shl_ln145_3_fu_487_p2 = zext_ln145_9_fu_438_p1 << zext_ln145_10_fu_475_p1;

assign shl_ln145_4_fu_510_p2 = 32'd4294967295 << zext_ln145_11_fu_479_p1;

assign shl_ln145_fu_365_p2 = zext_ln145_2_fu_316_p1 << zext_ln145_3_fu_353_p1;

assign tmp_11_cast_fu_246_p3 = {{trunc_ln557_fu_242_p1}, {5'd0}};

assign tmp_1_fu_413_p3 = {{trunc_ln550_reg_559}, {1'd0}};

integer ap_tvar_int_0;

always @ (shl_ln145_3_fu_487_p2) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            tmp_2_fu_493_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_2_fu_493_p4[ap_tvar_int_0] = shl_ln145_3_fu_487_p2[31 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln145_fu_365_p2) begin
    for (ap_tvar_int_1 = 32 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 0) begin
            tmp_fu_371_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_fu_371_p4[ap_tvar_int_1] = shl_ln145_fu_365_p2[31 - ap_tvar_int_1];
        end
    end
end

assign trunc_ln145_1_fu_301_p4 = {{c_fft_col_op_st_V_read_reg_581[31:16]}};

assign trunc_ln145_fu_298_p1 = c_fft_col_op_st_V_read_reg_581[15:0];

assign trunc_ln550_fu_224_p1 = select_ln550_1_fu_202_p3[0:0];

assign trunc_ln557_fu_242_p1 = select_ln550_fu_194_p3[5:0];

assign xor_ln145_1_fu_347_p2 = (select_ln145_fu_326_p3 ^ 6'd31);

assign xor_ln145_2_fu_442_p2 = (zext_ln145_7_fu_432_p1 ^ 6'd31);

assign xor_ln145_3_fu_469_p2 = (select_ln145_4_fu_448_p3 ^ 6'd31);

assign xor_ln145_fu_320_p2 = (zext_ln145_fu_310_p1 ^ 6'd31);

assign zext_ln145_10_fu_475_p1 = select_ln145_6_fu_462_p3;

assign zext_ln145_11_fu_479_p1 = select_ln145_5_fu_455_p3;

assign zext_ln145_12_fu_483_p1 = xor_ln145_3_fu_469_p2;

assign zext_ln145_1_fu_313_p1 = or_ln550_reg_570;

assign zext_ln145_2_fu_316_p1 = trunc_ln145_fu_298_p1;

assign zext_ln145_3_fu_353_p1 = select_ln145_2_fu_340_p3;

assign zext_ln145_4_fu_357_p1 = select_ln145_1_fu_333_p3;

assign zext_ln145_5_fu_361_p1 = xor_ln145_1_fu_347_p2;

assign zext_ln145_6_fu_420_p1 = tmp_1_fu_413_p3;

assign zext_ln145_7_fu_432_p1 = and_ln145_cast_mid2_v_reg_564;

assign zext_ln145_8_fu_435_p1 = or_ln550_reg_570;

assign zext_ln145_9_fu_438_p1 = trunc_ln145_1_fu_301_p4;

assign zext_ln145_fu_310_p1 = and_ln145_cast_mid2_v_reg_564;

assign zext_ln550_fu_220_p1 = zext_ln557_mid2_v_fu_210_p4;

assign zext_ln557_fu_293_p1 = add_ln557_reg_576;

assign zext_ln557_mid2_v_fu_210_p4 = {{select_ln550_1_fu_202_p3[7:1]}};

always @ (posedge ap_clk) begin
    and_ln145_cast_mid2_v_reg_564[3:0] <= 4'b0000;
    or_ln550_reg_570[3:0] <= 4'b1111;
end

endmodule //Mem_patch_Wr_ifmap_gen
