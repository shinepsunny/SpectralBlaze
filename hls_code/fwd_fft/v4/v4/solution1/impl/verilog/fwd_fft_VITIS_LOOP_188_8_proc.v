// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_VITIS_LOOP_188_8_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ctrl1_reg_dout,
        ctrl1_reg_empty_n,
        ctrl1_reg_read,
        out_fft3_dout,
        out_fft3_empty_n,
        out_fft3_read,
        c_fft_row_op_st_din,
        c_fft_row_op_st_full_n,
        c_fft_row_op_st_write,
        p_read,
        p_read1,
        p_read2,
        Row_Buffer_din,
        Row_Buffer_full_n,
        Row_Buffer_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] ctrl1_reg_dout;
input   ctrl1_reg_empty_n;
output   ctrl1_reg_read;
input  [63:0] out_fft3_dout;
input   out_fft3_empty_n;
output   out_fft3_read;
output  [31:0] c_fft_row_op_st_din;
input   c_fft_row_op_st_full_n;
output   c_fft_row_op_st_write;
input  [7:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
output  [31:0] Row_Buffer_din;
input   Row_Buffer_full_n;
output   Row_Buffer_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ctrl1_reg_read;
reg out_fft3_read;
reg c_fft_row_op_st_write;
reg Row_Buffer_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ctrl1_reg_blk_n;
reg    out_fft3_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1057_fu_192_p2;
reg    c_fft_row_op_st_blk_n;
wire    ap_CS_fsm_state5;
reg    Row_Buffer_blk_n;
reg   [0:0] or_ln193_reg_257;
wire   [7:0] trunc_ln154_fu_130_p1;
reg   [7:0] trunc_ln154_reg_252;
wire   [0:0] or_ln193_fu_178_p2;
wire   [7:0] add_ln188_fu_197_p2;
reg   [7:0] add_ln188_reg_264;
wire   [31:0] trunc_ln191_fu_203_p1;
reg   [31:0] trunc_ln191_reg_269;
reg   [31:0] trunc_ln191_1_reg_274;
wire    ap_CS_fsm_state3;
wire   [15:0] grp_fu_124_p1;
reg   [15:0] conv_i_i_reg_289;
wire    ap_CS_fsm_state4;
wire   [15:0] grp_fu_127_p1;
reg   [15:0] conv3_i_i_reg_294;
reg   [7:0] x_fu_76;
reg    ap_block_state5;
reg    ap_block_state1;
reg    ap_block_state2;
wire   [31:0] tmp_i_fu_231_p3;
wire   [31:0] grp_fu_124_p0;
wire   [31:0] grp_fu_127_p0;
wire   [7:0] empty_fu_138_p1;
wire   [8:0] ctrl2_reg_load_cast_cast_fu_142_p1;
wire   [8:0] pny_cast_fu_134_p1;
wire   [8:0] sub_i_i_fu_146_p2;
wire   [7:0] lshr_ln_fu_158_p4;
wire   [31:0] zext_ln1061_fu_168_p1;
wire   [0:0] cmp_i_i_fu_152_p2;
wire   [0:0] icmp_ln193_fu_172_p2;
wire   [15:0] bitcast_ln174_2_fu_228_p1;
wire   [15:0] bitcast_ln174_fu_225_p1;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
end

fwd_fft_sptohp_32ns_16_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 16 ))
sptohp_32ns_16_2_no_dsp_1_U111(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_124_p0),
    .ce(1'b1),
    .dout(grp_fu_124_p1)
);

fwd_fft_sptohp_32ns_16_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 16 ))
sptohp_32ns_16_2_no_dsp_1_U112(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_127_p0),
    .ce(1'b1),
    .dout(grp_fu_127_p1)
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
        end else if ((~((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0)) & (icmp_ln1057_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        x_fu_76 <= 8'd0;
    end else if ((~((c_fft_row_op_st_full_n == 1'b0) | ((or_ln193_reg_257 == 1'd0) & (1'b0 == Row_Buffer_full_n))) & (1'b1 == ap_CS_fsm_state5))) begin
        x_fu_76 <= add_ln188_reg_264;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln188_reg_264 <= add_ln188_fu_197_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        conv3_i_i_reg_294 <= grp_fu_127_p1;
        conv_i_i_reg_289 <= grp_fu_124_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        or_ln193_reg_257 <= or_ln193_fu_178_p2;
        trunc_ln154_reg_252 <= trunc_ln154_fu_130_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln191_1_reg_274 <= {{out_fft3_dout[63:32]}};
        trunc_ln191_reg_269 <= trunc_ln191_fu_203_p1;
    end
end

always @ (*) begin
    if (((or_ln193_reg_257 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        Row_Buffer_blk_n = Row_Buffer_full_n;
    end else begin
        Row_Buffer_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((c_fft_row_op_st_full_n == 1'b0) | ((or_ln193_reg_257 == 1'd0) & (1'b0 == Row_Buffer_full_n))) & (or_ln193_reg_257 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        Row_Buffer_write = 1'b1;
    end else begin
        Row_Buffer_write = 1'b0;
    end
end

always @ (*) begin
    if (((ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((c_fft_row_op_st_full_n == 1'b0) | ((or_ln193_reg_257 == 1'd0) & (1'b0 == Row_Buffer_full_n)))) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0)) & (icmp_ln1057_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((~((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0)) & (icmp_ln1057_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        c_fft_row_op_st_blk_n = c_fft_row_op_st_full_n;
    end else begin
        c_fft_row_op_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((c_fft_row_op_st_full_n == 1'b0) | ((or_ln193_reg_257 == 1'd0) & (1'b0 == Row_Buffer_full_n))) & (1'b1 == ap_CS_fsm_state5))) begin
        c_fft_row_op_st_write = 1'b1;
    end else begin
        c_fft_row_op_st_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_blk_n = ctrl1_reg_empty_n;
    end else begin
        ctrl1_reg_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_reg_read = 1'b1;
    end else begin
        ctrl1_reg_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_fft3_blk_n = out_fft3_empty_n;
    end else begin
        out_fft3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0)) & (icmp_ln1057_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_fft3_read = 1'b1;
    end else begin
        out_fft3_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0)) & (icmp_ln1057_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0)) & (icmp_ln1057_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((~((c_fft_row_op_st_full_n == 1'b0) | ((or_ln193_reg_257 == 1'd0) & (1'b0 == Row_Buffer_full_n))) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Row_Buffer_din = tmp_i_fu_231_p3;

assign add_ln188_fu_197_p2 = (x_fu_76 + 8'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((ctrl1_reg_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state2 = ((icmp_ln1057_fu_192_p2 == 1'd0) & (out_fft3_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5 = ((c_fft_row_op_st_full_n == 1'b0) | ((or_ln193_reg_257 == 1'd0) & (1'b0 == Row_Buffer_full_n)));
end

assign bitcast_ln174_2_fu_228_p1 = conv3_i_i_reg_294;

assign bitcast_ln174_fu_225_p1 = conv_i_i_reg_289;

assign c_fft_row_op_st_din = tmp_i_fu_231_p3;

assign cmp_i_i_fu_152_p2 = ((pny_cast_fu_134_p1 == sub_i_i_fu_146_p2) ? 1'b1 : 1'b0);

assign ctrl2_reg_load_cast_cast_fu_142_p1 = empty_fu_138_p1;

assign empty_fu_138_p1 = p_read1[7:0];

assign grp_fu_124_p0 = trunc_ln191_reg_269;

assign grp_fu_127_p0 = trunc_ln191_1_reg_274;

assign icmp_ln1057_fu_192_p2 = ((x_fu_76 == trunc_ln154_reg_252) ? 1'b1 : 1'b0);

assign icmp_ln193_fu_172_p2 = (($signed(zext_ln1061_fu_168_p1) > $signed(p_read2)) ? 1'b1 : 1'b0);

assign lshr_ln_fu_158_p4 = {{ctrl1_reg_dout[31:24]}};

assign or_ln193_fu_178_p2 = (icmp_ln193_fu_172_p2 | cmp_i_i_fu_152_p2);

assign pny_cast_fu_134_p1 = p_read;

assign sub_i_i_fu_146_p2 = ($signed(ctrl2_reg_load_cast_cast_fu_142_p1) + $signed(9'd511));

assign tmp_i_fu_231_p3 = {{bitcast_ln174_2_fu_228_p1}, {bitcast_ln174_fu_225_p1}};

assign trunc_ln154_fu_130_p1 = ctrl1_reg_dout[7:0];

assign trunc_ln191_fu_203_p1 = out_fft3_dout[31:0];

assign zext_ln1061_fu_168_p1 = lshr_ln_fu_158_p4;

endmodule //fwd_fft_VITIS_LOOP_188_8_proc