// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_VITIS_LOOP_181_7_proc_Pipeline_VITIS_LOOP_181_7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        c_ifmap_col_op_st_dout,
        c_ifmap_col_op_st_empty_n,
        c_ifmap_col_op_st_read,
        trunc_ln,
        in_fft_M_value1_address0,
        in_fft_M_value1_ce0,
        in_fft_M_value1_we0,
        in_fft_M_value1_d0,
        in_fft_M_value_22_address0,
        in_fft_M_value_22_ce0,
        in_fft_M_value_22_we0,
        in_fft_M_value_22_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] c_ifmap_col_op_st_dout;
input   c_ifmap_col_op_st_empty_n;
output   c_ifmap_col_op_st_read;
input  [7:0] trunc_ln;
output  [5:0] in_fft_M_value1_address0;
output   in_fft_M_value1_ce0;
output   in_fft_M_value1_we0;
output  [31:0] in_fft_M_value1_d0;
output  [5:0] in_fft_M_value_22_address0;
output   in_fft_M_value_22_ce0;
output   in_fft_M_value_22_we0;
output  [31:0] in_fft_M_value_22_d0;

reg ap_idle;
reg c_ifmap_col_op_st_read;
reg in_fft_M_value1_ce0;
reg in_fft_M_value1_we0;
reg in_fft_M_value_22_ce0;
reg in_fft_M_value_22_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1057_fu_104_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    c_ifmap_col_op_st_blk_n;
wire    ap_block_pp0_stage0;
reg   [7:0] x_3_reg_155;
reg    ap_block_pp0_stage0_11001;
reg   [7:0] x_3_reg_155_pp0_iter1_reg;
reg   [7:0] x_3_reg_155_pp0_iter2_reg;
wire   [15:0] trunc_ln145_fu_121_p1;
reg   [15:0] trunc_ln145_reg_164;
reg   [15:0] trunc_ln145_3_reg_169;
wire   [63:0] zext_ln152_fu_143_p1;
reg   [7:0] x_fu_46;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_x_3;
wire   [7:0] add_ln181_fu_110_p2;
wire   [31:0] grp_fu_88_p1;
wire   [31:0] grp_fu_92_p1;
wire   [15:0] grp_fu_88_p0;
wire   [15:0] grp_fu_92_p0;
reg    grp_fu_88_ce;
reg    grp_fu_92_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fwd_fft_hptosp_16ns_32_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
hptosp_16ns_32_2_no_dsp_1_U80(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_88_p0),
    .ce(grp_fu_88_ce),
    .dout(grp_fu_88_p1)
);

fwd_fft_hptosp_16ns_32_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
hptosp_16ns_32_2_no_dsp_1_U81(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_92_p0),
    .ce(grp_fu_92_ce),
    .dout(grp_fu_92_p1)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1057_fu_104_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            x_fu_46 <= add_ln181_fu_110_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_46 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln145_3_reg_169 <= {{c_ifmap_col_op_st_dout[31:16]}};
        trunc_ln145_reg_164 <= trunc_ln145_fu_121_p1;
        x_3_reg_155 <= ap_sig_allocacmp_x_3;
        x_3_reg_155_pp0_iter1_reg <= x_3_reg_155;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        x_3_reg_155_pp0_iter2_reg <= x_3_reg_155_pp0_iter1_reg;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_104_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_x_3 = 8'd0;
    end else begin
        ap_sig_allocacmp_x_3 = x_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_ifmap_col_op_st_blk_n = c_ifmap_col_op_st_empty_n;
    end else begin
        c_ifmap_col_op_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_ifmap_col_op_st_read = 1'b1;
    end else begin
        c_ifmap_col_op_st_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_88_ce = 1'b1;
    end else begin
        grp_fu_88_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_92_ce = 1'b1;
    end else begin
        grp_fu_92_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        in_fft_M_value1_ce0 = 1'b1;
    end else begin
        in_fft_M_value1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        in_fft_M_value1_we0 = 1'b1;
    end else begin
        in_fft_M_value1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        in_fft_M_value_22_ce0 = 1'b1;
    end else begin
        in_fft_M_value_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        in_fft_M_value_22_we0 = 1'b1;
    end else begin
        in_fft_M_value_22_we0 = 1'b0;
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

assign add_ln181_fu_110_p2 = (ap_sig_allocacmp_x_3 + 8'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((c_ifmap_col_op_st_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((c_ifmap_col_op_st_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (c_ifmap_col_op_st_empty_n == 1'b0);
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_88_p0 = trunc_ln145_reg_164;

assign grp_fu_92_p0 = trunc_ln145_3_reg_169;

assign icmp_ln1057_fu_104_p2 = ((ap_sig_allocacmp_x_3 == trunc_ln) ? 1'b1 : 1'b0);

assign in_fft_M_value1_address0 = zext_ln152_fu_143_p1;

assign in_fft_M_value1_d0 = grp_fu_88_p1;

assign in_fft_M_value_22_address0 = zext_ln152_fu_143_p1;

assign in_fft_M_value_22_d0 = grp_fu_92_p1;

assign trunc_ln145_fu_121_p1 = c_ifmap_col_op_st_dout[15:0];

assign zext_ln152_fu_143_p1 = x_3_reg_155_pp0_iter2_reg;

endmodule //fwd_fft_VITIS_LOOP_181_7_proc_Pipeline_VITIS_LOOP_181_7