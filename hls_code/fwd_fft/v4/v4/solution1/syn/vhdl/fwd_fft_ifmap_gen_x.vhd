-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fwd_fft_ifmap_gen_x is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    c_row_op_st_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    c_row_op_st_empty_n : IN STD_LOGIC;
    c_row_op_st_read : OUT STD_LOGIC;
    ifmap_CF_M_real_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ifmap_CF_M_real_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_real_we0 : OUT STD_LOGIC;
    ifmap_CF_M_real_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ifmap_CF_M_imag_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ifmap_CF_M_imag_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_imag_we0 : OUT STD_LOGIC;
    ifmap_CF_M_imag_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_read : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of fwd_fft_ifmap_gen_x is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
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
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln1057_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal c_row_op_st_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal add_ln376_fu_200_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln376_reg_278 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln145_fu_206_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln145_reg_283 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln145_3_reg_288 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln376_1_fu_241_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_fu_60 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_x_load : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln373_fu_220_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal y_fu_64 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_y_load : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1057_1_fu_176_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal indvar_flatten_fu_68 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln1057_fu_144_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal bound_fu_114_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal cast_fu_110_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bound_fu_114_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bound_fu_114_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln1057_3_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln370_fu_156_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln376_fu_184_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln1057_fu_168_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_cast_fu_188_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln376_fu_196_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_108 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component fwd_fft_mul_8ns_8ns_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_flow_control_loop_pipe IS
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
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    mul_8ns_8ns_16_1_1_U257 : component fwd_fft_mul_8ns_8ns_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        dout_WIDTH => 16)
    port map (
        din0 => bound_fu_114_p0,
        din1 => bound_fu_114_p1,
        dout => bound_fu_114_p2);

    flow_control_loop_pipe_U : component fwd_fft_flow_control_loop_pipe
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
        ap_done_int => ap_done_int,
        ap_continue => ap_continue);





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


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv8_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_return_preg <= p_read;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_108)) then
                if ((icmp_ln1057_fu_138_p2 = ap_const_lv1_0)) then 
                    indvar_flatten_fu_68 <= add_ln1057_fu_144_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_68 <= ap_const_lv16_0;
                end if;
            end if; 
        end if;
    end process;

    x_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_108)) then
                if ((icmp_ln1057_fu_138_p2 = ap_const_lv1_0)) then 
                    x_fu_60 <= add_ln373_fu_220_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    x_fu_60 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    y_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_108)) then
                if ((icmp_ln1057_fu_138_p2 = ap_const_lv1_0)) then 
                    y_fu_64 <= select_ln1057_1_fu_176_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    y_fu_64 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln376_reg_278 <= add_ln376_fu_200_p2;
                trunc_ln145_3_reg_288 <= c_row_op_st_dout(31 downto 16);
                trunc_ln145_reg_283 <= trunc_ln145_fu_206_p1;
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
    add_ln1057_fu_144_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv16_1));
    add_ln370_fu_156_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_y_load) + unsigned(ap_const_lv8_1));
    add_ln373_fu_220_p2 <= std_logic_vector(unsigned(select_ln1057_fu_168_p3) + unsigned(ap_const_lv8_1));
    add_ln376_fu_200_p2 <= std_logic_vector(unsigned(tmp_cast_fu_188_p3) + unsigned(zext_ln376_fu_196_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(c_row_op_st_empty_n, icmp_ln1057_fu_138_p2, ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_start_int = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((icmp_ln1057_fu_138_p2 = ap_const_lv1_0) and (c_row_op_st_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(c_row_op_st_empty_n, icmp_ln1057_fu_138_p2, ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_start_int = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((icmp_ln1057_fu_138_p2 = ap_const_lv1_0) and (c_row_op_st_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(c_row_op_st_empty_n, icmp_ln1057_fu_138_p2, ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((icmp_ln1057_fu_138_p2 = ap_const_lv1_0) and (c_row_op_st_empty_n = ap_const_logic_0)));
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_108_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_108 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_138_p2, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1057_fu_138_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_done_reg, ap_block_pp0_stage0_subdone, ap_loop_exit_ready)
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
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_138_p2, p_read, ap_block_pp0_stage0_11001, ap_return_preg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_return <= p_read;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_68, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv16_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_68;
        end if; 
    end process;


    ap_sig_allocacmp_x_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, x_fu_60, ap_loop_init, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_x_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_x_load <= x_fu_60;
        end if; 
    end process;


    ap_sig_allocacmp_y_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, y_fu_64, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_y_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_y_load <= y_fu_64;
        end if; 
    end process;

    bound_fu_114_p0 <= cast_fu_110_p1(8 - 1 downto 0);
    bound_fu_114_p1 <= cast_fu_110_p1(8 - 1 downto 0);

    c_row_op_st_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, c_row_op_st_empty_n, icmp_ln1057_fu_138_p2, ap_done_reg, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (icmp_ln1057_fu_138_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_row_op_st_blk_n <= c_row_op_st_empty_n;
        else 
            c_row_op_st_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    c_row_op_st_read_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_138_p2, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_138_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_row_op_st_read <= ap_const_logic_1;
        else 
            c_row_op_st_read <= ap_const_logic_0;
        end if; 
    end process;

    cast_fu_110_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_read),16));
    icmp_ln1057_3_fu_162_p2 <= "1" when (ap_sig_allocacmp_x_load = p_read) else "0";
    icmp_ln1057_fu_138_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = bound_fu_114_p2) else "0";
    ifmap_CF_M_imag_address0 <= zext_ln376_1_fu_241_p1(12 - 1 downto 0);

    ifmap_CF_M_imag_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_imag_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_imag_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_CF_M_imag_d0 <= trunc_ln145_3_reg_288;

    ifmap_CF_M_imag_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_imag_we0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_imag_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_CF_M_real_address0 <= zext_ln376_1_fu_241_p1(12 - 1 downto 0);

    ifmap_CF_M_real_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_real_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_real_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_CF_M_real_d0 <= trunc_ln145_reg_283;

    ifmap_CF_M_real_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_real_we0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_real_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln1057_1_fu_176_p3 <= 
        add_ln370_fu_156_p2 when (icmp_ln1057_3_fu_162_p2(0) = '1') else 
        ap_sig_allocacmp_y_load;
    select_ln1057_fu_168_p3 <= 
        ap_const_lv8_0 when (icmp_ln1057_3_fu_162_p2(0) = '1') else 
        ap_sig_allocacmp_x_load;
    tmp_cast_fu_188_p3 <= (trunc_ln376_fu_184_p1 & ap_const_lv6_0);
    trunc_ln145_fu_206_p1 <= c_row_op_st_dout(16 - 1 downto 0);
    trunc_ln376_fu_184_p1 <= select_ln1057_1_fu_176_p3(6 - 1 downto 0);
    zext_ln376_1_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln376_reg_278),64));
    zext_ln376_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln1057_fu_168_p3),12));
end behav;
