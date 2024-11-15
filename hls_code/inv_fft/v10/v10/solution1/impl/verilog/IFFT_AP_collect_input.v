// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module IFFT_AP_collect_input (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_st_dout,
        in_st_num_data_valid,
        in_st_fifo_cap,
        in_st_empty_n,
        in_st_read,
        I_address0,
        I_ce0,
        I_we0,
        I_d0,
        I_address1,
        I_ce1,
        I_we1,
        I_d1,
        ctrl1_regp_dout,
        ctrl1_regp_num_data_valid,
        ctrl1_regp_fifo_cap,
        ctrl1_regp_empty_n,
        ctrl1_regp_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] in_st_dout;
input  [1:0] in_st_num_data_valid;
input  [1:0] in_st_fifo_cap;
input   in_st_empty_n;
output   in_st_read;
output  [11:0] I_address0;
output   I_ce0;
output   I_we0;
output  [31:0] I_d0;
output  [11:0] I_address1;
output   I_ce1;
output   I_we1;
output  [31:0] I_d1;
input  [31:0] ctrl1_regp_dout;
input  [1:0] ctrl1_regp_num_data_valid;
input  [1:0] ctrl1_regp_fifo_cap;
input   ctrl1_regp_empty_n;
output   ctrl1_regp_read;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_st_read;
reg ctrl1_regp_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ctrl1_regp_blk_n;
reg   [31:0] ctrl1_regp_read_reg_160;
wire   [7:0] empty_fu_88_p1;
reg   [7:0] empty_reg_164;
wire   [10:0] zext_ln1027_6_fu_112_p1;
reg   [10:0] zext_ln1027_6_reg_169;
wire   [11:0] tmp_fu_139_p3;
reg   [11:0] tmp_reg_177;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1027_fu_128_p2;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_done;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_idle;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_ready;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_in_st_read;
wire   [11:0] grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_address0;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_ce0;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_we0;
wire   [31:0] grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_d0;
wire   [11:0] grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_address1;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_ce1;
wire    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_we1;
wire   [31:0] grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_d1;
reg    grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start_reg;
wire    ap_CS_fsm_state3;
reg   [7:0] x_fu_68;
wire   [7:0] add_ln88_fu_133_p2;
reg    ap_block_state1;
wire   [8:0] zext_ln1027_fu_92_p1;
wire   [8:0] add_ln1027_fu_96_p2;
wire   [6:0] tmp_8_fu_102_p4;
wire   [5:0] trunc_ln1027_fu_124_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start_reg = 1'b0;
end

IFFT_AP_collect_input_Pipeline_VITIS_LOOP_91_2 grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start),
    .ap_done(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_done),
    .ap_idle(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_idle),
    .ap_ready(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_ready),
    .in_st_dout(in_st_dout),
    .in_st_num_data_valid(2'd0),
    .in_st_fifo_cap(2'd0),
    .in_st_empty_n(in_st_empty_n),
    .in_st_read(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_in_st_read),
    .empty(zext_ln1027_6_reg_169),
    .zext_ln173_3(tmp_reg_177),
    .I_address0(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_address0),
    .I_ce0(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_ce0),
    .I_we0(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_we0),
    .I_d0(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_d0),
    .I_address1(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_address1),
    .I_ce1(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_ce1),
    .I_we1(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_we1),
    .I_d1(grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_d1)
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
        end else if (((icmp_ln1027_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1027_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_ready == 1'b1)) begin
            grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ctrl1_regp_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        x_fu_68 <= 8'd0;
    end else if (((icmp_ln1027_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        x_fu_68 <= add_ln88_fu_133_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        ctrl1_regp_read_reg_160 <= ctrl1_regp_dout;
        empty_reg_164 <= empty_fu_88_p1;
        zext_ln1027_6_reg_169[6 : 0] <= zext_ln1027_6_fu_112_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1027_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_177[11 : 6] <= tmp_fu_139_p3[11 : 6];
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ctrl1_regp_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1027_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln1027_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_regp_blk_n = ctrl1_regp_empty_n;
    end else begin
        ctrl1_regp_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ctrl1_regp_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ctrl1_regp_read = 1'b1;
    end else begin
        ctrl1_regp_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_st_read = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_in_st_read;
    end else begin
        in_st_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ctrl1_regp_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln1027_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign I_address0 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_address0;

assign I_address1 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_address1;

assign I_ce0 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_ce0;

assign I_ce1 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_ce1;

assign I_d0 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_d0;

assign I_d1 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_d1;

assign I_we0 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_we0;

assign I_we1 = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_I_we1;

assign add_ln1027_fu_96_p2 = (zext_ln1027_fu_92_p1 + 9'd3);

assign add_ln88_fu_133_p2 = (x_fu_68 + 8'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ctrl1_regp_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_return = ctrl1_regp_read_reg_160;

assign empty_fu_88_p1 = ctrl1_regp_dout[7:0];

assign grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start = grp_collect_input_Pipeline_VITIS_LOOP_91_2_fu_78_ap_start_reg;

assign icmp_ln1027_fu_128_p2 = ((x_fu_68 == empty_reg_164) ? 1'b1 : 1'b0);

assign tmp_8_fu_102_p4 = {{add_ln1027_fu_96_p2[8:2]}};

assign tmp_fu_139_p3 = {{trunc_ln1027_fu_124_p1}, {6'd0}};

assign trunc_ln1027_fu_124_p1 = x_fu_68[5:0];

assign zext_ln1027_6_fu_112_p1 = tmp_8_fu_102_p4;

assign zext_ln1027_fu_92_p1 = empty_fu_88_p1;

always @ (posedge ap_clk) begin
    zext_ln1027_6_reg_169[10:7] <= 4'b0000;
    tmp_reg_177[5:0] <= 6'b000000;
end

endmodule //IFFT_AP_collect_input
