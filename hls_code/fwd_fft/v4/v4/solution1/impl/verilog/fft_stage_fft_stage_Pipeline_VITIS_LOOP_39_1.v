// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_stage_fft_stage_Pipeline_VITIS_LOOP_39_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln39,
        IN_r_address0,
        IN_r_ce0,
        IN_r_q0,
        IN_r_address1,
        IN_r_ce1,
        IN_r_q1,
        OUT_r_address0,
        OUT_r_ce0,
        OUT_r_we0,
        OUT_r_d0,
        OUT_r_address1,
        OUT_r_ce1,
        OUT_r_we1,
        OUT_r_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] zext_ln39;
output  [5:0] IN_r_address0;
output   IN_r_ce0;
input  [31:0] IN_r_q0;
output  [5:0] IN_r_address1;
output   IN_r_ce1;
input  [31:0] IN_r_q1;
output  [5:0] OUT_r_address0;
output   OUT_r_ce0;
output  [3:0] OUT_r_we0;
output  [31:0] OUT_r_d0;
output  [5:0] OUT_r_address1;
output   OUT_r_ce1;
output  [3:0] OUT_r_we1;
output  [31:0] OUT_r_d1;

reg ap_idle;
reg IN_r_ce0;
reg IN_r_ce1;
reg OUT_r_ce0;
reg[3:0] OUT_r_we0;
reg OUT_r_ce1;
reg[3:0] OUT_r_we1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1057_fu_115_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln39_cast_fu_102_p1;
reg   [63:0] zext_ln39_cast_reg_153;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] x_1_reg_158;
wire   [63:0] zext_ln43_fu_130_p1;
reg   [63:0] zext_ln43_reg_171;
wire    ap_block_pp0_stage0;
reg   [63:0] x_fu_44;
wire   [63:0] add_ln44_fu_135_p2;
wire    ap_loop_init;
wire   [5:0] trunc_ln1057_fu_120_p1;
wire   [5:0] or_ln43_fu_124_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_stage_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_fu_44 <= 64'd0;
        end else if (((icmp_ln1057_fu_115_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_fu_44 <= add_ln44_fu_135_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_1_reg_158 <= x_fu_44;
        zext_ln39_cast_reg_153[7 : 0] <= zext_ln39_cast_fu_102_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_fu_115_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln43_reg_171[5 : 1] <= zext_ln43_fu_130_p1[5 : 1];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        IN_r_ce0 = 1'b1;
    end else begin
        IN_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        IN_r_ce1 = 1'b1;
    end else begin
        IN_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_r_ce0 = 1'b1;
    end else begin
        OUT_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_r_ce1 = 1'b1;
    end else begin
        OUT_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_r_we0 = 4'd15;
    end else begin
        OUT_r_we0 = 4'd0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_r_we1 = 4'd15;
    end else begin
        OUT_r_we1 = 4'd0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_115_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign IN_r_address0 = zext_ln43_fu_130_p1;

assign IN_r_address1 = x_fu_44;

assign OUT_r_address0 = zext_ln43_reg_171;

assign OUT_r_address1 = x_1_reg_158;

assign OUT_r_d0 = IN_r_q0;

assign OUT_r_d1 = IN_r_q1;

assign add_ln44_fu_135_p2 = (x_fu_44 + 64'd2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln1057_fu_115_p2 = ((x_fu_44 < zext_ln39_cast_reg_153) ? 1'b1 : 1'b0);

assign or_ln43_fu_124_p2 = (trunc_ln1057_fu_120_p1 | 6'd1);

assign trunc_ln1057_fu_120_p1 = x_fu_44[5:0];

assign zext_ln39_cast_fu_102_p1 = zext_ln39;

assign zext_ln43_fu_130_p1 = or_ln43_fu_124_p2;

always @ (posedge ap_clk) begin
    zext_ln39_cast_reg_153[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln43_reg_171[0] <= 1'b1;
    zext_ln43_reg_171[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_stage_fft_stage_Pipeline_VITIS_LOOP_39_1