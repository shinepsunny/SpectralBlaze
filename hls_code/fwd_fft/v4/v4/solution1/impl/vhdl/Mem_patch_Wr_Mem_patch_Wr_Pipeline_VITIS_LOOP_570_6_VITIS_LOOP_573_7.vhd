-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mem_patch_Wr_Mem_patch_Wr_Pipeline_VITIS_LOOP_570_6_VITIS_LOOP_573_7 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bound4 : IN STD_LOGIC_VECTOR (69 downto 0);
    zext_ln554 : IN STD_LOGIC_VECTOR (7 downto 0);
    ifmap_CF_M_real_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    ifmap_CF_M_real_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_real_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ifmap_CF_M_real_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    ifmap_CF_M_real_ce1 : OUT STD_LOGIC;
    ifmap_CF_M_real_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    ifmap_CF_M_imag_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    ifmap_CF_M_imag_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_imag_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ifmap_CF_M_imag_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    ifmap_CF_M_imag_ce1 : OUT STD_LOGIC;
    ifmap_CF_M_imag_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    fft_out : OUT STD_LOGIC_VECTOR (127 downto 0);
    fft_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of Mem_patch_Wr_Mem_patch_Wr_Pipeline_VITIS_LOOP_570_6_VITIS_LOOP_573_7 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv70_0 : STD_LOGIC_VECTOR (69 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv70_1 : STD_LOGIC_VECTOR (69 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv7_10 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_const_lv7_1F : STD_LOGIC_VECTOR (6 downto 0) := "0011111";

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
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_173_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln554_cast_fu_151_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln554_cast_reg_398 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_load_reg_407 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln1057_1_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1057_1_reg_412 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln578_fu_209_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln578_reg_417 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln578_1_fu_256_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln578_3_fu_278_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_fu_70 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln573_fu_284_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_allocacmp_x_load : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal y_fu_74 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1057_1_fu_201_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal indvar_flatten7_fu_78 : STD_LOGIC_VECTOR (69 downto 0);
    signal add_ln1057_fu_178_p2 : STD_LOGIC_VECTOR (69 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal add_ln570_fu_190_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1057_fu_223_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln_fu_236_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_12_cast_fu_229_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln578_fu_246_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln578_fu_250_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln578_fu_262_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln578_2_fu_268_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln578_1_fu_272_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_6_fu_341_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_s_fu_331_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln578_4_fu_327_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln578_3_fu_323_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_5_fu_313_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_4_fu_303_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln578_2_fu_299_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln578_1_fu_295_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component Mem_patch_Wr_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component Mem_patch_Wr_flow_control_loop_pipe_sequential_init
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
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


    indvar_flatten7_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten7_fu_78 <= ap_const_lv70_0;
                elsif (((icmp_ln1057_fu_173_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten7_fu_78 <= add_ln1057_fu_178_p2;
                end if;
            end if; 
        end if;
    end process;

    x_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    x_fu_70 <= ap_const_lv64_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    x_fu_70 <= add_ln573_fu_284_p2;
                end if;
            end if; 
        end if;
    end process;

    y_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    y_fu_74 <= ap_const_lv8_0;
                elsif (((icmp_ln1057_fu_173_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    y_fu_74 <= select_ln1057_1_fu_201_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
                    zext_ln554_cast_reg_398(7 downto 0) <= zext_ln554_cast_fu_151_p1(7 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1057_fu_173_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1057_1_reg_412 <= icmp_ln1057_1_fu_196_p2;
                trunc_ln578_reg_417 <= trunc_ln578_fu_209_p1;
                x_load_reg_407 <= ap_sig_allocacmp_x_load;
            end if;
        end if;
    end process;
    zext_ln554_cast_reg_398(63 downto 8) <= "00000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1057_fu_178_p2 <= std_logic_vector(unsigned(indvar_flatten7_fu_78) + unsigned(ap_const_lv70_1));
    add_ln570_fu_190_p2 <= std_logic_vector(unsigned(y_fu_74) + unsigned(ap_const_lv8_1));
    add_ln573_fu_284_p2 <= std_logic_vector(unsigned(select_ln1057_fu_223_p3) + unsigned(ap_const_lv64_4));
    add_ln578_1_fu_272_p2 <= std_logic_vector(unsigned(tmp_12_cast_fu_229_p3) + unsigned(zext_ln578_2_fu_268_p1));
    add_ln578_fu_250_p2 <= std_logic_vector(unsigned(tmp_12_cast_fu_229_p3) + unsigned(zext_ln578_fu_246_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_173_p2)
    begin
        if (((icmp_ln1057_fu_173_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_x_load_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, x_fu_70, add_ln573_fu_284_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_x_load <= add_ln573_fu_284_p2;
        else 
            ap_sig_allocacmp_x_load <= x_fu_70;
        end if; 
    end process;

    fft_out <= (((((((tmp_6_fu_341_p4 & tmp_s_fu_331_p4) & trunc_ln578_4_fu_327_p1) & trunc_ln578_3_fu_323_p1) & tmp_5_fu_313_p4) & tmp_4_fu_303_p4) & trunc_ln578_2_fu_299_p1) & trunc_ln578_1_fu_295_p1);

    fft_out_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            fft_out_ap_vld <= ap_const_logic_1;
        else 
            fft_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln1057_1_fu_196_p2 <= "1" when (signed(ap_sig_allocacmp_x_load) < signed(zext_ln554_cast_reg_398)) else "0";
    icmp_ln1057_fu_173_p2 <= "1" when (indvar_flatten7_fu_78 = bound4) else "0";
    ifmap_CF_M_imag_address0 <= zext_ln578_3_fu_278_p1(11 - 1 downto 0);
    ifmap_CF_M_imag_address1 <= zext_ln578_1_fu_256_p1(11 - 1 downto 0);

    ifmap_CF_M_imag_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ifmap_CF_M_imag_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_imag_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ifmap_CF_M_imag_ce1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ifmap_CF_M_imag_ce1 <= ap_const_logic_1;
        else 
            ifmap_CF_M_imag_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_CF_M_real_address0 <= zext_ln578_3_fu_278_p1(11 - 1 downto 0);
    ifmap_CF_M_real_address1 <= zext_ln578_1_fu_256_p1(11 - 1 downto 0);

    ifmap_CF_M_real_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ifmap_CF_M_real_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_real_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ifmap_CF_M_real_ce1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ifmap_CF_M_real_ce1 <= ap_const_logic_1;
        else 
            ifmap_CF_M_real_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    lshr_ln_fu_236_p4 <= select_ln1057_fu_223_p3(7 downto 1);
    or_ln578_fu_262_p2 <= (lshr_ln_fu_236_p4 or ap_const_lv7_1);
    select_ln1057_1_fu_201_p3 <= 
        y_fu_74 when (icmp_ln1057_1_fu_196_p2(0) = '1') else 
        add_ln570_fu_190_p2;
    select_ln1057_fu_223_p3 <= 
        x_load_reg_407 when (icmp_ln1057_1_reg_412(0) = '1') else 
        ap_const_lv64_0;
    tmp_12_cast_fu_229_p3 <= (trunc_ln578_reg_417 & ap_const_lv5_0);
    tmp_4_fu_303_p4 <= ifmap_CF_M_real_q1(31 downto 16);
    tmp_5_fu_313_p4 <= ifmap_CF_M_imag_q1(31 downto 16);
    tmp_6_fu_341_p4 <= ifmap_CF_M_imag_q0(31 downto 16);
    tmp_s_fu_331_p4 <= ifmap_CF_M_real_q0(31 downto 16);
    trunc_ln578_1_fu_295_p1 <= ifmap_CF_M_real_q1(16 - 1 downto 0);
    trunc_ln578_2_fu_299_p1 <= ifmap_CF_M_imag_q1(16 - 1 downto 0);
    trunc_ln578_3_fu_323_p1 <= ifmap_CF_M_real_q0(16 - 1 downto 0);
    trunc_ln578_4_fu_327_p1 <= ifmap_CF_M_imag_q0(16 - 1 downto 0);
    trunc_ln578_fu_209_p1 <= select_ln1057_1_fu_201_p3(6 - 1 downto 0);
    zext_ln554_cast_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln554),64));
    zext_ln578_1_fu_256_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln578_fu_250_p2),64));
    zext_ln578_2_fu_268_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln578_fu_262_p2),11));
    zext_ln578_3_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln578_1_fu_272_p2),64));
    zext_ln578_fu_246_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_fu_236_p4),11));
end behav;
