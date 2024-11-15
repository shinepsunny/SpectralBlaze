// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fwd_fft_VITIS_LOOP_184_8_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_read,
        c_fft_row_op_st_din,
        c_fft_row_op_st_full_n,
        c_fft_row_op_st_write,
        pny,
        p_read1,
        y_6,
        Row_Buffer_din,
        Row_Buffer_full_n,
        Row_Buffer_write
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
output  [31:0] c_fft_row_op_st_din;
input   c_fft_row_op_st_full_n;
output   c_fft_row_op_st_write;
input  [7:0] pny;
input  [7:0] p_read1;
input  [31:0] y_6;
output  [31:0] Row_Buffer_din;
input   Row_Buffer_full_n;
output   Row_Buffer_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg c_fft_row_op_st_write;
reg Row_Buffer_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    c_fft_row_op_st_blk_n;
wire    ap_CS_fsm_state7;
reg    Row_Buffer_blk_n;
reg   [0:0] and_ln188_reg_839;
wire   [7:0] empty_fu_182_p1;
reg   [7:0] empty_reg_834;
wire   [0:0] and_ln188_fu_226_p2;
wire   [7:0] add_ln184_fu_251_p2;
reg   [7:0] add_ln184_reg_846;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1057_fu_246_p2;
wire   [15:0] out_fft_M_real_V_q0;
reg   [15:0] p_Val2_s_reg_861;
wire    ap_CS_fsm_state3;
reg   [0:0] p_Result_39_reg_868;
wire   [15:0] out_fft_M_imag_V_q0;
reg   [15:0] p_Val2_8_reg_874;
reg   [0:0] p_Result_42_reg_881;
wire   [0:0] icmp_ln1035_fu_273_p2;
reg   [0:0] icmp_ln1035_reg_887;
wire    ap_CS_fsm_state4;
wire   [15:0] tmp_V_11_fu_283_p3;
reg   [15:0] tmp_V_11_reg_892;
wire   [31:0] sub_ln1044_fu_315_p2;
reg   [31:0] sub_ln1044_reg_900;
wire   [15:0] trunc_ln1044_fu_321_p1;
reg   [15:0] trunc_ln1044_reg_907;
wire   [4:0] trunc_ln1047_fu_325_p1;
reg   [4:0] trunc_ln1047_reg_912;
wire   [4:0] trunc_ln1043_fu_329_p1;
reg   [4:0] trunc_ln1043_reg_917;
wire   [0:0] icmp_ln1035_2_fu_333_p2;
reg   [0:0] icmp_ln1035_2_reg_922;
wire   [15:0] tmp_V_12_fu_343_p3;
reg   [15:0] tmp_V_12_reg_927;
wire   [31:0] sub_ln1044_2_fu_375_p2;
reg   [31:0] sub_ln1044_2_reg_935;
wire   [15:0] trunc_ln1044_2_fu_381_p1;
reg   [15:0] trunc_ln1044_2_reg_942;
wire   [4:0] trunc_ln1047_2_fu_385_p1;
reg   [4:0] trunc_ln1047_2_reg_947;
wire   [4:0] trunc_ln1043_2_fu_389_p1;
reg   [4:0] trunc_ln1043_2_reg_952;
wire   [15:0] or_ln_i_fu_484_p3;
reg   [15:0] or_ln_i_reg_957;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln1058_fu_492_p2;
reg   [0:0] icmp_ln1058_reg_962;
wire   [15:0] or_ln1061_2_i_fu_589_p3;
reg   [15:0] or_ln1061_2_i_reg_967;
wire   [0:0] icmp_ln1058_2_fu_597_p2;
reg   [0:0] icmp_ln1058_2_reg_972;
reg   [14:0] m_21_reg_977;
wire    ap_CS_fsm_state6;
wire   [4:0] select_ln1043_fu_661_p3;
reg   [4:0] select_ln1043_reg_982;
reg   [14:0] m_reg_987;
wire   [4:0] select_ln1043_2_fu_727_p3;
reg   [4:0] select_ln1043_2_reg_992;
wire   [5:0] out_fft_M_imag_V_address0;
reg    out_fft_M_imag_V_ce0;
wire   [5:0] out_fft_M_real_V_address0;
reg    out_fft_M_real_V_ce0;
wire   [63:0] zext_ln149_fu_240_p1;
reg   [7:0] x_fu_108;
reg    ap_block_state7;
reg    ap_block_state1;
wire   [31:0] tmp_i_fu_813_p3;
wire   [8:0] ctrl2_reg_load_cast_cast_fu_190_p1;
wire   [8:0] pny_cast_fu_186_p1;
wire   [8:0] sub_i_i_fu_194_p2;
wire   [7:0] lshr_ln_fu_206_p4;
wire   [31:0] zext_ln1065_fu_216_p1;
wire   [0:0] icmp_ln188_fu_220_p2;
wire   [0:0] cmp_i_i_fu_200_p2;
wire   [15:0] tmp_V_fu_278_p2;
reg   [15:0] p_Result_s_fu_289_p4;
wire   [31:0] p_Result_40_fu_299_p3;
reg   [31:0] l_fu_307_p3;
wire   [15:0] tmp_V_7_fu_338_p2;
reg   [15:0] p_Result_27_fu_349_p4;
wire   [31:0] p_Result_43_fu_359_p3;
reg   [31:0] l_2_fu_367_p3;
wire   [31:0] lsb_index_fu_393_p2;
wire   [30:0] tmp_fu_398_p4;
wire   [4:0] sub_ln1047_fu_414_p2;
wire   [15:0] zext_ln1047_fu_419_p1;
wire   [15:0] lshr_ln1047_fu_423_p2;
wire   [15:0] p_Result_22_fu_429_p2;
wire   [0:0] tmp_11_fu_440_p3;
wire   [0:0] icmp_ln1046_fu_408_p2;
wire   [0:0] icmp_ln1047_fu_434_p2;
wire   [15:0] add_ln1049_fu_460_p2;
wire   [0:0] p_Result_23_fu_465_p3;
wire   [0:0] and_ln1046_fu_454_p2;
wire   [0:0] or_ln1061_3_fu_472_p2;
wire   [0:0] xor_ln1049_fu_448_p2;
wire   [0:0] and_ln1061_fu_478_p2;
wire   [31:0] lsb_index_2_fu_498_p2;
wire   [30:0] tmp_14_fu_503_p4;
wire   [4:0] sub_ln1047_2_fu_519_p2;
wire   [15:0] zext_ln1047_2_fu_524_p1;
wire   [15:0] lshr_ln1047_2_fu_528_p2;
wire   [15:0] p_Result_29_fu_534_p2;
wire   [0:0] tmp_15_fu_545_p3;
wire   [0:0] icmp_ln1046_2_fu_513_p2;
wire   [0:0] icmp_ln1047_2_fu_539_p2;
wire   [15:0] add_ln1049_2_fu_565_p2;
wire   [0:0] p_Result_30_fu_570_p3;
wire   [0:0] and_ln1046_2_fu_559_p2;
wire   [0:0] or_ln1061_fu_577_p2;
wire   [0:0] xor_ln1049_2_fu_553_p2;
wire   [0:0] and_ln1061_2_fu_583_p2;
wire   [31:0] add_ln1058_fu_603_p2;
wire   [15:0] add_ln1058cast_fu_608_p1;
wire   [31:0] sub_ln1059_fu_617_p2;
wire   [15:0] sub_ln1059cast_fu_622_p1;
wire   [15:0] lshr_ln1058_fu_612_p2;
wire   [15:0] shl_ln1059_fu_626_p2;
wire   [15:0] m_10_fu_631_p3;
wire   [15:0] m_11_fu_638_p2;
wire   [0:0] p_Result_24_fu_653_p3;
wire   [31:0] add_ln1058_2_fu_669_p2;
wire   [15:0] add_ln1058_2cast_fu_674_p1;
wire   [31:0] sub_ln1059_2_fu_683_p2;
wire   [15:0] sub_ln1059_2cast_fu_688_p1;
wire   [15:0] lshr_ln1058_2_fu_678_p2;
wire   [15:0] shl_ln1059_2_fu_692_p2;
wire   [15:0] m_12_fu_697_p3;
wire   [15:0] m_13_fu_704_p2;
wire   [0:0] p_Result_31_fu_719_p3;
wire   [4:0] sub_ln1064_fu_738_p2;
wire   [4:0] add_ln1064_fu_743_p2;
wire   [15:0] zext_ln1062_fu_735_p1;
wire   [5:0] tmp_14_i_fu_748_p3;
wire   [4:0] sub_ln1064_2_fu_770_p2;
wire   [4:0] add_ln1064_2_fu_775_p2;
wire   [15:0] zext_ln1062_2_fu_767_p1;
wire   [5:0] tmp_16_i_fu_780_p3;
wire   [15:0] p_Result_44_fu_787_p5;
wire   [15:0] p_Result_41_fu_755_p5;
wire   [15:0] select_ln174_fu_799_p3;
wire   [15:0] select_ln174_2_fu_806_p3;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
end

fwd_fft_VITIS_LOOP_184_8_proc_out_fft_M_imag_V #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
out_fft_M_imag_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(out_fft_M_imag_V_address0),
    .ce0(out_fft_M_imag_V_ce0),
    .q0(out_fft_M_imag_V_q0)
);

fwd_fft_VITIS_LOOP_184_8_proc_out_fft_M_imag_V #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
out_fft_M_real_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(out_fft_M_real_V_address0),
    .ce0(out_fft_M_real_V_ce0),
    .q0(out_fft_M_real_V_q0)
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
        end else if (((icmp_ln1057_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        x_fu_108 <= 8'd0;
    end else if ((~((c_fft_row_op_st_full_n == 1'b0) | ((1'd1 == and_ln188_reg_839) & (1'b0 == Row_Buffer_full_n))) & (1'b1 == ap_CS_fsm_state7))) begin
        x_fu_108 <= add_ln184_reg_846;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln184_reg_846 <= add_ln184_fu_251_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        and_ln188_reg_839 <= and_ln188_fu_226_p2;
        empty_reg_834 <= empty_fu_182_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln1035_2_reg_922 <= icmp_ln1035_2_fu_333_p2;
        icmp_ln1035_reg_887 <= icmp_ln1035_fu_273_p2;
        sub_ln1044_2_reg_935 <= sub_ln1044_2_fu_375_p2;
        sub_ln1044_reg_900 <= sub_ln1044_fu_315_p2;
        tmp_V_11_reg_892 <= tmp_V_11_fu_283_p3;
        tmp_V_12_reg_927 <= tmp_V_12_fu_343_p3;
        trunc_ln1043_2_reg_952 <= trunc_ln1043_2_fu_389_p1;
        trunc_ln1043_reg_917 <= trunc_ln1043_fu_329_p1;
        trunc_ln1044_2_reg_942 <= trunc_ln1044_2_fu_381_p1;
        trunc_ln1044_reg_907 <= trunc_ln1044_fu_321_p1;
        trunc_ln1047_2_reg_947 <= trunc_ln1047_2_fu_385_p1;
        trunc_ln1047_reg_912 <= trunc_ln1047_fu_325_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln1035_2_reg_922 == 1'd0))) begin
        icmp_ln1058_2_reg_972 <= icmp_ln1058_2_fu_597_p2;
        or_ln1061_2_i_reg_967[0] <= or_ln1061_2_i_fu_589_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1035_reg_887 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        icmp_ln1058_reg_962 <= icmp_ln1058_fu_492_p2;
        or_ln_i_reg_957[0] <= or_ln_i_fu_484_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1035_reg_887 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        m_21_reg_977 <= {{m_11_fu_638_p2[15:1]}};
        select_ln1043_reg_982[0] <= select_ln1043_fu_661_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln1035_2_reg_922 == 1'd0))) begin
        m_reg_987 <= {{m_13_fu_704_p2[15:1]}};
        select_ln1043_2_reg_992[0] <= select_ln1043_2_fu_727_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Result_39_reg_868 <= out_fft_M_real_V_q0[32'd15];
        p_Result_42_reg_881 <= out_fft_M_imag_V_q0[32'd15];
        p_Val2_8_reg_874 <= out_fft_M_imag_V_q0;
        p_Val2_s_reg_861 <= out_fft_M_real_V_q0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln188_reg_839) & (1'b1 == ap_CS_fsm_state7))) begin
        Row_Buffer_blk_n = Row_Buffer_full_n;
    end else begin
        Row_Buffer_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((c_fft_row_op_st_full_n == 1'b0) | ((1'd1 == and_ln188_reg_839) & (1'b0 == Row_Buffer_full_n))) & (1'd1 == and_ln188_reg_839) & (1'b1 == ap_CS_fsm_state7))) begin
        Row_Buffer_write = 1'b1;
    end else begin
        Row_Buffer_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((c_fft_row_op_st_full_n == 1'b0) | ((1'd1 == and_ln188_reg_839) & (1'b0 == Row_Buffer_full_n)))) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln1057_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        c_fft_row_op_st_blk_n = c_fft_row_op_st_full_n;
    end else begin
        c_fft_row_op_st_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((c_fft_row_op_st_full_n == 1'b0) | ((1'd1 == and_ln188_reg_839) & (1'b0 == Row_Buffer_full_n))) & (1'b1 == ap_CS_fsm_state7))) begin
        c_fft_row_op_st_write = 1'b1;
    end else begin
        c_fft_row_op_st_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_fft_M_imag_V_ce0 = 1'b1;
    end else begin
        out_fft_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_fft_M_real_V_ce0 = 1'b1;
    end else begin
        out_fft_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln1057_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if ((~((c_fft_row_op_st_full_n == 1'b0) | ((1'd1 == and_ln188_reg_839) & (1'b0 == Row_Buffer_full_n))) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Row_Buffer_din = tmp_i_fu_813_p3;

assign add_ln1049_2_fu_565_p2 = ($signed(trunc_ln1044_2_reg_942) + $signed(16'd65525));

assign add_ln1049_fu_460_p2 = ($signed(trunc_ln1044_reg_907) + $signed(16'd65525));

assign add_ln1058_2_fu_669_p2 = ($signed(sub_ln1044_2_reg_935) + $signed(32'd4294967284));

assign add_ln1058_2cast_fu_674_p1 = add_ln1058_2_fu_669_p2[15:0];

assign add_ln1058_fu_603_p2 = ($signed(sub_ln1044_reg_900) + $signed(32'd4294967284));

assign add_ln1058cast_fu_608_p1 = add_ln1058_fu_603_p2[15:0];

assign add_ln1064_2_fu_775_p2 = (sub_ln1064_2_fu_770_p2 + select_ln1043_2_reg_992);

assign add_ln1064_fu_743_p2 = (sub_ln1064_fu_738_p2 + select_ln1043_reg_982);

assign add_ln184_fu_251_p2 = (x_fu_108 + 8'd1);

assign and_ln1046_2_fu_559_p2 = (icmp_ln1047_2_fu_539_p2 & icmp_ln1046_2_fu_513_p2);

assign and_ln1046_fu_454_p2 = (icmp_ln1047_fu_434_p2 & icmp_ln1046_fu_408_p2);

assign and_ln1061_2_fu_583_p2 = (xor_ln1049_2_fu_553_p2 & or_ln1061_fu_577_p2);

assign and_ln1061_fu_478_p2 = (xor_ln1049_fu_448_p2 & or_ln1061_3_fu_472_p2);

assign and_ln188_fu_226_p2 = (icmp_ln188_fu_220_p2 & cmp_i_i_fu_200_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state7 = ((c_fft_row_op_st_full_n == 1'b0) | ((1'd1 == and_ln188_reg_839) & (1'b0 == Row_Buffer_full_n)));
end

assign c_fft_row_op_st_din = tmp_i_fu_813_p3;

assign cmp_i_i_fu_200_p2 = ((pny_cast_fu_186_p1 != sub_i_i_fu_194_p2) ? 1'b1 : 1'b0);

assign ctrl2_reg_load_cast_cast_fu_190_p1 = p_read1;

assign empty_fu_182_p1 = p_read[7:0];

assign icmp_ln1035_2_fu_333_p2 = ((p_Val2_8_reg_874 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1035_fu_273_p2 = ((p_Val2_s_reg_861 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1046_2_fu_513_p2 = (($signed(tmp_14_fu_503_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1046_fu_408_p2 = (($signed(tmp_fu_398_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1047_2_fu_539_p2 = ((p_Result_29_fu_534_p2 != 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1047_fu_434_p2 = ((p_Result_22_fu_429_p2 != 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1057_fu_246_p2 = ((x_fu_108 == empty_reg_834) ? 1'b1 : 1'b0);

assign icmp_ln1058_2_fu_597_p2 = (($signed(lsb_index_2_fu_498_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1058_fu_492_p2 = (($signed(lsb_index_fu_393_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln188_fu_220_p2 = (($signed(zext_ln1065_fu_216_p1) < $signed(y_6)) ? 1'b1 : 1'b0);


always @ (p_Result_43_fu_359_p3) begin
    if (p_Result_43_fu_359_p3[0] == 1'b1) begin
        l_2_fu_367_p3 = 32'd0;
    end else if (p_Result_43_fu_359_p3[1] == 1'b1) begin
        l_2_fu_367_p3 = 32'd1;
    end else if (p_Result_43_fu_359_p3[2] == 1'b1) begin
        l_2_fu_367_p3 = 32'd2;
    end else if (p_Result_43_fu_359_p3[3] == 1'b1) begin
        l_2_fu_367_p3 = 32'd3;
    end else if (p_Result_43_fu_359_p3[4] == 1'b1) begin
        l_2_fu_367_p3 = 32'd4;
    end else if (p_Result_43_fu_359_p3[5] == 1'b1) begin
        l_2_fu_367_p3 = 32'd5;
    end else if (p_Result_43_fu_359_p3[6] == 1'b1) begin
        l_2_fu_367_p3 = 32'd6;
    end else if (p_Result_43_fu_359_p3[7] == 1'b1) begin
        l_2_fu_367_p3 = 32'd7;
    end else if (p_Result_43_fu_359_p3[8] == 1'b1) begin
        l_2_fu_367_p3 = 32'd8;
    end else if (p_Result_43_fu_359_p3[9] == 1'b1) begin
        l_2_fu_367_p3 = 32'd9;
    end else if (p_Result_43_fu_359_p3[10] == 1'b1) begin
        l_2_fu_367_p3 = 32'd10;
    end else if (p_Result_43_fu_359_p3[11] == 1'b1) begin
        l_2_fu_367_p3 = 32'd11;
    end else if (p_Result_43_fu_359_p3[12] == 1'b1) begin
        l_2_fu_367_p3 = 32'd12;
    end else if (p_Result_43_fu_359_p3[13] == 1'b1) begin
        l_2_fu_367_p3 = 32'd13;
    end else if (p_Result_43_fu_359_p3[14] == 1'b1) begin
        l_2_fu_367_p3 = 32'd14;
    end else if (p_Result_43_fu_359_p3[15] == 1'b1) begin
        l_2_fu_367_p3 = 32'd15;
    end else if (p_Result_43_fu_359_p3[16] == 1'b1) begin
        l_2_fu_367_p3 = 32'd16;
    end else if (p_Result_43_fu_359_p3[17] == 1'b1) begin
        l_2_fu_367_p3 = 32'd17;
    end else if (p_Result_43_fu_359_p3[18] == 1'b1) begin
        l_2_fu_367_p3 = 32'd18;
    end else if (p_Result_43_fu_359_p3[19] == 1'b1) begin
        l_2_fu_367_p3 = 32'd19;
    end else if (p_Result_43_fu_359_p3[20] == 1'b1) begin
        l_2_fu_367_p3 = 32'd20;
    end else if (p_Result_43_fu_359_p3[21] == 1'b1) begin
        l_2_fu_367_p3 = 32'd21;
    end else if (p_Result_43_fu_359_p3[22] == 1'b1) begin
        l_2_fu_367_p3 = 32'd22;
    end else if (p_Result_43_fu_359_p3[23] == 1'b1) begin
        l_2_fu_367_p3 = 32'd23;
    end else if (p_Result_43_fu_359_p3[24] == 1'b1) begin
        l_2_fu_367_p3 = 32'd24;
    end else if (p_Result_43_fu_359_p3[25] == 1'b1) begin
        l_2_fu_367_p3 = 32'd25;
    end else if (p_Result_43_fu_359_p3[26] == 1'b1) begin
        l_2_fu_367_p3 = 32'd26;
    end else if (p_Result_43_fu_359_p3[27] == 1'b1) begin
        l_2_fu_367_p3 = 32'd27;
    end else if (p_Result_43_fu_359_p3[28] == 1'b1) begin
        l_2_fu_367_p3 = 32'd28;
    end else if (p_Result_43_fu_359_p3[29] == 1'b1) begin
        l_2_fu_367_p3 = 32'd29;
    end else if (p_Result_43_fu_359_p3[30] == 1'b1) begin
        l_2_fu_367_p3 = 32'd30;
    end else if (p_Result_43_fu_359_p3[31] == 1'b1) begin
        l_2_fu_367_p3 = 32'd31;
    end else begin
        l_2_fu_367_p3 = 32'd32;
    end
end


always @ (p_Result_40_fu_299_p3) begin
    if (p_Result_40_fu_299_p3[0] == 1'b1) begin
        l_fu_307_p3 = 32'd0;
    end else if (p_Result_40_fu_299_p3[1] == 1'b1) begin
        l_fu_307_p3 = 32'd1;
    end else if (p_Result_40_fu_299_p3[2] == 1'b1) begin
        l_fu_307_p3 = 32'd2;
    end else if (p_Result_40_fu_299_p3[3] == 1'b1) begin
        l_fu_307_p3 = 32'd3;
    end else if (p_Result_40_fu_299_p3[4] == 1'b1) begin
        l_fu_307_p3 = 32'd4;
    end else if (p_Result_40_fu_299_p3[5] == 1'b1) begin
        l_fu_307_p3 = 32'd5;
    end else if (p_Result_40_fu_299_p3[6] == 1'b1) begin
        l_fu_307_p3 = 32'd6;
    end else if (p_Result_40_fu_299_p3[7] == 1'b1) begin
        l_fu_307_p3 = 32'd7;
    end else if (p_Result_40_fu_299_p3[8] == 1'b1) begin
        l_fu_307_p3 = 32'd8;
    end else if (p_Result_40_fu_299_p3[9] == 1'b1) begin
        l_fu_307_p3 = 32'd9;
    end else if (p_Result_40_fu_299_p3[10] == 1'b1) begin
        l_fu_307_p3 = 32'd10;
    end else if (p_Result_40_fu_299_p3[11] == 1'b1) begin
        l_fu_307_p3 = 32'd11;
    end else if (p_Result_40_fu_299_p3[12] == 1'b1) begin
        l_fu_307_p3 = 32'd12;
    end else if (p_Result_40_fu_299_p3[13] == 1'b1) begin
        l_fu_307_p3 = 32'd13;
    end else if (p_Result_40_fu_299_p3[14] == 1'b1) begin
        l_fu_307_p3 = 32'd14;
    end else if (p_Result_40_fu_299_p3[15] == 1'b1) begin
        l_fu_307_p3 = 32'd15;
    end else if (p_Result_40_fu_299_p3[16] == 1'b1) begin
        l_fu_307_p3 = 32'd16;
    end else if (p_Result_40_fu_299_p3[17] == 1'b1) begin
        l_fu_307_p3 = 32'd17;
    end else if (p_Result_40_fu_299_p3[18] == 1'b1) begin
        l_fu_307_p3 = 32'd18;
    end else if (p_Result_40_fu_299_p3[19] == 1'b1) begin
        l_fu_307_p3 = 32'd19;
    end else if (p_Result_40_fu_299_p3[20] == 1'b1) begin
        l_fu_307_p3 = 32'd20;
    end else if (p_Result_40_fu_299_p3[21] == 1'b1) begin
        l_fu_307_p3 = 32'd21;
    end else if (p_Result_40_fu_299_p3[22] == 1'b1) begin
        l_fu_307_p3 = 32'd22;
    end else if (p_Result_40_fu_299_p3[23] == 1'b1) begin
        l_fu_307_p3 = 32'd23;
    end else if (p_Result_40_fu_299_p3[24] == 1'b1) begin
        l_fu_307_p3 = 32'd24;
    end else if (p_Result_40_fu_299_p3[25] == 1'b1) begin
        l_fu_307_p3 = 32'd25;
    end else if (p_Result_40_fu_299_p3[26] == 1'b1) begin
        l_fu_307_p3 = 32'd26;
    end else if (p_Result_40_fu_299_p3[27] == 1'b1) begin
        l_fu_307_p3 = 32'd27;
    end else if (p_Result_40_fu_299_p3[28] == 1'b1) begin
        l_fu_307_p3 = 32'd28;
    end else if (p_Result_40_fu_299_p3[29] == 1'b1) begin
        l_fu_307_p3 = 32'd29;
    end else if (p_Result_40_fu_299_p3[30] == 1'b1) begin
        l_fu_307_p3 = 32'd30;
    end else if (p_Result_40_fu_299_p3[31] == 1'b1) begin
        l_fu_307_p3 = 32'd31;
    end else begin
        l_fu_307_p3 = 32'd32;
    end
end

assign lsb_index_2_fu_498_p2 = ($signed(sub_ln1044_2_reg_935) + $signed(32'd4294967285));

assign lsb_index_fu_393_p2 = ($signed(sub_ln1044_reg_900) + $signed(32'd4294967285));

assign lshr_ln1047_2_fu_528_p2 = 16'd65535 >> zext_ln1047_2_fu_524_p1;

assign lshr_ln1047_fu_423_p2 = 16'd65535 >> zext_ln1047_fu_419_p1;

assign lshr_ln1058_2_fu_678_p2 = tmp_V_12_reg_927 >> add_ln1058_2cast_fu_674_p1;

assign lshr_ln1058_fu_612_p2 = tmp_V_11_reg_892 >> add_ln1058cast_fu_608_p1;

assign lshr_ln_fu_206_p4 = {{p_read[31:24]}};

assign m_10_fu_631_p3 = ((icmp_ln1058_reg_962[0:0] == 1'b1) ? lshr_ln1058_fu_612_p2 : shl_ln1059_fu_626_p2);

assign m_11_fu_638_p2 = (or_ln_i_reg_957 + m_10_fu_631_p3);

assign m_12_fu_697_p3 = ((icmp_ln1058_2_reg_972[0:0] == 1'b1) ? lshr_ln1058_2_fu_678_p2 : shl_ln1059_2_fu_692_p2);

assign m_13_fu_704_p2 = (or_ln1061_2_i_reg_967 + m_12_fu_697_p3);

assign or_ln1061_2_i_fu_589_p3 = {{15'd0}, {and_ln1061_2_fu_583_p2}};

assign or_ln1061_3_fu_472_p2 = (p_Result_23_fu_465_p3 | and_ln1046_fu_454_p2);

assign or_ln1061_fu_577_p2 = (p_Result_30_fu_570_p3 | and_ln1046_2_fu_559_p2);

assign or_ln_i_fu_484_p3 = {{15'd0}, {and_ln1061_fu_478_p2}};

assign out_fft_M_imag_V_address0 = zext_ln149_fu_240_p1;

assign out_fft_M_real_V_address0 = zext_ln149_fu_240_p1;

assign p_Result_22_fu_429_p2 = (tmp_V_11_reg_892 & lshr_ln1047_fu_423_p2);

assign p_Result_23_fu_465_p3 = tmp_V_11_reg_892[add_ln1049_fu_460_p2];

assign p_Result_24_fu_653_p3 = m_11_fu_638_p2[32'd12];

integer ap_tvar_int_0;

always @ (tmp_V_12_fu_343_p3) begin
    for (ap_tvar_int_0 = 16 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 15 - 0) begin
            p_Result_27_fu_349_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_27_fu_349_p4[ap_tvar_int_0] = tmp_V_12_fu_343_p3[15 - ap_tvar_int_0];
        end
    end
end

assign p_Result_29_fu_534_p2 = (tmp_V_12_reg_927 & lshr_ln1047_2_fu_528_p2);

assign p_Result_30_fu_570_p3 = tmp_V_12_reg_927[add_ln1049_2_fu_565_p2];

assign p_Result_31_fu_719_p3 = m_13_fu_704_p2[32'd12];

assign p_Result_40_fu_299_p3 = {{16'd65535}, {p_Result_s_fu_289_p4}};

assign p_Result_41_fu_755_p5 = {{tmp_14_i_fu_748_p3}, {zext_ln1062_fu_735_p1[9:0]}};

assign p_Result_43_fu_359_p3 = {{16'd65535}, {p_Result_27_fu_349_p4}};

assign p_Result_44_fu_787_p5 = {{tmp_16_i_fu_780_p3}, {zext_ln1062_2_fu_767_p1[9:0]}};

integer ap_tvar_int_1;

always @ (tmp_V_11_fu_283_p3) begin
    for (ap_tvar_int_1 = 16 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 15 - 0) begin
            p_Result_s_fu_289_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            p_Result_s_fu_289_p4[ap_tvar_int_1] = tmp_V_11_fu_283_p3[15 - ap_tvar_int_1];
        end
    end
end

assign pny_cast_fu_186_p1 = pny;

assign select_ln1043_2_fu_727_p3 = ((p_Result_31_fu_719_p3[0:0] == 1'b1) ? 5'd15 : 5'd14);

assign select_ln1043_fu_661_p3 = ((p_Result_24_fu_653_p3[0:0] == 1'b1) ? 5'd15 : 5'd14);

assign select_ln174_2_fu_806_p3 = ((icmp_ln1035_reg_887[0:0] == 1'b1) ? 16'd0 : p_Result_41_fu_755_p5);

assign select_ln174_fu_799_p3 = ((icmp_ln1035_2_reg_922[0:0] == 1'b1) ? 16'd0 : p_Result_44_fu_787_p5);

assign shl_ln1059_2_fu_692_p2 = tmp_V_12_reg_927 << sub_ln1059_2cast_fu_688_p1;

assign shl_ln1059_fu_626_p2 = tmp_V_11_reg_892 << sub_ln1059cast_fu_622_p1;

assign sub_i_i_fu_194_p2 = ($signed(ctrl2_reg_load_cast_cast_fu_190_p1) + $signed(9'd511));

assign sub_ln1044_2_fu_375_p2 = (32'd16 - l_2_fu_367_p3);

assign sub_ln1044_fu_315_p2 = (32'd16 - l_fu_307_p3);

assign sub_ln1047_2_fu_519_p2 = ($signed(5'd28) - $signed(trunc_ln1047_2_reg_947));

assign sub_ln1047_fu_414_p2 = ($signed(5'd28) - $signed(trunc_ln1047_reg_912));

assign sub_ln1059_2_fu_683_p2 = (32'd12 - sub_ln1044_2_reg_935);

assign sub_ln1059_2cast_fu_688_p1 = sub_ln1059_2_fu_683_p2[15:0];

assign sub_ln1059_fu_617_p2 = (32'd12 - sub_ln1044_reg_900);

assign sub_ln1059cast_fu_622_p1 = sub_ln1059_fu_617_p2[15:0];

assign sub_ln1064_2_fu_770_p2 = (5'd1 - trunc_ln1043_2_reg_952);

assign sub_ln1064_fu_738_p2 = (5'd1 - trunc_ln1043_reg_917);

assign tmp_11_fu_440_p3 = lsb_index_fu_393_p2[32'd31];

assign tmp_14_fu_503_p4 = {{lsb_index_2_fu_498_p2[31:1]}};

assign tmp_14_i_fu_748_p3 = {{p_Result_39_reg_868}, {add_ln1064_fu_743_p2}};

assign tmp_15_fu_545_p3 = lsb_index_2_fu_498_p2[32'd31];

assign tmp_16_i_fu_780_p3 = {{p_Result_42_reg_881}, {add_ln1064_2_fu_775_p2}};

assign tmp_V_11_fu_283_p3 = ((p_Result_39_reg_868[0:0] == 1'b1) ? tmp_V_fu_278_p2 : p_Val2_s_reg_861);

assign tmp_V_12_fu_343_p3 = ((p_Result_42_reg_881[0:0] == 1'b1) ? tmp_V_7_fu_338_p2 : p_Val2_8_reg_874);

assign tmp_V_7_fu_338_p2 = (16'd0 - p_Val2_8_reg_874);

assign tmp_V_fu_278_p2 = (16'd0 - p_Val2_s_reg_861);

assign tmp_fu_398_p4 = {{lsb_index_fu_393_p2[31:1]}};

assign tmp_i_fu_813_p3 = {{select_ln174_fu_799_p3}, {select_ln174_2_fu_806_p3}};

assign trunc_ln1043_2_fu_389_p1 = l_2_fu_367_p3[4:0];

assign trunc_ln1043_fu_329_p1 = l_fu_307_p3[4:0];

assign trunc_ln1044_2_fu_381_p1 = sub_ln1044_2_fu_375_p2[15:0];

assign trunc_ln1044_fu_321_p1 = sub_ln1044_fu_315_p2[15:0];

assign trunc_ln1047_2_fu_385_p1 = sub_ln1044_2_fu_375_p2[4:0];

assign trunc_ln1047_fu_325_p1 = sub_ln1044_fu_315_p2[4:0];

assign xor_ln1049_2_fu_553_p2 = (tmp_15_fu_545_p3 ^ 1'd1);

assign xor_ln1049_fu_448_p2 = (tmp_11_fu_440_p3 ^ 1'd1);

assign zext_ln1047_2_fu_524_p1 = sub_ln1047_2_fu_519_p2;

assign zext_ln1047_fu_419_p1 = sub_ln1047_fu_414_p2;

assign zext_ln1062_2_fu_767_p1 = m_reg_987;

assign zext_ln1062_fu_735_p1 = m_21_reg_977;

assign zext_ln1065_fu_216_p1 = lshr_ln_fu_206_p4;

assign zext_ln149_fu_240_p1 = x_fu_108;

always @ (posedge ap_clk) begin
    or_ln_i_reg_957[15:1] <= 15'b000000000000000;
    or_ln1061_2_i_reg_967[15:1] <= 15'b000000000000000;
    select_ln1043_reg_982[4:1] <= 4'b0111;
    select_ln1043_2_reg_992[4:1] <= 4'b0111;
end

endmodule //fwd_fft_VITIS_LOOP_184_8_proc
