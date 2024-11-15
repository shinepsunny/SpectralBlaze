// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fft_stage_fft_stage,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7cg-fbvb900-1-i,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.953000,HLS_SYN_LAT=19,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=1661,HLS_SYN_LUT=1828,HLS_VERSION=2021_1}" *)

module fft_stage (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
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
        OUT_r_d1,
        curr_stage,
        y,
        ctrl1_reg
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
input  [31:0] curr_stage;
input  [31:0] y;
input  [31:0] ctrl1_reg;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] IN_r_address0;
reg IN_r_ce0;
reg IN_r_ce1;
reg[5:0] OUT_r_address0;
reg OUT_r_ce0;
reg[3:0] OUT_r_we0;
reg[31:0] OUT_r_d0;
reg OUT_r_ce1;
reg[3:0] OUT_r_we1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] empty_fu_110_p1;
reg   [2:0] empty_reg_235;
wire   [0:0] icmp_ln1069_fu_128_p2;
reg   [0:0] icmp_ln1069_reg_240;
wire   [7:0] empty_13_fu_134_p1;
reg   [7:0] empty_13_reg_244;
reg   [6:0] div_i_i43_cast_reg_249;
reg   [30:0] p_lshr_reg_254;
wire   [7:0] tmp_fu_170_p3;
reg   [7:0] tmp_reg_259;
wire    ap_CS_fsm_state2;
wire   [5:0] empty_14_fu_216_p1;
reg   [5:0] empty_14_reg_264;
wire   [31:0] sub28_fu_221_p2;
reg   [31:0] sub28_reg_269;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_done;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_idle;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_ready;
wire   [5:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_address0;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_ce0;
wire   [5:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_address1;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_ce1;
wire   [5:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_address0;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_ce0;
wire   [3:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_we0;
wire   [31:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_d0;
wire   [5:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_address1;
wire    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_ce1;
wire   [3:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_we1;
wire   [31:0] grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_d1;
wire    grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start;
wire    grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_done;
wire    grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_idle;
wire    grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_ready;
wire   [5:0] grp_fft_stage_Pipeline_SKIP_X_fu_93_IN_r_address0;
wire    grp_fft_stage_Pipeline_SKIP_X_fu_93_IN_r_ce0;
wire   [5:0] grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_address0;
wire    grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_ce0;
wire   [3:0] grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_we0;
wire   [31:0] grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_d0;
reg    grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [7:0] lshr_ln_fu_114_p4;
wire   [31:0] zext_ln1069_fu_124_p1;
wire   [31:0] p_neg_fu_149_p2;
wire   [2:0] sub_fu_165_p2;
wire   [31:0] p_lshr_cast_fu_186_p1;
wire   [30:0] p_lshr_f_fu_195_p4;
wire   [0:0] tmp_1_fu_179_p3;
wire   [31:0] p_neg_t_fu_189_p2;
wire   [31:0] p_lshr_f_cast_fu_204_p1;
wire   [31:0] div_fu_208_p3;
reg    ap_block_state3_on_subcall_done;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start_reg = 1'b0;
#0 grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start_reg = 1'b0;
end

fft_stage_fft_stage_Pipeline_VITIS_LOOP_37_1 grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start),
    .ap_done(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_done),
    .ap_idle(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_idle),
    .ap_ready(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_ready),
    .zext_ln37(empty_13_reg_244),
    .IN_r_address0(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_address0),
    .IN_r_ce0(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_ce0),
    .IN_r_q0(IN_r_q0),
    .IN_r_address1(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_address1),
    .IN_r_ce1(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_ce1),
    .IN_r_q1(IN_r_q1),
    .OUT_r_address0(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_address0),
    .OUT_r_ce0(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_ce0),
    .OUT_r_we0(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_we0),
    .OUT_r_d0(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_d0),
    .OUT_r_address1(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_address1),
    .OUT_r_ce1(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_ce1),
    .OUT_r_we1(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_we1),
    .OUT_r_d1(grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_d1)
);

fft_stage_fft_stage_Pipeline_SKIP_X grp_fft_stage_Pipeline_SKIP_X_fu_93(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start),
    .ap_done(grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_done),
    .ap_idle(grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_idle),
    .ap_ready(grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_ready),
    .div_i_i43_cast(div_i_i43_cast_reg_249),
    .zext_ln19_1(tmp_reg_259),
    .IN_r_address0(grp_fft_stage_Pipeline_SKIP_X_fu_93_IN_r_address0),
    .IN_r_ce0(grp_fft_stage_Pipeline_SKIP_X_fu_93_IN_r_ce0),
    .IN_r_q0(IN_r_q0),
    .div_cast(empty_14_reg_264),
    .OUT_r_address0(grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_address0),
    .OUT_r_ce0(grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_ce0),
    .OUT_r_we0(grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_we0),
    .OUT_r_d0(grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_d0),
    .sub28(sub28_reg_269),
    .y(y)
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
        grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start_reg <= 1'b1;
        end else if ((grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_ready == 1'b1)) begin
            grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (icmp_ln1069_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start_reg <= 1'b1;
        end else if ((grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_ready == 1'b1)) begin
            grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1069_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        div_i_i43_cast_reg_249 <= {{ctrl1_reg[7:1]}};
        p_lshr_reg_254 <= {{p_neg_fu_149_p2[31:1]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_13_reg_244 <= empty_13_fu_134_p1;
        empty_reg_235 <= empty_fu_110_p1;
        icmp_ln1069_reg_240 <= icmp_ln1069_fu_128_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        empty_14_reg_264 <= empty_14_fu_216_p1;
        sub28_reg_269 <= sub28_fu_221_p2;
        tmp_reg_259[7 : 5] <= tmp_fu_170_p3[7 : 5];
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_240 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        IN_r_address0 = grp_fft_stage_Pipeline_SKIP_X_fu_93_IN_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        IN_r_address0 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_address0;
    end else begin
        IN_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_240 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        IN_r_ce0 = grp_fft_stage_Pipeline_SKIP_X_fu_93_IN_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        IN_r_ce0 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_ce0;
    end else begin
        IN_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        IN_r_ce1 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_ce1;
    end else begin
        IN_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_240 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        OUT_r_address0 = grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        OUT_r_address0 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_address0;
    end else begin
        OUT_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_240 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        OUT_r_ce0 = grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        OUT_r_ce0 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_ce0;
    end else begin
        OUT_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        OUT_r_ce1 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_ce1;
    end else begin
        OUT_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_240 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        OUT_r_d0 = grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        OUT_r_d0 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_d0;
    end else begin
        OUT_r_d0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_240 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        OUT_r_we0 = grp_fft_stage_Pipeline_SKIP_X_fu_93_OUT_r_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        OUT_r_we0 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_we0;
    end else begin
        OUT_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        OUT_r_we1 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_we1;
    end else begin
        OUT_r_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_on_subcall_done)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (icmp_ln1069_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if (((ap_start == 1'b1) & (icmp_ln1069_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign IN_r_address1 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_IN_r_address1;

assign OUT_r_address1 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_address1;

assign OUT_r_d1 = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_OUT_r_d1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state3_on_subcall_done = ((grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_done == 1'b0) & (icmp_ln1069_reg_240 == 1'd0));
end

assign div_fu_208_p3 = ((tmp_1_fu_179_p3[0:0] == 1'b1) ? p_neg_t_fu_189_p2 : p_lshr_f_cast_fu_204_p1);

assign empty_13_fu_134_p1 = ctrl1_reg[7:0];

assign empty_14_fu_216_p1 = div_fu_208_p3[5:0];

assign empty_fu_110_p1 = curr_stage[2:0];

assign grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start = grp_fft_stage_Pipeline_SKIP_X_fu_93_ap_start_reg;

assign grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start = grp_fft_stage_Pipeline_VITIS_LOOP_37_1_fu_84_ap_start_reg;

assign icmp_ln1069_fu_128_p2 = (($signed(zext_ln1069_fu_124_p1) < $signed(curr_stage)) ? 1'b1 : 1'b0);

assign lshr_ln_fu_114_p4 = {{ctrl1_reg[15:8]}};

assign p_lshr_cast_fu_186_p1 = p_lshr_reg_254;

assign p_lshr_f_cast_fu_204_p1 = p_lshr_f_fu_195_p4;

assign p_lshr_f_fu_195_p4 = {{y[31:1]}};

assign p_neg_fu_149_p2 = (32'd0 - y);

assign p_neg_t_fu_189_p2 = (32'd0 - p_lshr_cast_fu_186_p1);

assign sub28_fu_221_p2 = ($signed(div_fu_208_p3) + $signed(32'd4294967295));

assign sub_fu_165_p2 = ($signed(empty_reg_235) + $signed(3'd7));

assign tmp_1_fu_179_p3 = y[32'd31];

assign tmp_fu_170_p3 = {{sub_fu_165_p2}, {5'd0}};

assign zext_ln1069_fu_124_p1 = lshr_ln_fu_114_p4;

always @ (posedge ap_clk) begin
    tmp_reg_259[4:0] <= 5'b00000;
end

endmodule //fft_stage
