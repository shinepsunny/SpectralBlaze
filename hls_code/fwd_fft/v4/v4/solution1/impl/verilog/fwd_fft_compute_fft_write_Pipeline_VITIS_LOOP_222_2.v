// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_compute_fft_write_Pipeline_VITIS_LOOP_222_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ctrl1_reg_load_cast5,
        zext_ln1057,
        ifmap_fft_M_real_address0,
        ifmap_fft_M_real_ce0,
        ifmap_fft_M_real_q0,
        ifmap_fft_M_imag_address0,
        ifmap_fft_M_imag_ce0,
        ifmap_fft_M_imag_q0,
        in_fft_M_value_address0,
        in_fft_M_value_ce0,
        in_fft_M_value_we0,
        in_fft_M_value_d0,
        in_fft_M_value_1_address0,
        in_fft_M_value_1_ce0,
        in_fft_M_value_1_we0,
        in_fft_M_value_1_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] ctrl1_reg_load_cast5;
input  [7:0] zext_ln1057;
output  [11:0] ifmap_fft_M_real_address0;
output   ifmap_fft_M_real_ce0;
input  [15:0] ifmap_fft_M_real_q0;
output  [11:0] ifmap_fft_M_imag_address0;
output   ifmap_fft_M_imag_ce0;
input  [15:0] ifmap_fft_M_imag_q0;
output  [5:0] in_fft_M_value_address0;
output   in_fft_M_value_ce0;
output   in_fft_M_value_we0;
output  [31:0] in_fft_M_value_d0;
output  [5:0] in_fft_M_value_1_address0;
output   in_fft_M_value_1_ce0;
output   in_fft_M_value_1_we0;
output  [31:0] in_fft_M_value_1_d0;

reg ap_idle;
reg ifmap_fft_M_real_ce0;
reg ifmap_fft_M_imag_ce0;
reg in_fft_M_value_ce0;
reg in_fft_M_value_we0;
reg in_fft_M_value_1_ce0;
reg in_fft_M_value_1_we0;

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
wire   [0:0] icmp_ln1057_fu_134_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] y_2_reg_187;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] y_2_reg_187_pp0_iter1_reg;
wire   [63:0] zext_ln225_fu_164_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] y_cast_fu_175_p1;
reg   [7:0] y_fu_44;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_y_2;
wire   [7:0] add_ln222_fu_140_p2;
wire   [31:0] grp_fu_112_p1;
wire   [31:0] grp_fu_117_p1;
wire   [5:0] trunc_ln225_fu_146_p1;
wire   [11:0] tmp_11_cast_fu_150_p3;
wire   [11:0] zext_ln1057_cast_fu_122_p1;
wire   [11:0] add_ln225_fu_158_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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

fwd_fft_hptosp_16ns_32_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
hptosp_16ns_32_2_no_dsp_1_U154(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ifmap_fft_M_real_q0),
    .ce(1'b1),
    .dout(grp_fu_112_p1)
);

fwd_fft_hptosp_16ns_32_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
hptosp_16ns_32_2_no_dsp_1_U155(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ifmap_fft_M_imag_q0),
    .ce(1'b1),
    .dout(grp_fu_117_p1)
);

fwd_fft_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1057_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            y_fu_44 <= add_ln222_fu_140_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            y_fu_44 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        y_2_reg_187 <= ap_sig_allocacmp_y_2;
        y_2_reg_187_pp0_iter1_reg <= y_2_reg_187;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_y_2 = 8'd0;
    end else begin
        ap_sig_allocacmp_y_2 = y_fu_44;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifmap_fft_M_imag_ce0 = 1'b1;
    end else begin
        ifmap_fft_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifmap_fft_M_real_ce0 = 1'b1;
    end else begin
        ifmap_fft_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        in_fft_M_value_1_ce0 = 1'b1;
    end else begin
        in_fft_M_value_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        in_fft_M_value_1_we0 = 1'b1;
    end else begin
        in_fft_M_value_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        in_fft_M_value_ce0 = 1'b1;
    end else begin
        in_fft_M_value_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        in_fft_M_value_we0 = 1'b1;
    end else begin
        in_fft_M_value_we0 = 1'b0;
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

assign add_ln222_fu_140_p2 = (ap_sig_allocacmp_y_2 + 8'd1);

assign add_ln225_fu_158_p2 = (tmp_11_cast_fu_150_p3 + zext_ln1057_cast_fu_122_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1057_fu_134_p2 = ((ap_sig_allocacmp_y_2 == ctrl1_reg_load_cast5) ? 1'b1 : 1'b0);

assign ifmap_fft_M_imag_address0 = zext_ln225_fu_164_p1;

assign ifmap_fft_M_real_address0 = zext_ln225_fu_164_p1;

assign in_fft_M_value_1_address0 = y_cast_fu_175_p1;

assign in_fft_M_value_1_d0 = grp_fu_117_p1;

assign in_fft_M_value_address0 = y_cast_fu_175_p1;

assign in_fft_M_value_d0 = grp_fu_112_p1;

assign tmp_11_cast_fu_150_p3 = {{trunc_ln225_fu_146_p1}, {6'd0}};

assign trunc_ln225_fu_146_p1 = ap_sig_allocacmp_y_2[5:0];

assign y_cast_fu_175_p1 = y_2_reg_187_pp0_iter1_reg;

assign zext_ln1057_cast_fu_122_p1 = zext_ln1057;

assign zext_ln225_fu_164_p1 = add_ln225_fu_158_p2;

endmodule //fwd_fft_compute_fft_write_Pipeline_VITIS_LOOP_222_2