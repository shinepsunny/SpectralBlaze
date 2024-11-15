// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_ifmap_gen_y (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        c_fft_col_op_st_dout,
        c_fft_col_op_st_empty_n,
        c_fft_col_op_st_read,
        ifmap_CF_M_real_address0,
        ifmap_CF_M_real_ce0,
        ifmap_CF_M_real_we0,
        ifmap_CF_M_real_d0,
        ifmap_CF_M_imag_address0,
        ifmap_CF_M_imag_ce0,
        ifmap_CF_M_imag_we0,
        ifmap_CF_M_imag_d0,
        p_read,
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
input  [31:0] c_fft_col_op_st_dout;
input   c_fft_col_op_st_empty_n;
output   c_fft_col_op_st_read;
output  [10:0] ifmap_CF_M_real_address0;
output   ifmap_CF_M_real_ce0;
output  [3:0] ifmap_CF_M_real_we0;
output  [31:0] ifmap_CF_M_real_d0;
output  [10:0] ifmap_CF_M_imag_address0;
output   ifmap_CF_M_imag_ce0;
output  [3:0] ifmap_CF_M_imag_we0;
output  [31:0] ifmap_CF_M_imag_d0;
input  [7:0] p_read;
output  [7:0] ap_return;

reg ap_idle;
reg c_fft_col_op_st_read;
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
wire   [0:0] icmp_ln1057_fu_160_p2;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    c_fft_col_op_st_blk_n;
wire    ap_block_pp0_stage0;
wire   [0:0] trunc_ln399_fu_220_p1;
reg   [0:0] trunc_ln399_reg_555;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] and_ln145_cast_mid2_v_fu_224_p3;
reg   [4:0] and_ln145_cast_mid2_v_reg_560;
wire   [4:0] or_ln399_fu_232_p2;
reg   [4:0] or_ln399_reg_566;
wire   [10:0] add_ln406_fu_250_p2;
reg   [10:0] add_ln406_reg_572;
reg   [31:0] c_fft_col_op_st_read_reg_577;
wire   [0:0] icmp_ln145_fu_256_p2;
reg   [0:0] icmp_ln145_reg_583;
wire   [0:0] icmp_ln145_1_fu_262_p2;
reg   [0:0] icmp_ln145_1_reg_591;
wire   [63:0] zext_ln406_fu_289_p1;
reg   [7:0] y_fu_84;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_y_load;
wire   [7:0] add_ln403_fu_268_p2;
reg   [7:0] x_fu_88;
reg   [7:0] ap_sig_allocacmp_x_load;
wire   [7:0] select_ln399_1_fu_198_p3;
reg   [15:0] indvar_flatten_fu_92;
reg   [15:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [15:0] add_ln1057_fu_166_p2;
wire   [3:0] shl_ln145_2_fu_411_p2;
wire   [7:0] bound_fu_136_p0;
wire   [15:0] cast_fu_132_p1;
wire   [7:0] bound_fu_136_p1;
wire   [15:0] bound_fu_136_p2;
wire   [0:0] icmp_ln1057_2_fu_184_p2;
wire   [7:0] add_ln400_fu_178_p2;
wire   [6:0] zext_ln406_mid2_v_fu_206_p4;
wire   [7:0] select_ln399_fu_190_p3;
wire   [5:0] trunc_ln406_fu_238_p1;
wire   [10:0] tmp_10_cast_fu_242_p3;
wire   [10:0] zext_ln399_fu_216_p1;
wire   [15:0] trunc_ln145_fu_294_p1;
wire   [5:0] zext_ln145_fu_297_p1;
wire   [5:0] zext_ln145_1_fu_300_p1;
wire   [5:0] xor_ln145_fu_307_p2;
wire   [5:0] select_ln145_fu_313_p3;
wire   [5:0] select_ln145_2_fu_327_p3;
wire   [5:0] select_ln145_1_fu_320_p3;
wire   [5:0] xor_ln145_1_fu_334_p2;
wire   [31:0] zext_ln145_2_fu_303_p1;
wire   [31:0] zext_ln145_3_fu_340_p1;
wire   [31:0] shl_ln145_fu_352_p2;
reg   [31:0] tmp_fu_358_p4;
wire   [31:0] zext_ln145_4_fu_344_p1;
wire   [31:0] zext_ln145_5_fu_348_p1;
wire   [31:0] shl_ln145_1_fu_375_p2;
wire   [31:0] lshr_ln145_fu_381_p2;
wire   [31:0] select_ln145_3_fu_368_p3;
wire   [31:0] and_ln145_fu_387_p2;
wire   [1:0] tmp_1_fu_400_p3;
wire   [3:0] zext_ln145_6_fu_407_p1;
wire   [15:0] trunc_ln145_2_fu_419_p4;
wire   [5:0] zext_ln145_7_fu_428_p1;
wire   [5:0] zext_ln145_8_fu_431_p1;
wire   [5:0] xor_ln145_2_fu_438_p2;
wire   [5:0] select_ln145_4_fu_444_p3;
wire   [5:0] select_ln145_6_fu_458_p3;
wire   [5:0] select_ln145_5_fu_451_p3;
wire   [5:0] xor_ln145_3_fu_465_p2;
wire   [31:0] zext_ln145_9_fu_434_p1;
wire   [31:0] zext_ln145_10_fu_471_p1;
wire   [31:0] shl_ln145_3_fu_483_p2;
reg   [31:0] tmp_2_fu_489_p4;
wire   [31:0] zext_ln145_11_fu_475_p1;
wire   [31:0] zext_ln145_12_fu_479_p1;
wire   [31:0] shl_ln145_4_fu_506_p2;
wire   [31:0] lshr_ln145_1_fu_512_p2;
wire   [31:0] select_ln145_7_fu_499_p3;
wire   [31:0] and_ln145_2_fu_518_p2;
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

fwd_fft_mul_8ns_8ns_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8ns_8ns_16_1_1_U441(
    .din0(bound_fu_136_p0),
    .din1(bound_fu_136_p1),
    .dout(bound_fu_136_p2)
);

fwd_fft_flow_control_loop_pipe flow_control_loop_pipe_U(
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
        if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_160_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_return_preg <= p_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((icmp_ln1057_fu_160_p2 == 1'd0)) begin
            indvar_flatten_fu_92 <= add_ln1057_fu_166_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_92 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((icmp_ln1057_fu_160_p2 == 1'd0)) begin
            x_fu_88 <= select_ln399_1_fu_198_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_88 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((icmp_ln1057_fu_160_p2 == 1'd0)) begin
            y_fu_84 <= add_ln403_fu_268_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            y_fu_84 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_160_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln406_reg_572 <= add_ln406_fu_250_p2;
        and_ln145_cast_mid2_v_reg_560[4] <= and_ln145_cast_mid2_v_fu_224_p3[4];
        c_fft_col_op_st_read_reg_577 <= c_fft_col_op_st_dout;
        icmp_ln145_1_reg_591 <= icmp_ln145_1_fu_262_p2;
        icmp_ln145_reg_583 <= icmp_ln145_fu_256_p2;
        or_ln399_reg_566[4] <= or_ln399_fu_232_p2[4];
        trunc_ln399_reg_555 <= trunc_ln399_fu_220_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln1057_fu_160_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_160_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_return = p_read;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (icmp_ln1057_fu_160_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fft_col_op_st_blk_n = c_fft_col_op_st_empty_n;
    end else begin
        c_fft_col_op_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_160_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fft_col_op_st_read = 1'b1;
    end else begin
        c_fft_col_op_st_read = 1'b0;
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
        ifmap_CF_M_imag_we0 = shl_ln145_2_fu_411_p2;
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
        ifmap_CF_M_real_we0 = shl_ln145_2_fu_411_p2;
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

assign add_ln1057_fu_166_p2 = (ap_sig_allocacmp_indvar_flatten_load + 16'd1);

assign add_ln400_fu_178_p2 = (ap_sig_allocacmp_x_load + 8'd1);

assign add_ln403_fu_268_p2 = (select_ln399_fu_190_p3 + 8'd1);

assign add_ln406_fu_250_p2 = (tmp_10_cast_fu_242_p3 + zext_ln399_fu_216_p1);

assign and_ln145_2_fu_518_p2 = (shl_ln145_4_fu_506_p2 & lshr_ln145_1_fu_512_p2);

assign and_ln145_cast_mid2_v_fu_224_p3 = {{trunc_ln399_fu_220_p1}, {4'd0}};

assign and_ln145_fu_387_p2 = (shl_ln145_1_fu_375_p2 & lshr_ln145_fu_381_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_160_p2 == 1'd0) & (c_fft_col_op_st_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_160_p2 == 1'd0) & (c_fft_col_op_st_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_160_p2 == 1'd0) & (c_fft_col_op_st_empty_n == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_116 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bound_fu_136_p0 = cast_fu_132_p1;

assign bound_fu_136_p1 = cast_fu_132_p1;

assign cast_fu_132_p1 = p_read;

assign icmp_ln1057_2_fu_184_p2 = ((ap_sig_allocacmp_y_load == p_read) ? 1'b1 : 1'b0);

assign icmp_ln1057_fu_160_p2 = ((ap_sig_allocacmp_indvar_flatten_load == bound_fu_136_p2) ? 1'b1 : 1'b0);

assign icmp_ln145_1_fu_262_p2 = ((and_ln145_cast_mid2_v_fu_224_p3 > or_ln399_fu_232_p2) ? 1'b1 : 1'b0);

assign icmp_ln145_fu_256_p2 = ((and_ln145_cast_mid2_v_fu_224_p3 > or_ln399_fu_232_p2) ? 1'b1 : 1'b0);

assign ifmap_CF_M_imag_address0 = zext_ln406_fu_289_p1;

assign ifmap_CF_M_imag_d0 = (select_ln145_7_fu_499_p3 & and_ln145_2_fu_518_p2);

assign ifmap_CF_M_real_address0 = zext_ln406_fu_289_p1;

assign ifmap_CF_M_real_d0 = (select_ln145_3_fu_368_p3 & and_ln145_fu_387_p2);

assign lshr_ln145_1_fu_512_p2 = 32'd4294967295 >> zext_ln145_12_fu_479_p1;

assign lshr_ln145_fu_381_p2 = 32'd4294967295 >> zext_ln145_5_fu_348_p1;

assign or_ln399_fu_232_p2 = (5'd15 | and_ln145_cast_mid2_v_fu_224_p3);

assign select_ln145_1_fu_320_p3 = ((icmp_ln145_reg_583[0:0] == 1'b1) ? zext_ln145_1_fu_300_p1 : zext_ln145_fu_297_p1);

assign select_ln145_2_fu_327_p3 = ((icmp_ln145_reg_583[0:0] == 1'b1) ? xor_ln145_fu_307_p2 : zext_ln145_fu_297_p1);

assign select_ln145_3_fu_368_p3 = ((icmp_ln145_reg_583[0:0] == 1'b1) ? tmp_fu_358_p4 : shl_ln145_fu_352_p2);

assign select_ln145_4_fu_444_p3 = ((icmp_ln145_1_reg_591[0:0] == 1'b1) ? zext_ln145_7_fu_428_p1 : zext_ln145_8_fu_431_p1);

assign select_ln145_5_fu_451_p3 = ((icmp_ln145_1_reg_591[0:0] == 1'b1) ? zext_ln145_8_fu_431_p1 : zext_ln145_7_fu_428_p1);

assign select_ln145_6_fu_458_p3 = ((icmp_ln145_1_reg_591[0:0] == 1'b1) ? xor_ln145_2_fu_438_p2 : zext_ln145_7_fu_428_p1);

assign select_ln145_7_fu_499_p3 = ((icmp_ln145_1_reg_591[0:0] == 1'b1) ? tmp_2_fu_489_p4 : shl_ln145_3_fu_483_p2);

assign select_ln145_fu_313_p3 = ((icmp_ln145_reg_583[0:0] == 1'b1) ? zext_ln145_fu_297_p1 : zext_ln145_1_fu_300_p1);

assign select_ln399_1_fu_198_p3 = ((icmp_ln1057_2_fu_184_p2[0:0] == 1'b1) ? add_ln400_fu_178_p2 : ap_sig_allocacmp_x_load);

assign select_ln399_fu_190_p3 = ((icmp_ln1057_2_fu_184_p2[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_y_load);

assign shl_ln145_1_fu_375_p2 = 32'd4294967295 << zext_ln145_4_fu_344_p1;

assign shl_ln145_2_fu_411_p2 = 4'd3 << zext_ln145_6_fu_407_p1;

assign shl_ln145_3_fu_483_p2 = zext_ln145_9_fu_434_p1 << zext_ln145_10_fu_471_p1;

assign shl_ln145_4_fu_506_p2 = 32'd4294967295 << zext_ln145_11_fu_475_p1;

assign shl_ln145_fu_352_p2 = zext_ln145_2_fu_303_p1 << zext_ln145_3_fu_340_p1;

assign tmp_10_cast_fu_242_p3 = {{trunc_ln406_fu_238_p1}, {5'd0}};

assign tmp_1_fu_400_p3 = {{trunc_ln399_reg_555}, {1'd0}};

integer ap_tvar_int_0;

always @ (shl_ln145_3_fu_483_p2) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            tmp_2_fu_489_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_2_fu_489_p4[ap_tvar_int_0] = shl_ln145_3_fu_483_p2[31 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln145_fu_352_p2) begin
    for (ap_tvar_int_1 = 32 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 0) begin
            tmp_fu_358_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_fu_358_p4[ap_tvar_int_1] = shl_ln145_fu_352_p2[31 - ap_tvar_int_1];
        end
    end
end

assign trunc_ln145_2_fu_419_p4 = {{c_fft_col_op_st_read_reg_577[31:16]}};

assign trunc_ln145_fu_294_p1 = c_fft_col_op_st_read_reg_577[15:0];

assign trunc_ln399_fu_220_p1 = select_ln399_1_fu_198_p3[0:0];

assign trunc_ln406_fu_238_p1 = select_ln399_fu_190_p3[5:0];

assign xor_ln145_1_fu_334_p2 = (select_ln145_fu_313_p3 ^ 6'd31);

assign xor_ln145_2_fu_438_p2 = (zext_ln145_7_fu_428_p1 ^ 6'd31);

assign xor_ln145_3_fu_465_p2 = (select_ln145_4_fu_444_p3 ^ 6'd31);

assign xor_ln145_fu_307_p2 = (zext_ln145_fu_297_p1 ^ 6'd31);

assign zext_ln145_10_fu_471_p1 = select_ln145_6_fu_458_p3;

assign zext_ln145_11_fu_475_p1 = select_ln145_5_fu_451_p3;

assign zext_ln145_12_fu_479_p1 = xor_ln145_3_fu_465_p2;

assign zext_ln145_1_fu_300_p1 = or_ln399_reg_566;

assign zext_ln145_2_fu_303_p1 = trunc_ln145_fu_294_p1;

assign zext_ln145_3_fu_340_p1 = select_ln145_2_fu_327_p3;

assign zext_ln145_4_fu_344_p1 = select_ln145_1_fu_320_p3;

assign zext_ln145_5_fu_348_p1 = xor_ln145_1_fu_334_p2;

assign zext_ln145_6_fu_407_p1 = tmp_1_fu_400_p3;

assign zext_ln145_7_fu_428_p1 = and_ln145_cast_mid2_v_reg_560;

assign zext_ln145_8_fu_431_p1 = or_ln399_reg_566;

assign zext_ln145_9_fu_434_p1 = trunc_ln145_2_fu_419_p4;

assign zext_ln145_fu_297_p1 = and_ln145_cast_mid2_v_reg_560;

assign zext_ln399_fu_216_p1 = zext_ln406_mid2_v_fu_206_p4;

assign zext_ln406_fu_289_p1 = add_ln406_reg_572;

assign zext_ln406_mid2_v_fu_206_p4 = {{select_ln399_1_fu_198_p3[7:1]}};

always @ (posedge ap_clk) begin
    and_ln145_cast_mid2_v_reg_560[3:0] <= 4'b0000;
    or_ln399_reg_566[3:0] <= 4'b1111;
end

endmodule //fwd_fft_ifmap_gen_y
