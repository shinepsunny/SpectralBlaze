-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mem_patch_Wr_VITIS_LOOP_570_6_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (7 downto 0);
    ifmap_CF_M_real1_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    ifmap_CF_M_real1_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_real1_q0 : IN STD_LOGIC_VECTOR (1023 downto 0);
    ifmap_CF_M_imag2_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    ifmap_CF_M_imag2_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_imag2_q0 : IN STD_LOGIC_VECTOR (1023 downto 0);
    fft_out : OUT STD_LOGIC_VECTOR (127 downto 0);
    fft_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of Mem_patch_Wr_VITIS_LOOP_570_6_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv9_3 : STD_LOGIC_VECTOR (8 downto 0) := "000000011";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal cmp_i_i2652_fu_91_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp_i_i2652_reg_165 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_read_cast_fu_97_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_read_cast_reg_169 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln570_fu_114_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln570_reg_177 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln1057_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_192 : STD_LOGIC_VECTOR (6 downto 0);
    signal ifmap_CF_M_real1_load_reg_197 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ifmap_CF_M_imag2_load_reg_202 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_21_fu_141_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_21_reg_207 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start : STD_LOGIC;
    signal grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_done : STD_LOGIC;
    signal grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_idle : STD_LOGIC;
    signal grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_ready : STD_LOGIC;
    signal grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_fft_out : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_fft_out_ap_vld : STD_LOGIC;
    signal grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln546_fu_120_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fu_44 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state4_on_subcall_done : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal add_ln1057_fu_126_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component Mem_patch_Wr_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        empty : IN STD_LOGIC_VECTOR (8 downto 0);
        ifmap_CF_M_real1_load : IN STD_LOGIC_VECTOR (1023 downto 0);
        ifmap_CF_M_imag2_load : IN STD_LOGIC_VECTOR (1023 downto 0);
        fft_out : OUT STD_LOGIC_VECTOR (127 downto 0);
        fft_out_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80 : component Mem_patch_Wr_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start,
        ap_done => grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_done,
        ap_idle => grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_idle,
        ap_ready => grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_ready,
        empty => tmp_21_reg_207,
        ifmap_CF_M_real1_load => ifmap_CF_M_real1_load_reg_197,
        ifmap_CF_M_imag2_load => ifmap_CF_M_imag2_load_reg_202,
        fft_out => grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_fft_out,
        fft_out_ap_vld => grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_fft_out_ap_vld);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((icmp_ln1057_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_ready = ap_const_logic_1)) then 
                    grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    y_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                y_fu_44 <= ap_const_lv8_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_on_subcall_done))) then 
                y_fu_44 <= add_ln570_reg_177;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln570_reg_177 <= add_ln570_fu_114_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                cmp_i_i2652_reg_165 <= cmp_i_i2652_fu_91_p2;
                    p_read_cast_reg_169(7 downto 0) <= p_read_cast_fu_97_p1(7 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                ifmap_CF_M_imag2_load_reg_202 <= ifmap_CF_M_imag2_q0;
                ifmap_CF_M_real1_load_reg_197 <= ifmap_CF_M_real1_q0;
                    tmp_21_reg_207(8 downto 2) <= tmp_21_fu_141_p3(8 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1057_fu_109_p2 = ap_const_lv1_0) and (cmp_i_i2652_reg_165 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_reg_192 <= add_ln1057_fu_126_p2(8 downto 2);
            end if;
        end if;
    end process;
    p_read_cast_reg_169(8) <= '0';
    tmp_21_reg_207(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, cmp_i_i2652_reg_165, ap_CS_fsm_state2, icmp_ln1057_fu_109_p2, ap_CS_fsm_state4, ap_block_state4_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln1057_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln1057_fu_109_p2 = ap_const_lv1_0) and (cmp_i_i2652_reg_165 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln1057_fu_126_p2 <= std_logic_vector(unsigned(p_read_cast_reg_169) + unsigned(ap_const_lv9_3));
    add_ln570_fu_114_p2 <= std_logic_vector(unsigned(y_fu_44) + unsigned(ap_const_lv8_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(ap_block_state4_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state4_on_subcall_done)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state4_on_subcall_done_assign_proc : process(cmp_i_i2652_reg_165, grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_done)
    begin
                ap_block_state4_on_subcall_done <= ((grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_done = ap_const_logic_0) and (cmp_i_i2652_reg_165 = ap_const_lv1_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln1057_fu_109_p2)
    begin
        if (((icmp_ln1057_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln1057_fu_109_p2)
    begin
        if (((icmp_ln1057_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    cmp_i_i2652_fu_91_p2 <= "1" when (p_read = ap_const_lv8_0) else "0";
    fft_out <= grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_fft_out;
    fft_out_ap_vld <= grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_fft_out_ap_vld;
    grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start <= grp_VITIS_LOOP_570_6_proc_Pipeline_VITIS_LOOP_573_7_fu_80_ap_start_reg;
    icmp_ln1057_fu_109_p2 <= "1" when (y_fu_44 = p_read) else "0";
    ifmap_CF_M_imag2_address0 <= zext_ln546_fu_120_p1(6 - 1 downto 0);

    ifmap_CF_M_imag2_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ifmap_CF_M_imag2_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_imag2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_CF_M_real1_address0 <= zext_ln546_fu_120_p1(6 - 1 downto 0);

    ifmap_CF_M_real1_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ifmap_CF_M_real1_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_real1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_read_cast_fu_97_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_read),9));
    tmp_21_fu_141_p3 <= (tmp_reg_192 & ap_const_lv2_0);
    zext_ln546_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_fu_44),64));
end behav;
