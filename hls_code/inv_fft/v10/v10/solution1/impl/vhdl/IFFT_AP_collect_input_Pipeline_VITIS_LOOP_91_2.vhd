-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity IFFT_AP_collect_input_Pipeline_VITIS_LOOP_91_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_st_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    in_st_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    in_st_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    in_st_empty_n : IN STD_LOGIC;
    in_st_read : OUT STD_LOGIC;
    empty : IN STD_LOGIC_VECTOR (10 downto 0);
    zext_ln173_3 : IN STD_LOGIC_VECTOR (11 downto 0);
    I_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    I_ce0 : OUT STD_LOGIC;
    I_we0 : OUT STD_LOGIC;
    I_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    I_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    I_ce1 : OUT STD_LOGIC;
    I_we1 : OUT STD_LOGIC;
    I_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of IFFT_AP_collect_input_Pipeline_VITIS_LOOP_91_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_4F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001111";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_6F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101111";
    constant ap_const_lv32_70 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv13_4 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000100";
    constant ap_const_lv12_2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_const_lv12_3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000011";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln91_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal icmp_ln91_reg_395 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal in_st_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln173_fu_196_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln173_reg_399 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal trunc_ln95_5_reg_405 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln95_6_reg_410 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln95_7_reg_415 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln95_8_reg_420 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal zext_ln173_fu_205_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln173_1_fu_304_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln173_2_fu_339_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln173_4_fu_361_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fu_96 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln91_fu_318_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal empty_86_fu_100 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln1027_fu_182_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_p_load : STD_LOGIC_VECTOR (10 downto 0);
    signal p_0_0_0_033_partset_fu_284_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_0_1_037_partset_fu_309_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_0_2_041_partset_fu_344_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_0_3_045_partset_fu_366_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln173_fu_200_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln95_fu_210_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln95_2_fu_214_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal or_ln98_fu_293_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln173_1_fu_299_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln95_3_fu_224_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln95_4_fu_234_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal or_ln100_fu_329_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln173_2_fu_334_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_ln102_fu_351_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln173_3_fu_356_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component IFFT_AP_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component IFFT_AP_flow_control_loop_pipe_sequential_init
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


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    empty_86_fu_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln91_fu_176_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    empty_86_fu_100 <= add_ln1027_fu_182_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    empty_86_fu_100 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;

    y_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                y_fu_96 <= ap_const_lv13_0;
            elsif (((icmp_ln91_reg_395 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                y_fu_96 <= add_ln91_fu_318_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln91_reg_395 <= icmp_ln91_fu_176_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln91_reg_395 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                trunc_ln173_reg_399 <= trunc_ln173_fu_196_p1;
                trunc_ln95_5_reg_405 <= in_st_dout(79 downto 64);
                trunc_ln95_6_reg_410 <= in_st_dout(95 downto 80);
                trunc_ln95_7_reg_415 <= in_st_dout(111 downto 96);
                trunc_ln95_8_reg_420 <= in_st_dout(127 downto 112);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter0_stage0, ap_block_pp0_stage1_subdone, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;

    I_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, zext_ln173_1_fu_304_p1, ap_block_pp0_stage0, zext_ln173_4_fu_361_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            I_address0 <= zext_ln173_4_fu_361_p1(12 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            I_address0 <= zext_ln173_1_fu_304_p1(12 - 1 downto 0);
        else 
            I_address0 <= "XXXXXXXXXXXX";
        end if; 
    end process;


    I_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, zext_ln173_fu_205_p1, zext_ln173_2_fu_339_p1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            I_address1 <= zext_ln173_2_fu_339_p1(12 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            I_address1 <= zext_ln173_fu_205_p1(12 - 1 downto 0);
        else 
            I_address1 <= "XXXXXXXXXXXX";
        end if; 
    end process;


    I_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            I_ce0 <= ap_const_logic_1;
        else 
            I_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    I_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            I_ce1 <= ap_const_logic_1;
        else 
            I_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    I_d0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, ap_block_pp0_stage0, p_0_0_1_037_partset_fu_309_p3, p_0_0_3_045_partset_fu_366_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            I_d0 <= p_0_0_3_045_partset_fu_366_p3;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            I_d0 <= p_0_0_1_037_partset_fu_309_p3;
        else 
            I_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    I_d1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, ap_block_pp0_stage0, p_0_0_0_033_partset_fu_284_p3, p_0_0_2_041_partset_fu_344_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            I_d1 <= p_0_0_2_041_partset_fu_344_p3;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            I_d1 <= p_0_0_0_033_partset_fu_284_p3;
        else 
            I_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    I_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, icmp_ln91_reg_395, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln91_reg_395 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            I_we0 <= ap_const_logic_1;
        else 
            I_we0 <= ap_const_logic_0;
        end if; 
    end process;


    I_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, icmp_ln91_reg_395, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln91_reg_395 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            I_we1 <= ap_const_logic_1;
        else 
            I_we1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln1027_fu_182_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_p_load) + unsigned(ap_const_lv11_1));
    add_ln173_1_fu_299_p2 <= std_logic_vector(unsigned(zext_ln173_3) + unsigned(or_ln98_fu_293_p2));
    add_ln173_2_fu_334_p2 <= std_logic_vector(unsigned(zext_ln173_3) + unsigned(or_ln100_fu_329_p2));
    add_ln173_3_fu_356_p2 <= std_logic_vector(unsigned(zext_ln173_3) + unsigned(or_ln102_fu_351_p2));
    add_ln173_fu_200_p2 <= std_logic_vector(unsigned(zext_ln173_3) + unsigned(trunc_ln173_fu_196_p1));
    add_ln91_fu_318_p2 <= std_logic_vector(unsigned(y_fu_96) + unsigned(ap_const_lv13_4));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_enable_reg_pp0_iter0, in_st_empty_n, icmp_ln91_reg_395)
    begin
                ap_block_pp0_stage1_11001 <= ((icmp_ln91_reg_395 = ap_const_lv1_0) and (in_st_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, in_st_empty_n, icmp_ln91_reg_395)
    begin
                ap_block_pp0_stage1_subdone <= ((icmp_ln91_reg_395 = ap_const_lv1_0) and (in_st_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage1_iter0_assign_proc : process(in_st_empty_n, icmp_ln91_reg_395)
    begin
                ap_block_state2_pp0_stage1_iter0 <= ((icmp_ln91_reg_395 = ap_const_lv1_0) and (in_st_empty_n = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln91_fu_176_p2)
    begin
        if (((icmp_ln91_fu_176_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_p_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, empty_86_fu_100)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_p_load <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_p_load <= empty_86_fu_100;
        end if; 
    end process;

    icmp_ln91_fu_176_p2 <= "1" when (ap_sig_allocacmp_p_load = empty) else "0";

    in_st_blk_n_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, in_st_empty_n, icmp_ln91_reg_395, ap_block_pp0_stage1)
    begin
        if (((icmp_ln91_reg_395 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            in_st_blk_n <= in_st_empty_n;
        else 
            in_st_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_st_read_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, icmp_ln91_reg_395, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln91_reg_395 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            in_st_read <= ap_const_logic_1;
        else 
            in_st_read <= ap_const_logic_0;
        end if; 
    end process;

    or_ln100_fu_329_p2 <= (trunc_ln173_reg_399 or ap_const_lv12_2);
    or_ln102_fu_351_p2 <= (trunc_ln173_reg_399 or ap_const_lv12_3);
    or_ln98_fu_293_p2 <= (trunc_ln173_fu_196_p1 or ap_const_lv12_1);
    p_0_0_0_033_partset_fu_284_p3 <= (trunc_ln95_fu_210_p1 & trunc_ln95_2_fu_214_p4);
    p_0_0_1_037_partset_fu_309_p3 <= (trunc_ln95_3_fu_224_p4 & trunc_ln95_4_fu_234_p4);
    p_0_0_2_041_partset_fu_344_p3 <= (trunc_ln95_5_reg_405 & trunc_ln95_6_reg_410);
    p_0_0_3_045_partset_fu_366_p3 <= (trunc_ln95_7_reg_415 & trunc_ln95_8_reg_420);
    trunc_ln173_fu_196_p1 <= y_fu_96(12 - 1 downto 0);
    trunc_ln95_2_fu_214_p4 <= in_st_dout(31 downto 16);
    trunc_ln95_3_fu_224_p4 <= in_st_dout(47 downto 32);
    trunc_ln95_4_fu_234_p4 <= in_st_dout(63 downto 48);
    trunc_ln95_fu_210_p1 <= in_st_dout(16 - 1 downto 0);
    zext_ln173_1_fu_304_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln173_1_fu_299_p2),64));
    zext_ln173_2_fu_339_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln173_2_fu_334_p2),64));
    zext_ln173_4_fu_361_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln173_3_fu_356_p2),64));
    zext_ln173_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln173_fu_200_p2),64));
end behav;