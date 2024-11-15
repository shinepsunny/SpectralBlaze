// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Mem_patch_Wr_Mem_patch_Wr,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7cg-fbvb900-1-i,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.868000,HLS_SYN_LAT=1284,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=503,HLS_SYN_LUT=731,HLS_VERSION=2021_1}" *)

module Mem_patch_Wr (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ifmap_CF_address0,
        ifmap_CF_ce0,
        ifmap_CF_q0,
        ifmap_CF_address1,
        ifmap_CF_ce1,
        ifmap_CF_q1,
        fft_out,
        fft_out_ap_vld,
        ctrl1_reg,
        ctrl2_reg,
        layer1_reg,
        layer2_reg
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
output   ap_idle;
output   ap_ready;
output  [11:0] ifmap_CF_address0;
output   ifmap_CF_ce0;
input  [31:0] ifmap_CF_q0;
output  [11:0] ifmap_CF_address1;
output   ifmap_CF_ce1;
input  [31:0] ifmap_CF_q1;
output  [127:0] fft_out;
output   fft_out_ap_vld;
input  [31:0] ctrl1_reg;
input  [31:0] ctrl2_reg;
input  [31:0] layer1_reg;
input  [31:0] layer2_reg;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] empty_26_fu_125_p1;
reg   [7:0] empty_26_reg_207;
wire    ap_CS_fsm_state3;
reg   [6:0] tmp_reg_214;
wire   [0:0] cmp_i_i1936_fu_149_p2;
reg   [0:0] cmp_i_i1936_reg_219;
wire    ap_CS_fsm_state4;
wire   [69:0] bound_fu_160_p2;
reg   [69:0] bound_reg_223;
wire  signed [31:0] grp_fu_184_p2;
reg   [31:0] bound12_reg_228;
wire   [31:0] add_ln1057_fu_174_p2;
reg   [31:0] add_ln1057_reg_236;
wire    ap_CS_fsm_state5;
wire    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start;
wire    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_done;
wire    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_idle;
wire    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_ready;
wire   [11:0] grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_address0;
wire    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_ce0;
wire   [11:0] grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_address1;
wire    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_ce1;
wire   [127:0] grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_fft_out;
wire    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_fft_out_ap_vld;
reg    grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start_reg;
wire   [0:0] icmp_ln1057_fu_169_p2;
wire    ap_CS_fsm_state6;
reg   [31:0] indvar_flatten19_fu_62;
reg    ap_block_state6_on_subcall_done;
wire   [7:0] empty_25_fu_98_p1;
wire   [7:0] bound4_fu_106_p0;
wire   [15:0] cast2_fu_102_p1;
wire   [7:0] bound4_fu_106_p1;
wire   [15:0] empty_fu_94_p1;
wire   [15:0] bound4_fu_106_p2;
wire   [8:0] zext_ln549_fu_129_p1;
wire   [8:0] add_ln549_fu_133_p2;
wire   [7:0] bound_fu_160_p0;
wire   [6:0] bound_fu_160_p1;
wire   [15:0] grp_fu_184_p0;
wire   [15:0] grp_fu_184_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [69:0] bound_fu_160_p00;
wire   [69:0] bound_fu_160_p10;
wire   [31:0] grp_fu_184_p00;
wire   [31:0] grp_fu_184_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start_reg = 1'b0;
end

Mem_patch_Wr_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5 grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start),
    .ap_done(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_done),
    .ap_idle(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_idle),
    .ap_ready(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_ready),
    .bound(bound_reg_223),
    .zext_ln552(empty_26_reg_207),
    .ifmap_CF_address0(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_address0),
    .ifmap_CF_ce0(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_ce0),
    .ifmap_CF_q0(ifmap_CF_q0),
    .ifmap_CF_address1(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_address1),
    .ifmap_CF_ce1(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_ce1),
    .ifmap_CF_q1(ifmap_CF_q1),
    .fft_out(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_fft_out),
    .fft_out_ap_vld(grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_fft_out_ap_vld)
);

Mem_patch_Wr_mul_8ns_8ns_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8ns_8ns_16_1_1_U5(
    .din0(bound4_fu_106_p0),
    .din1(bound4_fu_106_p1),
    .dout(bound4_fu_106_p2)
);

Mem_patch_Wr_mul_8ns_7ns_70_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 7 ),
    .dout_WIDTH( 70 ))
mul_8ns_7ns_70_1_1_U6(
    .din0(bound_fu_160_p0),
    .din1(bound_fu_160_p1),
    .dout(bound_fu_160_p2)
);

Mem_patch_Wr_mul_mul_16ns_16ns_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
mul_mul_16ns_16ns_32_4_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_184_p0),
    .din1(grp_fu_184_p1),
    .ce(1'b1),
    .dout(grp_fu_184_p2)
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
        grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1057_fu_169_p2 == 1'd0) & (cmp_i_i1936_reg_219 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start_reg <= 1'b1;
        end else if ((grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_ready == 1'b1)) begin
            grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten19_fu_62 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        indvar_flatten19_fu_62 <= add_ln1057_reg_236;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln1057_reg_236 <= add_ln1057_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bound12_reg_228 <= grp_fu_184_p2;
        bound_reg_223 <= bound_fu_160_p2;
        cmp_i_i1936_reg_219 <= cmp_i_i1936_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_26_reg_207 <= empty_26_fu_125_p1;
        tmp_reg_214 <= {{add_ln549_fu_133_p2[8:2]}};
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

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state6_on_subcall_done)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((icmp_ln1057_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((icmp_ln1057_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1057_fu_174_p2 = (indvar_flatten19_fu_62 + 32'd1);

assign add_ln549_fu_133_p2 = (zext_ln549_fu_129_p1 + 9'd3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state6_on_subcall_done = ((grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_done == 1'b0) & (cmp_i_i1936_reg_219 == 1'd0));
end

assign bound4_fu_106_p0 = cast2_fu_102_p1;

assign bound4_fu_106_p1 = cast2_fu_102_p1;

assign bound_fu_160_p0 = bound_fu_160_p00;

assign bound_fu_160_p00 = empty_26_reg_207;

assign bound_fu_160_p1 = bound_fu_160_p10;

assign bound_fu_160_p10 = tmp_reg_214;

assign cast2_fu_102_p1 = empty_25_fu_98_p1;

assign cmp_i_i1936_fu_149_p2 = ((empty_26_reg_207 == 8'd0) ? 1'b1 : 1'b0);

assign empty_25_fu_98_p1 = ctrl2_reg[7:0];

assign empty_26_fu_125_p1 = ctrl1_reg[7:0];

assign empty_fu_94_p1 = layer1_reg[15:0];

assign fft_out = grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_fft_out;

assign fft_out_ap_vld = grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_fft_out_ap_vld;

assign grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start = grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ap_start_reg;

assign grp_fu_184_p0 = grp_fu_184_p00;

assign grp_fu_184_p00 = empty_fu_94_p1;

assign grp_fu_184_p1 = grp_fu_184_p10;

assign grp_fu_184_p10 = bound4_fu_106_p2;

assign icmp_ln1057_fu_169_p2 = ((indvar_flatten19_fu_62 == bound12_reg_228) ? 1'b1 : 1'b0);

assign ifmap_CF_address0 = grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_address0;

assign ifmap_CF_address1 = grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_address1;

assign ifmap_CF_ce0 = grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_ce0;

assign ifmap_CF_ce1 = grp_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5_fu_84_ifmap_CF_ce1;

assign zext_ln549_fu_129_p1 = empty_26_fu_125_p1;

endmodule //Mem_patch_Wr
