-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fwd_fft_compute_fft_write_Pipeline_VITIS_LOOP_222_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ctrl1_reg_load_cast5 : IN STD_LOGIC_VECTOR (7 downto 0);
    zext_ln1057 : IN STD_LOGIC_VECTOR (7 downto 0);
    ifmap_fft_M_real_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ifmap_fft_M_real_ce0 : OUT STD_LOGIC;
    ifmap_fft_M_real_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    ifmap_fft_M_imag_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ifmap_fft_M_imag_ce0 : OUT STD_LOGIC;
    ifmap_fft_M_imag_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    in_fft_M_value_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    in_fft_M_value_ce0 : OUT STD_LOGIC;
    in_fft_M_value_we0 : OUT STD_LOGIC;
    in_fft_M_value_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    in_fft_M_value_1_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    in_fft_M_value_1_ce0 : OUT STD_LOGIC;
    in_fft_M_value_1_we0 : OUT STD_LOGIC;
    in_fft_M_value_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fwd_fft_compute_fft_write_Pipeline_VITIS_LOOP_222_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";

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
    signal icmp_ln1057_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal y_2_reg_187 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal y_2_reg_187_pp0_iter1_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln225_fu_164_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal y_cast_fu_175_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fu_44 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_y_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln222_fu_140_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_112_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_117_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln225_fu_146_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_11_cast_fu_150_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln1057_cast_fu_122_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln225_fu_158_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fwd_fft_hptosp_16ns_32_2_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
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
    hptosp_16ns_32_2_no_dsp_1_U154 : component fwd_fft_hptosp_16ns_32_2_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ifmap_fft_M_real_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_112_p1);

    hptosp_16ns_32_2_no_dsp_1_U155 : component fwd_fft_hptosp_16ns_32_2_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ifmap_fft_M_imag_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_117_p1);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    y_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1057_fu_134_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    y_fu_44 <= add_ln222_fu_140_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    y_fu_44 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                y_2_reg_187 <= ap_sig_allocacmp_y_2;
                y_2_reg_187_pp0_iter1_reg <= y_2_reg_187;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln222_fu_140_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_y_2) + unsigned(ap_const_lv8_1));
    add_ln225_fu_158_p2 <= std_logic_vector(unsigned(tmp_11_cast_fu_150_p3) + unsigned(zext_ln1057_cast_fu_122_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_134_p2)
    begin
        if (((icmp_ln1057_fu_134_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_y_2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, y_fu_44, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_y_2 <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_y_2 <= y_fu_44;
        end if; 
    end process;

    icmp_ln1057_fu_134_p2 <= "1" when (ap_sig_allocacmp_y_2 = ctrl1_reg_load_cast5) else "0";
    ifmap_fft_M_imag_address0 <= zext_ln225_fu_164_p1(12 - 1 downto 0);

    ifmap_fft_M_imag_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_fft_M_imag_ce0 <= ap_const_logic_1;
        else 
            ifmap_fft_M_imag_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_fft_M_real_address0 <= zext_ln225_fu_164_p1(12 - 1 downto 0);

    ifmap_fft_M_real_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_fft_M_real_ce0 <= ap_const_logic_1;
        else 
            ifmap_fft_M_real_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    in_fft_M_value_1_address0 <= y_cast_fu_175_p1(6 - 1 downto 0);

    in_fft_M_value_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            in_fft_M_value_1_ce0 <= ap_const_logic_1;
        else 
            in_fft_M_value_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    in_fft_M_value_1_d0 <= grp_fu_117_p1;

    in_fft_M_value_1_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            in_fft_M_value_1_we0 <= ap_const_logic_1;
        else 
            in_fft_M_value_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    in_fft_M_value_address0 <= y_cast_fu_175_p1(6 - 1 downto 0);

    in_fft_M_value_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            in_fft_M_value_ce0 <= ap_const_logic_1;
        else 
            in_fft_M_value_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    in_fft_M_value_d0 <= grp_fu_112_p1;

    in_fft_M_value_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            in_fft_M_value_we0 <= ap_const_logic_1;
        else 
            in_fft_M_value_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_11_cast_fu_150_p3 <= (trunc_ln225_fu_146_p1 & ap_const_lv6_0);
    trunc_ln225_fu_146_p1 <= ap_sig_allocacmp_y_2(6 - 1 downto 0);
    y_cast_fu_175_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_2_reg_187_pp0_iter1_reg),64));
    zext_ln1057_cast_fu_122_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln1057),12));
    zext_ln225_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln225_fu_158_p2),64));
end behav;
