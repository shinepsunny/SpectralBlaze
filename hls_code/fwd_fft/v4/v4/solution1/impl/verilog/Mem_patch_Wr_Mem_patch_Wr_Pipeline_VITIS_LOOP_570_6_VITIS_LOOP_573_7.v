// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Mem_patch_Wr_Mem_patch_Wr_Pipeline_VITIS_LOOP_570_6_VITIS_LOOP_573_7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bound4,
        zext_ln554,
        ifmap_CF_M_real_address0,
        ifmap_CF_M_real_ce0,
        ifmap_CF_M_real_q0,
        ifmap_CF_M_real_address1,
        ifmap_CF_M_real_ce1,
        ifmap_CF_M_real_q1,
        ifmap_CF_M_imag_address0,
        ifmap_CF_M_imag_ce0,
        ifmap_CF_M_imag_q0,
        ifmap_CF_M_imag_address1,
        ifmap_CF_M_imag_ce1,
        ifmap_CF_M_imag_q1,
        fft_out,
        fft_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [69:0] bound4;
input  [7:0] zext_ln554;
output  [10:0] ifmap_CF_M_real_address0;
output   ifmap_CF_M_real_ce0;
input  [31:0] ifmap_CF_M_real_q0;
output  [10:0] ifmap_CF_M_real_address1;
output   ifmap_CF_M_real_ce1;
input  [31:0] ifmap_CF_M_real_q1;
output  [10:0] ifmap_CF_M_imag_address0;
output   ifmap_CF_M_imag_ce0;
input  [31:0] ifmap_CF_M_imag_q0;
output  [10:0] ifmap_CF_M_imag_address1;
output   ifmap_CF_M_imag_ce1;
input  [31:0] ifmap_CF_M_imag_q1;
output  [127:0] fft_out;
output   fft_out_ap_vld;

reg ap_idle;
reg ifmap_CF_M_real_ce0;
reg ifmap_CF_M_real_ce1;
reg ifmap_CF_M_imag_ce0;
reg ifmap_CF_M_imag_ce1;
reg fft_out_ap_vld;

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
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1057_fu_173_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln554_cast_fu_151_p1;
reg   [63:0] zext_ln554_cast_reg_398;
reg   [63:0] x_load_reg_407;
wire   [0:0] icmp_ln1057_1_fu_196_p2;
reg   [0:0] icmp_ln1057_1_reg_412;
wire   [5:0] trunc_ln578_fu_209_p1;
reg   [5:0] trunc_ln578_reg_417;
wire   [63:0] zext_ln578_1_fu_256_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln578_3_fu_278_p1;
reg   [63:0] x_fu_70;
wire   [63:0] add_ln573_fu_284_p2;
reg   [63:0] ap_sig_allocacmp_x_load;
wire    ap_loop_init;
reg   [7:0] y_fu_74;
wire   [7:0] select_ln1057_1_fu_201_p3;
reg   [69:0] indvar_flatten7_fu_78;
wire   [69:0] add_ln1057_fu_178_p2;
wire    ap_block_pp0_stage0_01001;
wire   [7:0] add_ln570_fu_190_p2;
wire   [63:0] select_ln1057_fu_223_p3;
wire   [6:0] lshr_ln_fu_236_p4;
wire   [10:0] tmp_12_cast_fu_229_p3;
wire   [10:0] zext_ln578_fu_246_p1;
wire   [10:0] add_ln578_fu_250_p2;
wire   [6:0] or_ln578_fu_262_p2;
wire   [10:0] zext_ln578_2_fu_268_p1;
wire   [10:0] add_ln578_1_fu_272_p2;
wire   [15:0] tmp_6_fu_341_p4;
wire   [15:0] tmp_s_fu_331_p4;
wire   [15:0] trunc_ln578_4_fu_327_p1;
wire   [15:0] trunc_ln578_3_fu_323_p1;
wire   [15:0] tmp_5_fu_313_p4;
wire   [15:0] tmp_4_fu_303_p4;
wire   [15:0] trunc_ln578_2_fu_299_p1;
wire   [15:0] trunc_ln578_1_fu_295_p1;
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

Mem_patch_Wr_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_78 <= 70'd0;
        end else if (((icmp_ln1057_fu_173_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten7_fu_78 <= add_ln1057_fu_178_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            x_fu_70 <= 64'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            x_fu_70 <= add_ln573_fu_284_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            y_fu_74 <= 8'd0;
        end else if (((icmp_ln1057_fu_173_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            y_fu_74 <= select_ln1057_1_fu_201_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        zext_ln554_cast_reg_398[7 : 0] <= zext_ln554_cast_fu_151_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_fu_173_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1057_1_reg_412 <= icmp_ln1057_1_fu_196_p2;
        trunc_ln578_reg_417 <= trunc_ln578_fu_209_p1;
        x_load_reg_407 <= ap_sig_allocacmp_x_load;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_173_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_x_load = add_ln573_fu_284_p2;
    end else begin
        ap_sig_allocacmp_x_load = x_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        fft_out_ap_vld = 1'b1;
    end else begin
        fft_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ifmap_CF_M_imag_ce0 = 1'b1;
    end else begin
        ifmap_CF_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ifmap_CF_M_imag_ce1 = 1'b1;
    end else begin
        ifmap_CF_M_imag_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ifmap_CF_M_real_ce0 = 1'b1;
    end else begin
        ifmap_CF_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ifmap_CF_M_real_ce1 = 1'b1;
    end else begin
        ifmap_CF_M_real_ce1 = 1'b0;
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

assign add_ln1057_fu_178_p2 = (indvar_flatten7_fu_78 + 70'd1);

assign add_ln570_fu_190_p2 = (y_fu_74 + 8'd1);

assign add_ln573_fu_284_p2 = (select_ln1057_fu_223_p3 + 64'd4);

assign add_ln578_1_fu_272_p2 = (tmp_12_cast_fu_229_p3 + zext_ln578_2_fu_268_p1);

assign add_ln578_fu_250_p2 = (tmp_12_cast_fu_229_p3 + zext_ln578_fu_246_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign fft_out = {{{{{{{{tmp_6_fu_341_p4}, {tmp_s_fu_331_p4}}, {trunc_ln578_4_fu_327_p1}}, {trunc_ln578_3_fu_323_p1}}, {tmp_5_fu_313_p4}}, {tmp_4_fu_303_p4}}, {trunc_ln578_2_fu_299_p1}}, {trunc_ln578_1_fu_295_p1}};

assign icmp_ln1057_1_fu_196_p2 = (($signed(ap_sig_allocacmp_x_load) < $signed(zext_ln554_cast_reg_398)) ? 1'b1 : 1'b0);

assign icmp_ln1057_fu_173_p2 = ((indvar_flatten7_fu_78 == bound4) ? 1'b1 : 1'b0);

assign ifmap_CF_M_imag_address0 = zext_ln578_3_fu_278_p1;

assign ifmap_CF_M_imag_address1 = zext_ln578_1_fu_256_p1;

assign ifmap_CF_M_real_address0 = zext_ln578_3_fu_278_p1;

assign ifmap_CF_M_real_address1 = zext_ln578_1_fu_256_p1;

assign lshr_ln_fu_236_p4 = {{select_ln1057_fu_223_p3[7:1]}};

assign or_ln578_fu_262_p2 = (lshr_ln_fu_236_p4 | 7'd1);

assign select_ln1057_1_fu_201_p3 = ((icmp_ln1057_1_fu_196_p2[0:0] == 1'b1) ? y_fu_74 : add_ln570_fu_190_p2);

assign select_ln1057_fu_223_p3 = ((icmp_ln1057_1_reg_412[0:0] == 1'b1) ? x_load_reg_407 : 64'd0);

assign tmp_12_cast_fu_229_p3 = {{trunc_ln578_reg_417}, {5'd0}};

assign tmp_4_fu_303_p4 = {{ifmap_CF_M_real_q1[31:16]}};

assign tmp_5_fu_313_p4 = {{ifmap_CF_M_imag_q1[31:16]}};

assign tmp_6_fu_341_p4 = {{ifmap_CF_M_imag_q0[31:16]}};

assign tmp_s_fu_331_p4 = {{ifmap_CF_M_real_q0[31:16]}};

assign trunc_ln578_1_fu_295_p1 = ifmap_CF_M_real_q1[15:0];

assign trunc_ln578_2_fu_299_p1 = ifmap_CF_M_imag_q1[15:0];

assign trunc_ln578_3_fu_323_p1 = ifmap_CF_M_real_q0[15:0];

assign trunc_ln578_4_fu_327_p1 = ifmap_CF_M_imag_q0[15:0];

assign trunc_ln578_fu_209_p1 = select_ln1057_1_fu_201_p3[5:0];

assign zext_ln554_cast_fu_151_p1 = zext_ln554;

assign zext_ln578_1_fu_256_p1 = add_ln578_fu_250_p2;

assign zext_ln578_2_fu_268_p1 = or_ln578_fu_262_p2;

assign zext_ln578_3_fu_278_p1 = add_ln578_1_fu_272_p2;

assign zext_ln578_fu_246_p1 = lshr_ln_fu_236_p4;

always @ (posedge ap_clk) begin
    zext_ln554_cast_reg_398[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //Mem_patch_Wr_Mem_patch_Wr_Pipeline_VITIS_LOOP_570_6_VITIS_LOOP_573_7
