// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module IFFT_AP_fft_stage_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        I_address0,
        I_ce0,
        I_q0,
        I_address1,
        I_ce1,
        I_q1,
        X_address0,
        X_ce0,
        X_we0,
        X_d0,
        X_address1,
        X_ce1,
        X_we1,
        X_d1,
        p_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] I_address0;
output   I_ce0;
input  [31:0] I_q0;
output  [11:0] I_address1;
output   I_ce1;
input  [31:0] I_q1;
output  [11:0] X_address0;
output   X_ce0;
output   X_we0;
output  [31:0] X_d0;
output  [11:0] X_address1;
output   X_ce1;
output   X_we1;
output  [31:0] X_d1;
input  [31:0] p_read;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] I_address0;
reg I_ce0;
reg[11:0] I_address1;
reg I_ce1;
reg[11:0] X_address0;
reg X_ce0;
reg X_we0;
reg[31:0] X_d0;
reg[11:0] X_address1;
reg X_ce1;
reg X_we1;
reg[31:0] X_d1;
reg[31:0] ap_return;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln1039_fu_108_p2;
reg   [0:0] icmp_ln1039_reg_204;
wire   [7:0] empty_fu_114_p1;
reg   [7:0] empty_reg_208;
wire   [10:0] zext_ln1027_3_fu_138_p1;
reg   [10:0] zext_ln1027_3_reg_220;
wire   [5:0] trunc_ln1027_fu_150_p1;
reg   [5:0] trunc_ln1027_reg_225;
wire    ap_CS_fsm_state2;
wire   [11:0] tmp_s_fu_170_p3;
reg   [11:0] tmp_s_reg_233;
wire    ap_CS_fsm_state3;
wire   [6:0] trunc_ln3_fu_178_p4;
reg   [6:0] trunc_ln3_reg_238;
wire    ap_CS_fsm_state5;
wire   [13:0] bound_fu_192_p2;
reg   [13:0] bound_reg_243;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_done;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_idle;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_ready;
wire   [11:0] grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_address0;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_ce0;
wire   [11:0] grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_address1;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_ce1;
wire   [11:0] grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_address0;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_ce0;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_we0;
wire   [31:0] grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_d0;
wire   [11:0] grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_address1;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_ce1;
wire    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_we1;
wire   [31:0] grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_d1;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_done;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_idle;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_ready;
wire   [11:0] grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_address0;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_ce0;
wire   [11:0] grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_address1;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_ce1;
wire   [11:0] grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_address0;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_ce0;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_we0;
wire   [31:0] grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_d0;
wire   [11:0] grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_address1;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_ce1;
wire    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_we1;
wire   [31:0] grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_d1;
reg    grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [7:0] x1_fu_64;
wire   [7:0] add_ln63_fu_159_p2;
wire   [0:0] icmp_ln1027_fu_154_p2;
reg    ap_block_state1;
wire   [7:0] trunc_ln_fu_98_p4;
wire   [8:0] zext_ln1027_fu_118_p1;
wire   [8:0] add_ln1027_fu_122_p2;
wire   [6:0] tmp_fu_128_p4;
wire   [6:0] bound_fu_192_p0;
wire   [13:0] cast_fu_188_p1;
wire   [6:0] bound_fu_192_p1;
reg   [31:0] ap_return_preg;
reg    ap_block_state6_on_subcall_done;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start_reg = 1'b0;
#0 grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start_reg = 1'b0;
#0 ap_return_preg = 32'd0;
end

IFFT_AP_fft_stage_2_Pipeline_VITIS_LOOP_66_2 grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start),
    .ap_done(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_done),
    .ap_idle(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_idle),
    .ap_ready(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_ready),
    .empty(zext_ln1027_3_reg_220),
    .zext_ln70(tmp_s_reg_233),
    .I_address0(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_address0),
    .I_ce0(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_ce0),
    .I_q0(I_q0),
    .I_address1(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_address1),
    .I_ce1(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_ce1),
    .I_q1(I_q1),
    .X_address0(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_address0),
    .X_ce0(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_ce0),
    .X_we0(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_we0),
    .X_d0(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_d0),
    .X_address1(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_address1),
    .X_ce1(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_ce1),
    .X_we1(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_we1),
    .X_d1(grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_d1)
);

IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start),
    .ap_done(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_done),
    .ap_idle(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_idle),
    .ap_ready(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_ready),
    .bound(bound_reg_243),
    .trunc_ln17(trunc_ln3_reg_238),
    .I_address0(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_address0),
    .I_ce0(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_ce0),
    .I_q0(I_q0),
    .I_address1(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_address1),
    .I_ce1(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_ce1),
    .I_q1(I_q1),
    .X_address0(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_address0),
    .X_ce0(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_ce0),
    .X_we0(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_we0),
    .X_d0(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_d0),
    .X_address1(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_address1),
    .X_ce1(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_ce1),
    .X_we1(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_we1),
    .X_d1(grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_d1)
);

IFFT_AP_mul_7ns_7ns_14_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 7 ),
    .dout_WIDTH( 14 ))
mul_7ns_7ns_14_1_1_U132(
    .din0(bound_fu_192_p0),
    .din1(bound_fu_192_p1),
    .dout(bound_fu_192_p2)
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
        end else if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_return_preg <= p_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start_reg <= 1'b1;
        end else if ((grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_ready == 1'b1)) begin
            grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_ready == 1'b1)) begin
            grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (icmp_ln1039_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        x1_fu_64 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_154_p2 == 1'd0))) begin
        x1_fu_64 <= add_ln63_fu_159_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bound_reg_243 <= bound_fu_192_p2;
        trunc_ln3_reg_238 <= {{p_read[7:1]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_208 <= empty_fu_114_p1;
        icmp_ln1039_reg_204 <= icmp_ln1039_fu_108_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_233[11 : 6] <= tmp_s_fu_170_p3[11 : 6];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln1027_reg_225 <= trunc_ln1027_fu_150_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1039_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        zext_ln1027_3_reg_220[6 : 0] <= zext_ln1027_3_fu_138_p1[6 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        I_address0 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        I_address0 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_address0;
    end else begin
        I_address0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        I_address1 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        I_address1 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_address1;
    end else begin
        I_address1 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        I_ce0 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        I_ce0 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_ce0;
    end else begin
        I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        I_ce1 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_I_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        I_ce1 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_I_ce1;
    end else begin
        I_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_address0 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_address0 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_address0;
    end else begin
        X_address0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_address1 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_address1 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_address1;
    end else begin
        X_address1 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_ce0 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_ce0 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_ce0;
    end else begin
        X_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_ce1 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_ce1 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_ce1;
    end else begin
        X_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_d0 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_d0 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_d0;
    end else begin
        X_d0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_d1 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_d1 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_d1;
    end else begin
        X_d1 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_we0 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_we0 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_we0;
    end else begin
        X_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1039_reg_204 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        X_we1 = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_X_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_we1 = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_X_we1;
    end else begin
        X_we1 = 1'b0;
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

always @ (*) begin
    if ((grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state6_on_subcall_done)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_return = p_read;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (icmp_ln1039_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (icmp_ln1039_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_154_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1027_fu_122_p2 = (zext_ln1027_fu_118_p1 + 9'd3);

assign add_ln63_fu_159_p2 = (x1_fu_64 + 8'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state6_on_subcall_done = ((icmp_ln1039_reg_204 == 1'd1) & (grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_done == 1'b0));
end

assign bound_fu_192_p0 = cast_fu_188_p1;

assign bound_fu_192_p1 = cast_fu_188_p1;

assign cast_fu_188_p1 = trunc_ln3_fu_178_p4;

assign empty_fu_114_p1 = p_read[7:0];

assign grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start = grp_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_fu_84_ap_start_reg;

assign grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start = grp_fft_stage_2_Pipeline_VITIS_LOOP_66_2_fu_74_ap_start_reg;

assign icmp_ln1027_fu_154_p2 = ((x1_fu_64 == empty_reg_208) ? 1'b1 : 1'b0);

assign icmp_ln1039_fu_108_p2 = ((trunc_ln_fu_98_p4 > 8'd2) ? 1'b1 : 1'b0);

assign tmp_fu_128_p4 = {{add_ln1027_fu_122_p2[8:2]}};

assign tmp_s_fu_170_p3 = {{trunc_ln1027_reg_225}, {6'd0}};

assign trunc_ln1027_fu_150_p1 = x1_fu_64[5:0];

assign trunc_ln3_fu_178_p4 = {{p_read[7:1]}};

assign trunc_ln_fu_98_p4 = {{p_read[15:8]}};

assign zext_ln1027_3_fu_138_p1 = tmp_fu_128_p4;

assign zext_ln1027_fu_118_p1 = empty_fu_114_p1;

always @ (posedge ap_clk) begin
    zext_ln1027_3_reg_220[10:7] <= 4'b0000;
    tmp_s_reg_233[5:0] <= 6'b000000;
end

endmodule //IFFT_AP_fft_stage_2
