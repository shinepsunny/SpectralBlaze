// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_VITIS_LOOP_248_7_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        c_ifmap_col_op_st_dout,
        c_ifmap_col_op_st_empty_n,
        c_ifmap_col_op_st_read,
        p_read,
        in_fft_M_real1_address0,
        in_fft_M_real1_ce0,
        in_fft_M_real1_we0,
        in_fft_M_real1_d0,
        in_fft_M_imag2_address0,
        in_fft_M_imag2_ce0,
        in_fft_M_imag2_we0,
        in_fft_M_imag2_d0,
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
input  [31:0] c_ifmap_col_op_st_dout;
input   c_ifmap_col_op_st_empty_n;
output   c_ifmap_col_op_st_read;
input  [31:0] p_read;
output  [5:0] in_fft_M_real1_address0;
output   in_fft_M_real1_ce0;
output   in_fft_M_real1_we0;
output  [15:0] in_fft_M_real1_d0;
output  [5:0] in_fft_M_imag2_address0;
output   in_fft_M_imag2_ce0;
output   in_fft_M_imag2_we0;
output  [15:0] in_fft_M_imag2_d0;
output  [31:0] ap_return;

reg ap_idle;
reg c_ifmap_col_op_st_read;
reg in_fft_M_real1_ce0;
reg in_fft_M_real1_we0;
reg in_fft_M_imag2_ce0;
reg in_fft_M_imag2_we0;
reg[31:0] ap_return;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln1057_fu_100_p2;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    c_ifmap_col_op_st_blk_n;
wire    ap_block_pp0_stage0;
reg   [7:0] x_15_reg_151;
reg    ap_block_pp0_stage0_11001;
wire   [15:0] trunc_ln145_fu_112_p1;
reg   [15:0] trunc_ln145_reg_159;
reg   [15:0] trunc_ln145_3_reg_164;
wire   [63:0] zext_ln219_fu_131_p1;
reg   [7:0] x_fu_46;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_x_15;
wire   [7:0] add_ln248_fu_106_p2;
wire   [7:0] empty_fu_88_p1;
reg   [31:0] ap_return_preg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_108;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_return_preg = 32'd0;
end

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
        ap_return_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_return_preg <= p_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_108)) begin
        if ((icmp_ln1057_fu_100_p2 == 1'd0)) begin
            x_fu_46 <= add_ln248_fu_106_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_46 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_100_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln145_3_reg_164 <= {{c_ifmap_col_op_st_dout[31:16]}};
        trunc_ln145_reg_159 <= trunc_ln145_fu_112_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_15_reg_151 <= ap_sig_allocacmp_x_15;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln1057_fu_100_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_return = p_read;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_x_15 = 8'd0;
    end else begin
        ap_sig_allocacmp_x_15 = x_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (icmp_ln1057_fu_100_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_ifmap_col_op_st_blk_n = c_ifmap_col_op_st_empty_n;
    end else begin
        c_ifmap_col_op_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1057_fu_100_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_ifmap_col_op_st_read = 1'b1;
    end else begin
        c_ifmap_col_op_st_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_fft_M_imag2_ce0 = 1'b1;
    end else begin
        in_fft_M_imag2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_fft_M_imag2_we0 = 1'b1;
    end else begin
        in_fft_M_imag2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_fft_M_real1_ce0 = 1'b1;
    end else begin
        in_fft_M_real1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_fft_M_real1_we0 = 1'b1;
    end else begin
        in_fft_M_real1_we0 = 1'b0;
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

assign add_ln248_fu_106_p2 = (ap_sig_allocacmp_x_15 + 8'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_100_p2 == 1'd0) & (c_ifmap_col_op_st_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_100_p2 == 1'd0) & (c_ifmap_col_op_st_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((icmp_ln1057_fu_100_p2 == 1'd0) & (c_ifmap_col_op_st_empty_n == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_108 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_88_p1 = p_read[7:0];

assign icmp_ln1057_fu_100_p2 = ((ap_sig_allocacmp_x_15 == empty_fu_88_p1) ? 1'b1 : 1'b0);

assign in_fft_M_imag2_address0 = zext_ln219_fu_131_p1;

assign in_fft_M_imag2_d0 = trunc_ln145_3_reg_164;

assign in_fft_M_real1_address0 = zext_ln219_fu_131_p1;

assign in_fft_M_real1_d0 = trunc_ln145_reg_159;

assign trunc_ln145_fu_112_p1 = c_ifmap_col_op_st_dout[15:0];

assign zext_ln219_fu_131_p1 = x_15_reg_151;

endmodule //fwd_fft_VITIS_LOOP_248_7_proc
