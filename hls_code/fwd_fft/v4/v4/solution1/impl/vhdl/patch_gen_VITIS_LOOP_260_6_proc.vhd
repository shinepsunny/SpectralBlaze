-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity patch_gen_VITIS_LOOP_260_6_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    burst_buffer11_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    burst_buffer11_ce0 : OUT STD_LOGIC;
    burst_buffer11_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    burst_buffer22_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    burst_buffer22_ce0 : OUT STD_LOGIC;
    burst_buffer22_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    col_ov_pix_out_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    col_ov_pix_out_V_full_n : IN STD_LOGIC;
    col_ov_pix_out_V_write : OUT STD_LOGIC );
end;


architecture behav of patch_gen_VITIS_LOOP_260_6_proc is 
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
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal empty_fu_77_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_reg_150 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_cast_fu_81_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_cast_reg_155 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln1057_fu_91_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1057_reg_160 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_cast37_cast_fu_97_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_cast37_cast_reg_164 : STD_LOGIC_VECTOR (13 downto 0);
    signal bound_fu_105_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal bound_reg_169 : STD_LOGIC_VECTOR (15 downto 0);
    signal pnx_2_fu_124_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal pnx_2_reg_177 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal mul_ln263_fu_134_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal mul_ln263_reg_182 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln1057_1_fu_119_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start : STD_LOGIC;
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_done : STD_LOGIC;
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_idle : STD_LOGIC;
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_ready : STD_LOGIC;
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_col_ov_pix_out_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_col_ov_pix_out_V_write : STD_LOGIC;
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer11_address0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer11_ce0 : STD_LOGIC;
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer22_address0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer22_ce0 : STD_LOGIC;
    signal grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal pnx_1_fu_48 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state4_on_subcall_done : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal bound_fu_105_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal cast_fu_101_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bound_fu_105_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln263_fu_134_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln263_fu_134_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal mul_ln263_fu_134_p00 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component patch_gen_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        col_ov_pix_out_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        col_ov_pix_out_V_full_n : IN STD_LOGIC;
        col_ov_pix_out_V_write : OUT STD_LOGIC;
        bound : IN STD_LOGIC_VECTOR (15 downto 0);
        p_cast : IN STD_LOGIC_VECTOR (7 downto 0);
        mul_ln263 : IN STD_LOGIC_VECTOR (13 downto 0);
        burst_buffer11_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
        burst_buffer11_ce0 : OUT STD_LOGIC;
        burst_buffer11_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        burst_buffer22_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
        burst_buffer22_ce0 : OUT STD_LOGIC;
        burst_buffer22_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component patch_gen_mul_8ns_8ns_16_1_1 IS
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


    component patch_gen_mul_8ns_8ns_14_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (13 downto 0) );
    end component;



begin
    grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64 : component patch_gen_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start,
        ap_done => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_done,
        ap_idle => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_idle,
        ap_ready => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_ready,
        col_ov_pix_out_V_din => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_col_ov_pix_out_V_din,
        col_ov_pix_out_V_full_n => col_ov_pix_out_V_full_n,
        col_ov_pix_out_V_write => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_col_ov_pix_out_V_write,
        bound => bound_reg_169,
        p_cast => p_cast_reg_155,
        mul_ln263 => mul_ln263_reg_182,
        burst_buffer11_address0 => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer11_address0,
        burst_buffer11_ce0 => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer11_ce0,
        burst_buffer11_q0 => burst_buffer11_q0,
        burst_buffer22_address0 => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer22_address0,
        burst_buffer22_ce0 => grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer22_ce0,
        burst_buffer22_q0 => burst_buffer22_q0);

    mul_8ns_8ns_16_1_1_U28 : component patch_gen_mul_8ns_8ns_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        dout_WIDTH => 16)
    port map (
        din0 => bound_fu_105_p0,
        din1 => bound_fu_105_p1,
        dout => bound_fu_105_p2);

    mul_8ns_8ns_14_1_1_U29 : component patch_gen_mul_8ns_8ns_14_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        dout_WIDTH => 14)
    port map (
        din0 => mul_ln263_fu_134_p0,
        din1 => mul_ln263_fu_134_p1,
        dout => mul_ln263_fu_134_p2);





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
                elsif (((icmp_ln1057_1_fu_119_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_ready = ap_const_logic_1)) then 
                    grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    pnx_1_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                pnx_1_fu_48 <= ap_const_lv8_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_on_subcall_done))) then 
                pnx_1_fu_48 <= pnx_2_reg_177;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                bound_reg_169 <= bound_fu_105_p2;
                empty_reg_150 <= empty_fu_77_p1;
                icmp_ln1057_reg_160 <= icmp_ln1057_fu_91_p2;
                    p_cast37_cast_reg_164(7 downto 0) <= p_cast37_cast_fu_97_p1(7 downto 0);
                p_cast_reg_155 <= p_read1(31 downto 24);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1057_1_fu_119_p2 = ap_const_lv1_0) and (icmp_ln1057_reg_160 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                mul_ln263_reg_182 <= mul_ln263_fu_134_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                pnx_2_reg_177 <= pnx_2_fu_124_p2;
            end if;
        end if;
    end process;
    p_cast37_cast_reg_164(13 downto 8) <= "000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln1057_reg_160, ap_CS_fsm_state2, icmp_ln1057_1_fu_119_p2, ap_CS_fsm_state4, ap_block_state4_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln1057_1_fu_119_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln1057_1_fu_119_p2 = ap_const_lv1_0) and (icmp_ln1057_reg_160 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
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


    ap_block_state4_on_subcall_done_assign_proc : process(icmp_ln1057_reg_160, grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_done)
    begin
                ap_block_state4_on_subcall_done <= ((grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_done = ap_const_logic_0) and (icmp_ln1057_reg_160 = ap_const_lv1_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln1057_1_fu_119_p2)
    begin
        if (((icmp_ln1057_1_fu_119_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln1057_1_fu_119_p2)
    begin
        if (((icmp_ln1057_1_fu_119_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound_fu_105_p0 <= cast_fu_101_p1(8 - 1 downto 0);
    bound_fu_105_p1 <= cast_fu_101_p1(8 - 1 downto 0);
    burst_buffer11_address0 <= grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer11_address0;
    burst_buffer11_ce0 <= grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer11_ce0;
    burst_buffer22_address0 <= grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer22_address0;
    burst_buffer22_ce0 <= grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_burst_buffer22_ce0;
    cast_fu_101_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_cast_fu_81_p4),16));
    col_ov_pix_out_V_din <= grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_col_ov_pix_out_V_din;

    col_ov_pix_out_V_write_assign_proc : process(icmp_ln1057_reg_160, grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_col_ov_pix_out_V_write, ap_CS_fsm_state4)
    begin
        if (((icmp_ln1057_reg_160 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            col_ov_pix_out_V_write <= grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_col_ov_pix_out_V_write;
        else 
            col_ov_pix_out_V_write <= ap_const_logic_0;
        end if; 
    end process;

    empty_fu_77_p1 <= p_read(8 - 1 downto 0);
    grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start <= grp_VITIS_LOOP_260_6_proc_Pipeline_VITIS_LOOP_263_7_VITIS_LOOP_266_8_fu_64_ap_start_reg;
    icmp_ln1057_1_fu_119_p2 <= "1" when (pnx_1_fu_48 = empty_reg_150) else "0";
    icmp_ln1057_fu_91_p2 <= "1" when (p_cast_fu_81_p4 = ap_const_lv8_0) else "0";
    mul_ln263_fu_134_p0 <= mul_ln263_fu_134_p00(8 - 1 downto 0);
    mul_ln263_fu_134_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pnx_1_fu_48),14));
    mul_ln263_fu_134_p1 <= p_cast37_cast_reg_164(8 - 1 downto 0);
    p_cast37_cast_fu_97_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_cast_fu_81_p4),14));
    p_cast_fu_81_p4 <= p_read1(31 downto 24);
    pnx_2_fu_124_p2 <= std_logic_vector(unsigned(pnx_1_fu_48) + unsigned(ap_const_lv8_1));
end behav;
