-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fwd_fft_fft_stage_11325_Pipeline_SKIP_X is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    trunc_ln16 : IN STD_LOGIC_VECTOR (6 downto 0);
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


architecture behav of fwd_fft_fft_stage_11325_Pipeline_SKIP_X is 
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
    constant ap_const_lv8_20 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
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
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal w_M_real42_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal w_M_real42_ce0 : STD_LOGIC;
    signal w_M_real42_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal w_M_imag33_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal w_M_imag33_ce0 : STD_LOGIC;
    signal w_M_imag33_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln21_fu_269_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln21_reg_477 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_fu_280_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_reg_487 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln20_fu_257_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal k1_fu_58 : STD_LOGIC_VECTOR (6 downto 0);
    signal k1_24_fu_227_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal j1_fu_62 : STD_LOGIC_VECTOR (31 downto 0);
    signal j1_26_fu_321_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal m1_fu_66 : STD_LOGIC_VECTOR (31 downto 0);
    signal m1_20_fu_329_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul6_i_i_fu_192_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul9_i_i_fu_198_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal t1_M_real_fu_366_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_fu_165_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal t1_M_imag_fu_372_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_36_fu_152_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul_i_i_fu_180_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul3_i_i_fu_186_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_real_fu_392_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_fu_398_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln20_fu_247_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln20_fu_251_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln1057_10_fu_243_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln1057_fu_239_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln21_fu_263_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln22_fu_274_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln30_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln33_fu_297_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln26_fu_285_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln26_fu_315_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln26_fu_311_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal m1_19_fu_303_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln21_fu_352_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln21_2_fu_356_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln388_fu_378_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln388_2_fu_382_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_real_7_fu_156_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_8_fu_160_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln23_1_fu_408_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln23_fu_404_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_real_8_fu_170_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_r_M_imag_9_fu_175_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln24_1_fu_425_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bitcast_ln24_fu_421_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fwd_fft_hadd_16ns_16ns_16_1_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_hsub_16ns_16ns_16_1_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_hmul_16ns_16ns_16_1_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_fft_stage_11325_Pipeline_SKIP_X_w_M_real42 IS
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


    component fwd_fft_fft_stage_11325_Pipeline_SKIP_X_w_M_imag33 IS
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
    w_M_real42_U : component fwd_fft_fft_stage_11325_Pipeline_SKIP_X_w_M_real42
    generic map (
        DataWidth => 16,
        AddressRange => 192,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => w_M_real42_address0,
        ce0 => w_M_real42_ce0,
        q0 => w_M_real42_q0);

    w_M_imag33_U : component fwd_fft_fft_stage_11325_Pipeline_SKIP_X_w_M_imag33
    generic map (
        DataWidth => 16,
        AddressRange => 192,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => w_M_imag33_address0,
        ce0 => w_M_imag33_ce0,
        q0 => w_M_imag33_q0);

    hadd_16ns_16ns_16_1_full_dsp_1_U107 : component fwd_fft_hadd_16ns_16ns_16_1_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => mul6_i_i_fu_192_p2,
        din1 => mul9_i_i_fu_198_p2,
        dout => p_r_M_imag_36_fu_152_p2);

    hadd_16ns_16ns_16_1_full_dsp_1_U108 : component fwd_fft_hadd_16ns_16ns_16_1_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => t1_M_real_fu_366_p1,
        din1 => p_r_fu_165_p2,
        dout => p_r_M_real_7_fu_156_p2);

    hadd_16ns_16ns_16_1_full_dsp_1_U109 : component fwd_fft_hadd_16ns_16ns_16_1_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => t1_M_imag_fu_372_p1,
        din1 => p_r_M_imag_36_fu_152_p2,
        dout => p_r_M_imag_8_fu_160_p2);

    hsub_16ns_16ns_16_1_full_dsp_1_U110 : component fwd_fft_hsub_16ns_16ns_16_1_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => mul_i_i_fu_180_p2,
        din1 => mul3_i_i_fu_186_p2,
        dout => p_r_fu_165_p2);

    hsub_16ns_16ns_16_1_full_dsp_1_U111 : component fwd_fft_hsub_16ns_16ns_16_1_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => t1_M_real_fu_366_p1,
        din1 => p_r_fu_165_p2,
        dout => p_r_M_real_8_fu_170_p2);

    hsub_16ns_16ns_16_1_full_dsp_1_U112 : component fwd_fft_hsub_16ns_16ns_16_1_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => t1_M_imag_fu_372_p1,
        din1 => p_r_M_imag_36_fu_152_p2,
        dout => p_r_M_imag_9_fu_175_p2);

    hmul_16ns_16ns_16_1_max_dsp_1_U113 : component fwd_fft_hmul_16ns_16ns_16_1_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => p_r_M_real_fu_392_p1,
        din1 => w_M_real42_q0,
        dout => mul_i_i_fu_180_p2);

    hmul_16ns_16ns_16_1_max_dsp_1_U114 : component fwd_fft_hmul_16ns_16ns_16_1_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => p_r_M_imag_fu_398_p1,
        din1 => w_M_imag33_q0,
        dout => mul3_i_i_fu_186_p2);

    hmul_16ns_16ns_16_1_max_dsp_1_U115 : component fwd_fft_hmul_16ns_16ns_16_1_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => p_r_M_real_fu_392_p1,
        din1 => w_M_imag33_q0,
        dout => mul6_i_i_fu_192_p2);

    hmul_16ns_16ns_16_1_max_dsp_1_U116 : component fwd_fft_hmul_16ns_16ns_16_1_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => p_r_M_imag_fu_398_p1,
        din1 => w_M_real42_q0,
        dout => mul9_i_i_fu_198_p2);

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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    j1_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j1_fu_62 <= ap_const_lv32_0;
                elsif (((icmp_ln1057_fu_222_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j1_fu_62 <= j1_26_fu_321_p3;
                end if;
            end if; 
        end if;
    end process;

    k1_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    k1_fu_58 <= ap_const_lv7_0;
                elsif (((icmp_ln1057_fu_222_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    k1_fu_58 <= k1_24_fu_227_p2;
                end if;
            end if; 
        end if;
    end process;

    m1_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    m1_fu_66 <= ap_const_lv32_0;
                elsif (((icmp_ln1057_fu_222_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    m1_fu_66 <= m1_20_fu_329_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1057_fu_222_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    zext_ln21_reg_477(5 downto 0) <= zext_ln21_fu_269_p1(5 downto 0);
                    zext_ln22_reg_487(5 downto 0) <= zext_ln22_fu_280_p1(5 downto 0);
            end if;
        end if;
    end process;
    zext_ln21_reg_477(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    zext_ln22_reg_487(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    IN_r_address0 <= zext_ln22_fu_280_p1(6 - 1 downto 0);
    IN_r_address1 <= zext_ln21_fu_269_p1(6 - 1 downto 0);

    IN_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    OUT_r_address0 <= zext_ln22_reg_487(6 - 1 downto 0);
    OUT_r_address1 <= zext_ln21_reg_477(6 - 1 downto 0);

    OUT_r_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            OUT_r_ce0 <= ap_const_logic_1;
        else 
            OUT_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    OUT_r_ce1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            OUT_r_ce1 <= ap_const_logic_1;
        else 
            OUT_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    OUT_r_d0 <= (bitcast_ln24_1_fu_425_p1 & bitcast_ln24_fu_421_p1);
    OUT_r_d1 <= (bitcast_ln23_1_fu_408_p1 & bitcast_ln23_fu_404_p1);

    OUT_r_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            OUT_r_we0 <= ap_const_logic_1;
        else 
            OUT_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    OUT_r_we1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            OUT_r_we1 <= ap_const_logic_1;
        else 
            OUT_r_we1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln20_fu_251_p2 <= std_logic_vector(unsigned(trunc_ln20_fu_247_p1) + unsigned(ap_const_lv8_20));
    add_ln21_fu_263_p2 <= std_logic_vector(unsigned(trunc_ln1057_10_fu_243_p1) + unsigned(trunc_ln1057_fu_239_p1));
    add_ln22_fu_274_p2 <= std_logic_vector(unsigned(add_ln21_fu_263_p2) + unsigned(ap_const_lv6_2));
    add_ln33_fu_297_p2 <= std_logic_vector(unsigned(m1_fu_66) + unsigned(ap_const_lv32_4));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_222_p2)
    begin
        if (((icmp_ln1057_fu_222_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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

    bitcast_ln23_1_fu_408_p1 <= p_r_M_imag_8_fu_160_p2;
    bitcast_ln23_fu_404_p1 <= p_r_M_real_7_fu_156_p2;
    bitcast_ln24_1_fu_425_p1 <= p_r_M_imag_9_fu_175_p2;
    bitcast_ln24_fu_421_p1 <= p_r_M_real_8_fu_170_p2;
    icmp_ln1057_fu_222_p2 <= "1" when (k1_fu_58 = trunc_ln16) else "0";
    icmp_ln26_fu_285_p2 <= "1" when (j1_fu_62 = ap_const_lv32_0) else "0";
    icmp_ln30_fu_291_p2 <= "1" when (j1_fu_62 = ap_const_lv32_1) else "0";
    j1_26_fu_321_p3 <= 
        zext_ln26_fu_311_p1 when (or_ln26_fu_315_p2(0) = '1') else 
        j1_fu_62;
    k1_24_fu_227_p2 <= std_logic_vector(unsigned(k1_fu_58) + unsigned(ap_const_lv7_1));
    m1_19_fu_303_p3 <= 
        add_ln33_fu_297_p2 when (icmp_ln30_fu_291_p2(0) = '1') else 
        m1_fu_66;
    m1_20_fu_329_p3 <= 
        m1_fu_66 when (icmp_ln26_fu_285_p2(0) = '1') else 
        m1_19_fu_303_p3;
    or_ln26_fu_315_p2 <= (icmp_ln30_fu_291_p2 or icmp_ln26_fu_285_p2);
    p_r_M_imag_fu_398_p1 <= trunc_ln388_2_fu_382_p4;
    p_r_M_real_fu_392_p1 <= trunc_ln388_fu_378_p1;
    t1_M_imag_fu_372_p1 <= trunc_ln21_2_fu_356_p4;
    t1_M_real_fu_366_p1 <= trunc_ln21_fu_352_p1;
    trunc_ln1057_10_fu_243_p1 <= j1_fu_62(6 - 1 downto 0);
    trunc_ln1057_fu_239_p1 <= m1_fu_66(6 - 1 downto 0);
    trunc_ln20_fu_247_p1 <= j1_fu_62(8 - 1 downto 0);
    trunc_ln21_2_fu_356_p4 <= IN_r_q1(31 downto 16);
    trunc_ln21_fu_352_p1 <= IN_r_q1(16 - 1 downto 0);
    trunc_ln388_2_fu_382_p4 <= IN_r_q0(31 downto 16);
    trunc_ln388_fu_378_p1 <= IN_r_q0(16 - 1 downto 0);
    w_M_imag33_address0 <= zext_ln20_fu_257_p1(8 - 1 downto 0);

    w_M_imag33_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_M_imag33_ce0 <= ap_const_logic_1;
        else 
            w_M_imag33_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    w_M_real42_address0 <= zext_ln20_fu_257_p1(8 - 1 downto 0);

    w_M_real42_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_M_real42_ce0 <= ap_const_logic_1;
        else 
            w_M_real42_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln20_fu_257_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln20_fu_251_p2),64));
    zext_ln21_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln21_fu_263_p2),64));
    zext_ln22_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln22_fu_274_p2),64));
    zext_ln26_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(icmp_ln26_fu_285_p2),32));
end behav;