// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Mem_patch_Wr_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bound,
        zext_ln552,
        ifmap_CF_address0,
        ifmap_CF_ce0,
        ifmap_CF_q0,
        ifmap_CF_address1,
        ifmap_CF_ce1,
        ifmap_CF_q1,
        fft_out,
        fft_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [69:0] bound;
input  [7:0] zext_ln552;
output  [11:0] ifmap_CF_address0;
output   ifmap_CF_ce0;
input  [31:0] ifmap_CF_q0;
output  [11:0] ifmap_CF_address1;
output   ifmap_CF_ce1;
input  [31:0] ifmap_CF_q1;
output  [127:0] fft_out;
output   fft_out_ap_vld;

reg ap_idle;
reg[11:0] ifmap_CF_address0;
reg ifmap_CF_ce0;
reg[11:0] ifmap_CF_address1;
reg ifmap_CF_ce1;
reg fft_out_ap_vld;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln1057_fu_156_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln552_cast_fu_134_p1;
reg   [63:0] zext_ln552_cast_reg_331;
reg   [0:0] icmp_ln1057_reg_336;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] x_load_reg_340;
wire   [0:0] icmp_ln1057_1_fu_179_p2;
reg   [0:0] icmp_ln1057_1_reg_345;
wire   [5:0] trunc_ln567_fu_192_p1;
reg   [5:0] trunc_ln567_reg_350;
wire   [11:0] add_ln567_3_fu_257_p2;
reg   [11:0] add_ln567_3_reg_365;
wire   [11:0] add_ln567_4_fu_269_p2;
reg   [11:0] add_ln567_4_reg_370;
reg   [31:0] ifmap_CF_load_reg_375;
reg   [31:0] ifmap_CF_load_1_reg_380;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln567_fu_229_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln567_1_fu_246_p1;
wire   [63:0] zext_ln567_2_fu_286_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln567_3_fu_290_p1;
reg   [63:0] x_fu_62;
wire   [63:0] add_ln561_fu_275_p2;
wire    ap_loop_init;
reg   [7:0] y_fu_66;
wire   [7:0] select_ln1057_1_fu_184_p3;
reg   [69:0] indvar_flatten_fu_70;
wire   [69:0] add_ln1057_fu_161_p2;
wire    ap_block_pp0_stage0_01001;
wire   [7:0] add_ln558_fu_173_p2;
wire   [63:0] select_ln1057_fu_206_p3;
wire   [11:0] tmp_1_cast_fu_216_p3;
wire   [11:0] trunc_ln1057_fu_212_p1;
wire   [11:0] add_ln567_1_fu_223_p2;
wire   [11:0] or_ln567_fu_234_p2;
wire   [11:0] add_ln567_2_fu_240_p2;
wire   [11:0] add_ln567_fu_251_p2;
wire   [11:0] or_ln567_1_fu_263_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

Mem_patch_Wr_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten_fu_70 <= 70'd0;
    end else if (((icmp_ln1057_fu_156_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_70 <= add_ln1057_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_fu_62 <= 64'd0;
        end else if (((icmp_ln1057_reg_336 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_fu_62 <= add_ln561_fu_275_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        y_fu_66 <= 8'd0;
    end else if (((icmp_ln1057_fu_156_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        y_fu_66 <= select_ln1057_1_fu_184_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_reg_336 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln567_3_reg_365[11 : 1] <= add_ln567_3_fu_257_p2[11 : 1];
        add_ln567_4_reg_370[11 : 2] <= add_ln567_4_fu_269_p2[11 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_fu_156_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln1057_1_reg_345 <= icmp_ln1057_1_fu_179_p2;
        trunc_ln567_reg_350 <= trunc_ln567_fu_192_p1;
        x_load_reg_340 <= x_fu_62;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln1057_reg_336 <= icmp_ln1057_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ifmap_CF_load_1_reg_380 <= ifmap_CF_q0;
        ifmap_CF_load_reg_375 <= ifmap_CF_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln552_cast_reg_331[7 : 0] <= zext_ln552_cast_fu_134_p1[7 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_156_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_reg_336 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fft_out_ap_vld = 1'b1;
    end else begin
        fft_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ifmap_CF_address0 = zext_ln567_3_fu_290_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ifmap_CF_address0 = zext_ln567_1_fu_246_p1;
        end else begin
            ifmap_CF_address0 = 'bx;
        end
    end else begin
        ifmap_CF_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ifmap_CF_address1 = zext_ln567_2_fu_286_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ifmap_CF_address1 = zext_ln567_fu_229_p1;
        end else begin
            ifmap_CF_address1 = 'bx;
        end
    end else begin
        ifmap_CF_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ifmap_CF_ce0 = 1'b1;
    end else begin
        ifmap_CF_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ifmap_CF_ce1 = 1'b1;
    end else begin
        ifmap_CF_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1057_fu_161_p2 = (indvar_flatten_fu_70 + 70'd1);

assign add_ln558_fu_173_p2 = (y_fu_66 + 8'd1);

assign add_ln561_fu_275_p2 = (select_ln1057_fu_206_p3 + 64'd4);

assign add_ln567_1_fu_223_p2 = (tmp_1_cast_fu_216_p3 + trunc_ln1057_fu_212_p1);

assign add_ln567_2_fu_240_p2 = (tmp_1_cast_fu_216_p3 + or_ln567_fu_234_p2);

assign add_ln567_3_fu_257_p2 = (tmp_1_cast_fu_216_p3 + add_ln567_fu_251_p2);

assign add_ln567_4_fu_269_p2 = (tmp_1_cast_fu_216_p3 + or_ln567_1_fu_263_p2);

assign add_ln567_fu_251_p2 = (or_ln567_fu_234_p2 + 12'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign fft_out = {{{{ifmap_CF_q0}, {ifmap_CF_q1}}, {ifmap_CF_load_1_reg_380}}, {ifmap_CF_load_reg_375}};

assign icmp_ln1057_1_fu_179_p2 = (($signed(x_fu_62) < $signed(zext_ln552_cast_reg_331)) ? 1'b1 : 1'b0);

assign icmp_ln1057_fu_156_p2 = ((indvar_flatten_fu_70 == bound) ? 1'b1 : 1'b0);

assign or_ln567_1_fu_263_p2 = (trunc_ln1057_fu_212_p1 | 12'd3);

assign or_ln567_fu_234_p2 = (trunc_ln1057_fu_212_p1 | 12'd1);

assign select_ln1057_1_fu_184_p3 = ((icmp_ln1057_1_fu_179_p2[0:0] == 1'b1) ? y_fu_66 : add_ln558_fu_173_p2);

assign select_ln1057_fu_206_p3 = ((icmp_ln1057_1_reg_345[0:0] == 1'b1) ? x_load_reg_340 : 64'd0);

assign tmp_1_cast_fu_216_p3 = {{trunc_ln567_reg_350}, {6'd0}};

assign trunc_ln1057_fu_212_p1 = select_ln1057_fu_206_p3[11:0];

assign trunc_ln567_fu_192_p1 = select_ln1057_1_fu_184_p3[5:0];

assign zext_ln552_cast_fu_134_p1 = zext_ln552;

assign zext_ln567_1_fu_246_p1 = add_ln567_2_fu_240_p2;

assign zext_ln567_2_fu_286_p1 = add_ln567_3_reg_365;

assign zext_ln567_3_fu_290_p1 = add_ln567_4_reg_370;

assign zext_ln567_fu_229_p1 = add_ln567_1_fu_223_p2;

always @ (posedge ap_clk) begin
    zext_ln552_cast_reg_331[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln567_3_reg_365[0] <= 1'b0;
    add_ln567_4_reg_370[1:0] <= 2'b11;
end

endmodule //Mem_patch_Wr_Mem_patch_Wr_Pipeline_VITIS_LOOP_558_4_VITIS_LOOP_561_5