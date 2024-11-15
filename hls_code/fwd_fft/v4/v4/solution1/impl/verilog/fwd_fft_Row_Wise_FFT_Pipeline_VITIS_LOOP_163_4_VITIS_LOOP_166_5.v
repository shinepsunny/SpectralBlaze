// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_Row_Wise_FFT_Pipeline_VITIS_LOOP_163_4_VITIS_LOOP_166_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Row_Buffer_dout,
        Row_Buffer_empty_n,
        Row_Buffer_read,
        c_fft_row_op_st_din,
        c_fft_row_op_st_full_n,
        c_fft_row_op_st_write,
        bound,
        select_ln150_2
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] Row_Buffer_dout;
input   Row_Buffer_empty_n;
output   Row_Buffer_read;
output  [31:0] c_fft_row_op_st_din;
input   c_fft_row_op_st_full_n;
output   c_fft_row_op_st_write;
input  [15:0] bound;
input  [0:0] select_ln150_2;

reg ap_idle;
reg Row_Buffer_read;
reg[31:0] c_fft_row_op_st_din;
reg c_fft_row_op_st_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1057_fu_89_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    c_fft_row_op_st_blk_n;
wire    ap_block_pp0_stage0;
reg    Row_Buffer_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] indvar_flatten_fu_50;
wire    ap_loop_init;
reg   [15:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [15:0] add_ln1057_fu_95_p2;
reg    ap_block_pp0_stage0_01001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_107;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1057_fu_89_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_50 <= add_ln1057_fu_95_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_50 <= 16'd0;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (select_ln150_2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Row_Buffer_blk_n = Row_Buffer_empty_n;
    end else begin
        Row_Buffer_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (select_ln150_2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Row_Buffer_read = 1'b1;
    end else begin
        Row_Buffer_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_50;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (select_ln150_2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (select_ln150_2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        c_fft_row_op_st_blk_n = c_fft_row_op_st_full_n;
    end else begin
        c_fft_row_op_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_107)) begin
        if ((select_ln150_2 == 1'd1)) begin
            c_fft_row_op_st_din = 32'd0;
        end else if ((select_ln150_2 == 1'd0)) begin
            c_fft_row_op_st_din = Row_Buffer_dout;
        end else begin
            c_fft_row_op_st_din = 'bx;
        end
    end else begin
        c_fft_row_op_st_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (select_ln150_2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (select_ln150_2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        c_fft_row_op_st_write = 1'b1;
    end else begin
        c_fft_row_op_st_write = 1'b0;
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

assign add_ln1057_fu_95_p2 = (ap_sig_allocacmp_indvar_flatten_load + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd1)) | ((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd0)) | ((select_ln150_2 == 1'd0) & (1'b0 == Row_Buffer_empty_n))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd1)) | ((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd0)) | ((select_ln150_2 == 1'd0) & (1'b0 == Row_Buffer_empty_n))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd1)) | ((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd0)) | ((select_ln150_2 == 1'd0) & (1'b0 == Row_Buffer_empty_n))));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd1)) | ((c_fft_row_op_st_full_n == 1'b0) & (select_ln150_2 == 1'd0)) | ((select_ln150_2 == 1'd0) & (1'b0 == Row_Buffer_empty_n)));
end

always @ (*) begin
    ap_condition_107 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1057_fu_89_p2 = ((ap_sig_allocacmp_indvar_flatten_load == bound) ? 1'b1 : 1'b0);

endmodule //fwd_fft_Row_Wise_FFT_Pipeline_VITIS_LOOP_163_4_VITIS_LOOP_166_5
