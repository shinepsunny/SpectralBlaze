-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fwd_fft_fft_stage20_Pipeline_SKIP_X is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    div_i_i43_cast : IN STD_LOGIC_VECTOR (6 downto 0);
    IN_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    IN_r_ce0 : OUT STD_LOGIC;
    IN_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    IN_r_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    IN_r_ce1 : OUT STD_LOGIC;
    IN_r_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    OUT_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    OUT_r_ce0 : OUT STD_LOGIC;
    OUT_r_we0 : OUT STD_LOGIC;
    OUT_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    OUT_r_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    OUT_r_ce1 : OUT STD_LOGIC;
    OUT_r_we1 : OUT STD_LOGIC;
    OUT_r_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fwd_fft_fft_stage20_Pipeline_SKIP_X is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv6_10 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter8 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal w_M_real28_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal w_M_real28_ce0 : STD_LOGIC;
    signal w_M_real28_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal w_M_imag22_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal w_M_imag22_ce0 : STD_LOGIC;
    signal w_M_imag22_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln21_fu_257_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln21_reg_469 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln21_reg_469_pp0_iter2_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln21_reg_469_pp0_iter3_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln22_fu_269_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_474 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_474_pp0_iter2_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_474_pp0_iter3_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_474_pp0_iter4_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_474_pp0_iter5_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_474_pp0_iter6_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_474_pp0_iter7_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal p_r_M_real_fu_359_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_fu_365_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_178_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul_i_i_reg_508 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_183_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul3_i_i_reg_513 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_188_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul6_i_i_reg_518 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_193_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul9_i_i_reg_523 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln21_fu_371_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln21_reg_528 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln21_reg_528_pp0_iter5_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln21_reg_528_pp0_iter6_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln21_reg_528_pp0_iter7_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln21_fu_375_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln21_reg_538 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln21_1_reg_543 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_166_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_reg_548 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_154_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_10_reg_554 : STD_LOGIC_VECTOR (15 downto 0);
    signal t1_M_real_fu_389_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal t1_M_imag_fu_394_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_158_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_real_3_reg_572 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_162_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_3_reg_577 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_170_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_real_4_reg_582 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_174_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_4_reg_587 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln20_fu_251_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal k1_fu_60 : STD_LOGIC_VECTOR (6 downto 0);
    signal k1_6_fu_221_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal j1_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal j1_9_fu_314_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal m1_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal m1_6_fu_322_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln20_fu_241_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln20_fu_245_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln1057_3_fu_237_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln1057_fu_233_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln22_fu_263_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln30_fu_286_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln33_fu_292_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln26_fu_274_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j1_7_fu_280_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j1_8_fu_298_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal m1_5_fu_306_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln388_fu_345_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln388_1_fu_349_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln23_1_fu_402_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln23_fu_399_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln24_1_fu_417_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln24_fu_414_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fwd_fft_hadd_16ns_16ns_16_2_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_hsub_16ns_16ns_16_2_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_hmul_16ns_16ns_16_2_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_fft_stage17_Pipeline_SKIP_X_w_M_real31 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_fft_stage17_Pipeline_SKIP_X_w_M_imag25 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    w_M_real28_U : component fwd_fft_fft_stage17_Pipeline_SKIP_X_w_M_real31
    generic map (
        DataWidth => 16,
        AddressRange => 192,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => w_M_real28_address0,
        ce0 => w_M_real28_ce0,
        q0 => w_M_real28_q0);

    w_M_imag22_U : component fwd_fft_fft_stage17_Pipeline_SKIP_X_w_M_imag25
    generic map (
        DataWidth => 16,
        AddressRange => 192,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => w_M_imag22_address0,
        ce0 => w_M_imag22_ce0,
        q0 => w_M_imag22_q0);

    hadd_16ns_16ns_16_2_full_dsp_1_U156 : component fwd_fft_hadd_16ns_16ns_16_2_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => mul6_i_i_reg_518,
        din1 => mul9_i_i_reg_523,
        ce => ap_const_logic_1,
        dout => grp_fu_154_p2);

    hadd_16ns_16ns_16_2_full_dsp_1_U157 : component fwd_fft_hadd_16ns_16ns_16_2_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => t1_M_real_fu_389_p1,
        din1 => p_r_reg_548,
        ce => ap_const_logic_1,
        dout => grp_fu_158_p2);

    hadd_16ns_16ns_16_2_full_dsp_1_U158 : component fwd_fft_hadd_16ns_16ns_16_2_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => t1_M_imag_fu_394_p1,
        din1 => p_r_M_imag_10_reg_554,
        ce => ap_const_logic_1,
        dout => grp_fu_162_p2);

    hsub_16ns_16ns_16_2_full_dsp_1_U159 : component fwd_fft_hsub_16ns_16ns_16_2_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => mul_i_i_reg_508,
        din1 => mul3_i_i_reg_513,
        ce => ap_const_logic_1,
        dout => grp_fu_166_p2);

    hsub_16ns_16ns_16_2_full_dsp_1_U160 : component fwd_fft_hsub_16ns_16ns_16_2_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => t1_M_real_fu_389_p1,
        din1 => p_r_reg_548,
        ce => ap_const_logic_1,
        dout => grp_fu_170_p2);

    hsub_16ns_16ns_16_2_full_dsp_1_U161 : component fwd_fft_hsub_16ns_16ns_16_2_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => t1_M_imag_fu_394_p1,
        din1 => p_r_M_imag_10_reg_554,
        ce => ap_const_logic_1,
        dout => grp_fu_174_p2);

    hmul_16ns_16ns_16_2_max_dsp_1_U162 : component fwd_fft_hmul_16ns_16ns_16_2_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_r_M_real_fu_359_p1,
        din1 => w_M_real28_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_178_p2);

    hmul_16ns_16ns_16_2_max_dsp_1_U163 : component fwd_fft_hmul_16ns_16ns_16_2_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_r_M_imag_fu_365_p1,
        din1 => w_M_imag22_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_183_p2);

    hmul_16ns_16ns_16_2_max_dsp_1_U164 : component fwd_fft_hmul_16ns_16ns_16_2_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_r_M_real_fu_359_p1,
        din1 => w_M_imag22_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_188_p2);

    hmul_16ns_16ns_16_2_max_dsp_1_U165 : component fwd_fft_hmul_16ns_16ns_16_2_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_r_M_imag_fu_365_p1,
        din1 => w_M_real28_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_193_p2);

    flow_control_loop_pipe_sequential_init_U : component fwd_fft_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter7_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    j1_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j1_fu_64 <= ap_const_lv32_0;
                elsif (((icmp_ln1057_fu_216_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j1_fu_64 <= j1_9_fu_314_p3;
                end if;
            end if; 
        end if;
    end process;

    k1_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    k1_fu_60 <= ap_const_lv7_0;
                elsif (((icmp_ln1057_fu_216_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    k1_fu_60 <= k1_6_fu_221_p2;
                end if;
            end if; 
        end if;
    end process;

    m1_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    m1_fu_68 <= ap_const_lv32_0;
                elsif (((icmp_ln1057_fu_216_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    m1_fu_68 <= m1_6_fu_322_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1057_fu_216_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln21_reg_469 <= add_ln21_fu_257_p2;
                    zext_ln22_reg_474(5 downto 0) <= zext_ln22_fu_269_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                add_ln21_reg_469_pp0_iter2_reg <= add_ln21_reg_469;
                add_ln21_reg_469_pp0_iter3_reg <= add_ln21_reg_469_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                mul3_i_i_reg_513 <= grp_fu_183_p2;
                mul6_i_i_reg_518 <= grp_fu_188_p2;
                mul9_i_i_reg_523 <= grp_fu_193_p2;
                mul_i_i_reg_508 <= grp_fu_178_p2;
                p_r_M_imag_10_reg_554 <= grp_fu_154_p2;
                p_r_M_imag_3_reg_577 <= grp_fu_162_p2;
                p_r_M_imag_4_reg_587 <= grp_fu_174_p2;
                p_r_M_real_3_reg_572 <= grp_fu_158_p2;
                p_r_M_real_4_reg_582 <= grp_fu_170_p2;
                p_r_reg_548 <= grp_fu_166_p2;
                trunc_ln21_1_reg_543 <= IN_r_q0(31 downto 16);
                trunc_ln21_reg_538 <= trunc_ln21_fu_375_p1;
                    zext_ln21_reg_528(5 downto 0) <= zext_ln21_fu_371_p1(5 downto 0);
                    zext_ln21_reg_528_pp0_iter5_reg(5 downto 0) <= zext_ln21_reg_528(5 downto 0);
                    zext_ln21_reg_528_pp0_iter6_reg(5 downto 0) <= zext_ln21_reg_528_pp0_iter5_reg(5 downto 0);
                    zext_ln21_reg_528_pp0_iter7_reg(5 downto 0) <= zext_ln21_reg_528_pp0_iter6_reg(5 downto 0);
                    zext_ln22_reg_474_pp0_iter2_reg(5 downto 0) <= zext_ln22_reg_474(5 downto 0);
                    zext_ln22_reg_474_pp0_iter3_reg(5 downto 0) <= zext_ln22_reg_474_pp0_iter2_reg(5 downto 0);
                    zext_ln22_reg_474_pp0_iter4_reg(5 downto 0) <= zext_ln22_reg_474_pp0_iter3_reg(5 downto 0);
                    zext_ln22_reg_474_pp0_iter5_reg(5 downto 0) <= zext_ln22_reg_474_pp0_iter4_reg(5 downto 0);
                    zext_ln22_reg_474_pp0_iter6_reg(5 downto 0) <= zext_ln22_reg_474_pp0_iter5_reg(5 downto 0);
                    zext_ln22_reg_474_pp0_iter7_reg(5 downto 0) <= zext_ln22_reg_474_pp0_iter6_reg(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
            end if;
        end if;
    end process;
    zext_ln22_reg_474(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln22_reg_474_pp0_iter2_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln22_reg_474_pp0_iter3_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln22_reg_474_pp0_iter4_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln22_reg_474_pp0_iter5_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln22_reg_474_pp0_iter6_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln22_reg_474_pp0_iter7_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln21_reg_528(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln21_reg_528_pp0_iter5_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln21_reg_528_pp0_iter6_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln21_reg_528_pp0_iter7_reg(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    IN_r_address0 <= zext_ln21_fu_371_p1(6 - 1 downto 0);
    IN_r_address1 <= zext_ln22_fu_269_p1(6 - 1 downto 0);

    IN_r_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            IN_r_ce0 <= ap_const_logic_1;
        else 
            IN_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    IN_r_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            IN_r_ce1 <= ap_const_logic_1;
        else 
            IN_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    OUT_r_address0 <= zext_ln22_reg_474_pp0_iter7_reg(6 - 1 downto 0);
    OUT_r_address1 <= zext_ln21_reg_528_pp0_iter7_reg(6 - 1 downto 0);

    OUT_r_ce0_assign_proc : process(ap_enable_reg_pp0_iter8, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter8 = ap_const_logic_1))) then 
            OUT_r_ce0 <= ap_const_logic_1;
        else 
            OUT_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    OUT_r_ce1_assign_proc : process(ap_enable_reg_pp0_iter8, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter8 = ap_const_logic_1))) then 
            OUT_r_ce1 <= ap_const_logic_1;
        else 
            OUT_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    OUT_r_d0 <= (bitcast_ln24_1_fu_417_p1 & bitcast_ln24_fu_414_p1);
    OUT_r_d1 <= (bitcast_ln23_1_fu_402_p1 & bitcast_ln23_fu_399_p1);

    OUT_r_we0_assign_proc : process(ap_enable_reg_pp0_iter8, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter8 = ap_const_logic_1))) then 
            OUT_r_we0 <= ap_const_logic_1;
        else 
            OUT_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    OUT_r_we1_assign_proc : process(ap_enable_reg_pp0_iter8, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter8 = ap_const_logic_1))) then 
            OUT_r_we1 <= ap_const_logic_1;
        else 
            OUT_r_we1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln21_fu_257_p2 <= std_logic_vector(unsigned(trunc_ln1057_3_fu_237_p1) + unsigned(trunc_ln1057_fu_233_p1));
    add_ln22_fu_263_p2 <= std_logic_vector(unsigned(add_ln21_fu_257_p2) + unsigned(ap_const_lv6_10));
    add_ln33_fu_292_p2 <= std_logic_vector(unsigned(m1_fu_68) + unsigned(ap_const_lv32_20));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter8 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_216_p2)
    begin
        if (((icmp_ln1057_fu_216_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter7_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter7_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8)
    begin
        if (((ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln23_1_fu_402_p1 <= p_r_M_imag_3_reg_577;
    bitcast_ln23_fu_399_p1 <= p_r_M_real_3_reg_572;
    bitcast_ln24_1_fu_417_p1 <= p_r_M_imag_4_reg_587;
    bitcast_ln24_fu_414_p1 <= p_r_M_real_4_reg_582;
    icmp_ln1057_fu_216_p2 <= "1" when (k1_fu_60 = div_i_i43_cast) else "0";
    icmp_ln26_fu_274_p2 <= "1" when (unsigned(j1_fu_64) < unsigned(ap_const_lv32_F)) else "0";
    icmp_ln30_fu_286_p2 <= "1" when (j1_fu_64 = ap_const_lv32_F) else "0";
    j1_7_fu_280_p2 <= std_logic_vector(unsigned(j1_fu_64) + unsigned(ap_const_lv32_1));
    j1_8_fu_298_p3 <= 
        ap_const_lv32_0 when (icmp_ln30_fu_286_p2(0) = '1') else 
        j1_fu_64;
    j1_9_fu_314_p3 <= 
        j1_7_fu_280_p2 when (icmp_ln26_fu_274_p2(0) = '1') else 
        j1_8_fu_298_p3;
    k1_6_fu_221_p2 <= std_logic_vector(unsigned(k1_fu_60) + unsigned(ap_const_lv7_1));
    m1_5_fu_306_p3 <= 
        add_ln33_fu_292_p2 when (icmp_ln30_fu_286_p2(0) = '1') else 
        m1_fu_68;
    m1_6_fu_322_p3 <= 
        m1_fu_68 when (icmp_ln26_fu_274_p2(0) = '1') else 
        m1_5_fu_306_p3;
    p_r_M_imag_fu_365_p1 <= trunc_ln388_1_fu_349_p4;
    p_r_M_real_fu_359_p1 <= trunc_ln388_fu_345_p1;
    t1_M_imag_fu_394_p1 <= trunc_ln21_1_reg_543;
    t1_M_real_fu_389_p1 <= trunc_ln21_reg_538;
    trunc_ln1057_3_fu_237_p1 <= j1_fu_64(6 - 1 downto 0);
    trunc_ln1057_fu_233_p1 <= m1_fu_68(6 - 1 downto 0);
    trunc_ln20_fu_241_p1 <= j1_fu_64(8 - 1 downto 0);
    trunc_ln21_fu_375_p1 <= IN_r_q0(16 - 1 downto 0);
    trunc_ln388_1_fu_349_p4 <= IN_r_q1(31 downto 16);
    trunc_ln388_fu_345_p1 <= IN_r_q1(16 - 1 downto 0);
    w_M_imag22_address0 <= zext_ln20_fu_251_p1(8 - 1 downto 0);

    w_M_imag22_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_M_imag22_ce0 <= ap_const_logic_1;
        else 
            w_M_imag22_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    w_M_real28_address0 <= zext_ln20_fu_251_p1(8 - 1 downto 0);

    w_M_real28_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_M_real28_ce0 <= ap_const_logic_1;
        else 
            w_M_real28_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln20_fu_245_p2 <= (trunc_ln20_fu_241_p1 xor ap_const_lv8_80);
    zext_ln20_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln20_fu_245_p2),64));
    zext_ln21_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln21_reg_469_pp0_iter3_reg),64));
    zext_ln22_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln22_fu_263_p2),64));
end behav;