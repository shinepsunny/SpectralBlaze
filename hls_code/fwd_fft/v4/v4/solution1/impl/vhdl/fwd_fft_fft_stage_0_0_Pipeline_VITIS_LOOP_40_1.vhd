-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fwd_fft_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    zext_ln40 : IN STD_LOGIC_VECTOR (7 downto 0);
    IN_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    IN_r_ce0 : OUT STD_LOGIC;
    IN_r_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    IN_r_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    IN_r_ce1 : OUT STD_LOGIC;
    IN_r_q1 : IN STD_LOGIC_VECTOR (63 downto 0);
    OUT_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    OUT_r_ce0 : OUT STD_LOGIC;
    OUT_r_we0 : OUT STD_LOGIC;
    OUT_r_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    OUT_r_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    OUT_r_ce1 : OUT STD_LOGIC;
    OUT_r_we1 : OUT STD_LOGIC;
    OUT_r_d1 : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of fwd_fft_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv7_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal zext_ln1057_fu_122_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1057_reg_163 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln45_fu_137_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln45_reg_173 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal x_fu_42 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_x_11 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln40_fu_142_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln1057_11_fu_112_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln1057_fu_127_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln45_fu_131_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    x_fu_42_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1057_fu_116_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    x_fu_42 <= add_ln40_fu_142_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    x_fu_42 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1057_fu_116_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    zext_ln1057_reg_163(6 downto 0) <= zext_ln1057_fu_122_p1(6 downto 0);
                    zext_ln45_reg_173(5 downto 1) <= zext_ln45_fu_137_p1(5 downto 1);
            end if;
        end if;
    end process;
    zext_ln1057_reg_163(63 downto 7) <= "000000000000000000000000000000000000000000000000000000000";
    zext_ln45_reg_173(0) <= '1';
    zext_ln45_reg_173(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    IN_r_address0 <= zext_ln45_fu_137_p1(6 - 1 downto 0);
    IN_r_address1 <= zext_ln1057_fu_122_p1(6 - 1 downto 0);

    IN_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            IN_r_ce0 <= ap_const_logic_1;
        else 
            IN_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    IN_r_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            IN_r_ce1 <= ap_const_logic_1;
        else 
            IN_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    OUT_r_address0 <= zext_ln45_reg_173(6 - 1 downto 0);
    OUT_r_address1 <= zext_ln1057_reg_163(6 - 1 downto 0);

    OUT_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OUT_r_ce0 <= ap_const_logic_1;
        else 
            OUT_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    OUT_r_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OUT_r_ce1 <= ap_const_logic_1;
        else 
            OUT_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    OUT_r_d0 <= IN_r_q0;
    OUT_r_d1 <= IN_r_q1;

    OUT_r_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OUT_r_we0 <= ap_const_logic_1;
        else 
            OUT_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    OUT_r_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OUT_r_we1 <= ap_const_logic_1;
        else 
            OUT_r_we1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln40_fu_142_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_x_11) + unsigned(ap_const_lv7_2));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_116_p2)
    begin
        if (((icmp_ln1057_fu_116_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
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
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_x_11_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, x_fu_42, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_x_11 <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_x_11 <= x_fu_42;
        end if; 
    end process;

    icmp_ln1057_fu_116_p2 <= "1" when (unsigned(zext_ln1057_11_fu_112_p1) < unsigned(zext_ln40)) else "0";
    or_ln45_fu_131_p2 <= (trunc_ln1057_fu_127_p1 or ap_const_lv6_1);
    trunc_ln1057_fu_127_p1 <= ap_sig_allocacmp_x_11(6 - 1 downto 0);
    zext_ln1057_11_fu_112_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_x_11),8));
    zext_ln1057_fu_122_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_x_11),64));
    zext_ln45_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln45_fu_131_p2),64));
end behav;