-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FFT_R_bit_reversal is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    IN_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    IN_r_ce0 : OUT STD_LOGIC;
    IN_r_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    OUT_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    OUT_r_ce0 : OUT STD_LOGIC;
    OUT_r_we0 : OUT STD_LOGIC;
    OUT_r_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of FFT_R_bit_reversal is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_113_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal x_7_reg_194 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln573_fu_173_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln1057_fu_183_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_fu_54 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_x_7 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln55_fu_119_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_fu_91_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_partselect_cast_cast_fu_95_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal sub_ln674_fu_135_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal sub_ln674_1_fu_141_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_125_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln674_fu_147_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln674_1_fu_151_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal lshr_ln674_fu_155_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal lshr_ln674_1_fu_161_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_s_fu_167_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_95 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component FFT_R_flow_control_loop_pipe IS
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
    flow_control_loop_pipe_U : component FFT_R_flow_control_loop_pipe
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
                ap_return_preg <= ap_const_lv32_0;
            else
                if (((icmp_ln1057_fu_113_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_return_preg <= p_read;
                end if; 
            end if;
        end if;
    end process;


    x_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_95)) then
                if ((icmp_ln1057_fu_113_p2 = ap_const_lv1_0)) then 
                    x_fu_54 <= add_ln55_fu_119_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    x_fu_54 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                x_7_reg_194 <= ap_sig_allocacmp_x_7;
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
    IN_r_address0 <= zext_ln573_fu_173_p1(6 - 1 downto 0);

    IN_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            IN_r_ce0 <= ap_const_logic_1;
        else 
            IN_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    OUT_r_address0 <= zext_ln1057_fu_183_p1(6 - 1 downto 0);

    OUT_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OUT_r_ce0 <= ap_const_logic_1;
        else 
            OUT_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    OUT_r_d0 <= IN_r_q0;

    OUT_r_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OUT_r_we0 <= ap_const_logic_1;
        else 
            OUT_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln55_fu_119_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_x_7) + unsigned(ap_const_lv8_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_done_reg = ap_const_logic_1);
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_95_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_95 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_113_p2, ap_start_int)
    begin
        if (((icmp_ln1057_fu_113_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_113_p2, p_read, ap_block_pp0_stage0_11001, ap_return_preg)
    begin
        if (((icmp_ln1057_fu_113_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_return <= p_read;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_allocacmp_x_7_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, x_fu_54, ap_loop_init, ap_start_int)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_x_7 <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_x_7 <= x_fu_54;
        end if; 
    end process;

    empty_fu_91_p1 <= p_read(8 - 1 downto 0);
    icmp_ln1057_fu_113_p2 <= "1" when (ap_sig_allocacmp_x_7 = empty_fu_91_p1) else "0";
    lshr_ln674_1_fu_161_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv6_3F),to_integer(unsigned('0' & zext_ln674_1_fu_151_p1(6-1 downto 0)))));
    lshr_ln674_fu_155_p2 <= std_logic_vector(shift_right(unsigned(tmp_fu_125_p4),to_integer(unsigned('0' & zext_ln674_fu_147_p1(6-1 downto 0)))));
    p_Result_s_fu_167_p2 <= (lshr_ln674_fu_155_p2 and lshr_ln674_1_fu_161_p2);
    p_partselect_cast_cast_fu_95_p4 <= p_read(10 downto 8);
    sub_ln674_1_fu_141_p2 <= std_logic_vector(signed(ap_const_lv3_6) - signed(p_partselect_cast_cast_fu_95_p4));
    sub_ln674_fu_135_p2 <= std_logic_vector(signed(ap_const_lv3_6) - signed(p_partselect_cast_cast_fu_95_p4));
    
    tmp_fu_125_p4_proc : process(ap_sig_allocacmp_x_7)
    variable vlo_cpy : STD_LOGIC_VECTOR(8+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(8+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(8 - 1 downto 0);
    variable tmp_fu_125_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(8 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(8 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(8 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(3 - 1 downto 0) := ap_const_lv32_5(3 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(3 - 1 downto 0) := ap_const_lv32_0(3 - 1 downto 0);
        v0_cpy := ap_sig_allocacmp_x_7;
        if (vlo_cpy(3 - 1 downto 0) > vhi_cpy(3 - 1 downto 0)) then
            vhi_cpy(3-1 downto 0) := std_logic_vector(8-1-unsigned(ap_const_lv32_0(3-1 downto 0)));
            vlo_cpy(3-1 downto 0) := std_logic_vector(8-1-unsigned(ap_const_lv32_5(3-1 downto 0)));
            for tmp_fu_125_p4_i in 0 to 8-1 loop
                v0_cpy(tmp_fu_125_p4_i) := ap_sig_allocacmp_x_7(8-1-tmp_fu_125_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(3-1 downto 0)))));

        section := (others=>'0');
        section(3-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(3-1 downto 0)) - unsigned(vlo_cpy(3-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(8-1 downto 0)))));
        res_mask := res_mask(8-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_fu_125_p4 <= resvalue(6-1 downto 0);
    end process;

    zext_ln1057_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_7_reg_194),64));
    zext_ln573_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_s_fu_167_p2),64));
    zext_ln674_1_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln674_1_fu_141_p2),6));
    zext_ln674_fu_147_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln674_fu_135_p2),6));
end behav;