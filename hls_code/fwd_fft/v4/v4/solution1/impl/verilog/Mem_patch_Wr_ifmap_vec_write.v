// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Mem_patch_Wr_ifmap_vec_write (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
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
        fft_out_ap_vld,
        p_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
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
input  [7:0] p_read;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] wr_ptr;
wire   [0:0] icmp_ln1057_fu_52_p2;
reg   [0:0] icmp_ln1057_reg_155;
wire  signed [8:0] add_ln567_fu_58_p2;
reg  signed [8:0] add_ln567_reg_159;
reg   [6:0] tmp_reg_164;
wire   [30:0] add_ln567_1_fu_98_p2;
reg   [30:0] add_ln567_1_reg_169;
wire    ap_CS_fsm_state2;
wire   [69:0] mul_ln577_fu_113_p2;
reg   [69:0] mul_ln577_reg_179;
wire   [31:0] zext_ln567_1_fu_120_p1;
reg   [31:0] zext_ln567_1_reg_184;
wire   [31:0] grp_fu_123_p2;
reg   [31:0] mul_ln567_reg_190;
wire    ap_CS_fsm_state3;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_done;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_idle;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_ready;
wire   [10:0] grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_address0;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_ce0;
wire   [10:0] grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_address1;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_ce1;
wire   [10:0] grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_address0;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_ce0;
wire   [10:0] grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_address1;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_ce1;
wire   [127:0] grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_fft_out;
wire    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_fft_out_ap_vld;
reg    grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start_reg;
wire   [31:0] add_ln567_3_fu_137_p2;
wire    ap_CS_fsm_state4;
reg    ap_block_state1;
wire   [8:0] zext_ln1057_fu_48_p1;
wire   [6:0] trunc_ln_fu_64_p4;
wire  signed [29:0] sext_ln567_1_fu_74_p1;
wire   [8:0] add_ln567_4_fu_82_p2;
wire   [30:0] zext_ln567_fu_78_p1;
wire   [7:0] mul_ln577_fu_113_p0;
wire   [6:0] mul_ln577_fu_113_p1;
wire   [30:0] grp_fu_123_p0;
wire   [31:0] add_ln567_2_fu_133_p2;
reg    grp_fu_123_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire   [31:0] grp_fu_123_p00;
wire   [69:0] mul_ln577_fu_113_p00;
wire   [69:0] mul_ln577_fu_113_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 wr_ptr = 32'd0;
#0 grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start_reg = 1'b0;
end

Mem_patch_Wr_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2 grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start),
    .ap_done(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_done),
    .ap_idle(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_idle),
    .ap_ready(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_ready),
    .mul_ln577(mul_ln577_reg_179),
    .zext_ln567(p_read),
    .ifmap_CF_M_real_address0(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_address0),
    .ifmap_CF_M_real_ce0(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_ce0),
    .ifmap_CF_M_real_q0(ifmap_CF_M_real_q0),
    .ifmap_CF_M_real_address1(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_address1),
    .ifmap_CF_M_real_ce1(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_ce1),
    .ifmap_CF_M_real_q1(ifmap_CF_M_real_q1),
    .ifmap_CF_M_imag_address0(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_address0),
    .ifmap_CF_M_imag_ce0(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_ce0),
    .ifmap_CF_M_imag_q0(ifmap_CF_M_imag_q0),
    .ifmap_CF_M_imag_address1(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_address1),
    .ifmap_CF_M_imag_ce1(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_ce1),
    .ifmap_CF_M_imag_q1(ifmap_CF_M_imag_q1),
    .fft_out(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_fft_out),
    .fft_out_ap_vld(grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_fft_out_ap_vld)
);

Mem_patch_Wr_mul_8ns_7ns_70_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 7 ),
    .dout_WIDTH( 70 ))
mul_8ns_7ns_70_1_1_U12(
    .din0(mul_ln577_fu_113_p0),
    .din1(mul_ln577_fu_113_p1),
    .dout(mul_ln577_fu_113_p2)
);

Mem_patch_Wr_mul_31ns_9s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 31 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 32 ))
mul_31ns_9s_32_2_1_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_123_p0),
    .din1(add_ln567_reg_159),
    .ce(grp_fu_123_ce),
    .dout(grp_fu_123_p2)
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
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start_reg <= 1'b1;
        end else if ((grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_ready == 1'b1)) begin
            grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_fu_52_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln567_1_reg_169 <= add_ln567_1_fu_98_p2;
        add_ln567_reg_159 <= add_ln567_fu_58_p2;
        tmp_reg_164 <= {{add_ln567_4_fu_82_p2[8:2]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln1057_reg_155 <= icmp_ln1057_fu_52_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln567_reg_190 <= grp_fu_123_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln577_reg_179 <= mul_ln577_fu_113_p2;
        zext_ln567_1_reg_184[30 : 0] <= zext_ln567_1_fu_120_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_reg_155 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        wr_ptr <= add_ln567_3_fu_137_p2;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        grp_fu_123_ce = 1'b1;
    end else begin
        grp_fu_123_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (icmp_ln1057_fu_52_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (icmp_ln1057_fu_52_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln567_1_fu_98_p2 = (zext_ln567_fu_78_p1 + 31'd1);

assign add_ln567_2_fu_133_p2 = (mul_ln567_reg_190 + zext_ln567_1_reg_184);

assign add_ln567_3_fu_137_p2 = (add_ln567_2_fu_133_p2 + wr_ptr);

assign add_ln567_4_fu_82_p2 = (zext_ln1057_fu_48_p1 + 9'd3);

assign add_ln567_fu_58_p2 = ($signed(zext_ln1057_fu_48_p1) + $signed(9'd511));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign fft_out = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_fft_out;

assign fft_out_ap_vld = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_fft_out_ap_vld;

assign grp_fu_123_p0 = grp_fu_123_p00;

assign grp_fu_123_p00 = add_ln567_1_reg_169;

assign grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ap_start_reg;

assign icmp_ln1057_fu_52_p2 = ((p_read == 8'd0) ? 1'b1 : 1'b0);

assign ifmap_CF_M_imag_address0 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_address0;

assign ifmap_CF_M_imag_address1 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_address1;

assign ifmap_CF_M_imag_ce0 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_ce0;

assign ifmap_CF_M_imag_ce1 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_imag_ce1;

assign ifmap_CF_M_real_address0 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_address0;

assign ifmap_CF_M_real_address1 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_address1;

assign ifmap_CF_M_real_ce0 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_ce0;

assign ifmap_CF_M_real_ce1 = grp_ifmap_vec_write_Pipeline_VITIS_LOOP_567_1_VITIS_LOOP_570_2_fu_36_ifmap_CF_M_real_ce1;

assign mul_ln577_fu_113_p0 = mul_ln577_fu_113_p00;

assign mul_ln577_fu_113_p00 = p_read;

assign mul_ln577_fu_113_p1 = mul_ln577_fu_113_p10;

assign mul_ln577_fu_113_p10 = tmp_reg_164;

assign sext_ln567_1_fu_74_p1 = $signed(trunc_ln_fu_64_p4);

assign trunc_ln_fu_64_p4 = {{add_ln567_fu_58_p2[8:2]}};

assign zext_ln1057_fu_48_p1 = p_read;

assign zext_ln567_1_fu_120_p1 = add_ln567_1_reg_169;

assign zext_ln567_fu_78_p1 = $unsigned(sext_ln567_1_fu_74_p1);

always @ (posedge ap_clk) begin
    zext_ln567_1_reg_184[31] <= 1'b0;
end

endmodule //Mem_patch_Wr_ifmap_vec_write