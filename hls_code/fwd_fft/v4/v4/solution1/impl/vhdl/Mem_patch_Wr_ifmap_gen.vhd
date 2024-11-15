-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mem_patch_Wr_ifmap_gen is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    c_fft_col_op_st_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    c_fft_col_op_st_V_empty_n : IN STD_LOGIC;
    c_fft_col_op_st_V_read : OUT STD_LOGIC;
    ifmap_CF_M_real_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    ifmap_CF_M_real_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_real_we0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    ifmap_CF_M_real_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ifmap_CF_M_imag_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    ifmap_CF_M_imag_ce0 : OUT STD_LOGIC;
    ifmap_CF_M_imag_we0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    ifmap_CF_M_imag_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ctrl1_reg : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of Mem_patch_Wr_ifmap_gen is 
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
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_F : STD_LOGIC_VECTOR (4 downto 0) := "01111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv6_1F : STD_LOGIC_VECTOR (5 downto 0) := "011111";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln1057_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal c_fft_col_op_st_V_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal trunc_ln550_fu_224_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln550_reg_559 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal and_ln145_cast_mid2_v_fu_228_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal and_ln145_cast_mid2_v_reg_564 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln550_fu_236_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln550_reg_570 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln557_fu_254_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln557_reg_576 : STD_LOGIC_VECTOR (10 downto 0);
    signal c_fft_col_op_st_V_read_reg_581 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln145_fu_260_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln145_reg_587 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln145_1_fu_266_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln145_1_reg_595 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln557_fu_293_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fu_84 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_y_load : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln554_fu_272_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal x_fu_88 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_x_load : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln550_1_fu_202_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal indvar_flatten_fu_92 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln1057_fu_170_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln145_2_fu_424_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal empty_fu_132_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bound_fu_140_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal cast_fu_136_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal bound_fu_140_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bound_fu_140_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln1057_2_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln551_fu_182_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln557_mid2_v_fu_210_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln550_fu_194_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln557_fu_242_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_11_cast_fu_246_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln550_fu_220_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln145_fu_298_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln145_fu_310_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln145_1_fu_313_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal xor_ln145_fu_320_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln145_fu_326_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln145_2_fu_340_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln145_1_fu_333_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal xor_ln145_1_fu_347_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln145_2_fu_316_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln145_3_fu_353_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln145_fu_365_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_371_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln145_4_fu_357_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln145_5_fu_361_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln145_1_fu_388_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal lshr_ln145_fu_394_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln145_3_fu_381_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln145_fu_400_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_413_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln145_6_fu_420_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln145_1_fu_301_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln145_7_fu_432_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln145_8_fu_435_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal xor_ln145_2_fu_442_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln145_4_fu_448_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln145_6_fu_462_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln145_5_fu_455_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal xor_ln145_3_fu_469_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln145_9_fu_438_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln145_10_fu_475_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln145_3_fu_487_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_493_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln145_11_fu_479_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln145_12_fu_483_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln145_4_fu_510_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal lshr_ln145_1_fu_516_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln145_7_fu_503_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln145_2_fu_522_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_116 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component Mem_patch_Wr_mul_8ns_8ns_16_1_1 IS
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


    component Mem_patch_Wr_flow_control_loop_pipe IS
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
    mul_8ns_8ns_16_1_1_U1 : component Mem_patch_Wr_mul_8ns_8ns_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        dout_WIDTH => 16)
    port map (
        din0 => bound_fu_140_p0,
        din1 => bound_fu_140_p1,
        dout => bound_fu_140_p2);

    flow_control_loop_pipe_U : component Mem_patch_Wr_flow_control_loop_pipe
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_164_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_return_preg <= empty_fu_132_p1;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_116)) then
                if ((icmp_ln1057_fu_164_p2 = ap_const_lv1_0)) then 
                    indvar_flatten_fu_92 <= add_ln1057_fu_170_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_92 <= ap_const_lv16_0;
                end if;
            end if; 
        end if;
    end process;

    x_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_116)) then
                if ((icmp_ln1057_fu_164_p2 = ap_const_lv1_0)) then 
                    x_fu_88 <= select_ln550_1_fu_202_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    x_fu_88 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    y_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_116)) then
                if ((icmp_ln1057_fu_164_p2 = ap_const_lv1_0)) then 
                    y_fu_84 <= add_ln554_fu_272_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    y_fu_84 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln557_reg_576 <= add_ln557_fu_254_p2;
                    and_ln145_cast_mid2_v_reg_564(4) <= and_ln145_cast_mid2_v_fu_228_p3(4);
                c_fft_col_op_st_V_read_reg_581 <= c_fft_col_op_st_V_dout;
                icmp_ln145_1_reg_595 <= icmp_ln145_1_fu_266_p2;
                icmp_ln145_reg_587 <= icmp_ln145_fu_260_p2;
                    or_ln550_reg_570(4) <= or_ln550_fu_236_p2(4);
                trunc_ln550_reg_559 <= trunc_ln550_fu_224_p1;
            end if;
        end if;
    end process;
    and_ln145_cast_mid2_v_reg_564(3 downto 0) <= "0000";
    or_ln550_reg_570(3 downto 0) <= "1111";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1057_fu_170_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv16_1));
    add_ln551_fu_182_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_x_load) + unsigned(ap_const_lv8_1));
    add_ln554_fu_272_p2 <= std_logic_vector(unsigned(select_ln550_fu_194_p3) + unsigned(ap_const_lv8_1));
    add_ln557_fu_254_p2 <= std_logic_vector(unsigned(tmp_11_cast_fu_246_p3) + unsigned(zext_ln550_fu_220_p1));
    and_ln145_2_fu_522_p2 <= (shl_ln145_4_fu_510_p2 and lshr_ln145_1_fu_516_p2);
    and_ln145_cast_mid2_v_fu_228_p3 <= (trunc_ln550_fu_224_p1 & ap_const_lv4_0);
    and_ln145_fu_400_p2 <= (shl_ln145_1_fu_388_p2 and lshr_ln145_fu_394_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(c_fft_col_op_st_V_empty_n, icmp_ln1057_fu_164_p2, ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_start_int = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (c_fft_col_op_st_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(c_fft_col_op_st_V_empty_n, icmp_ln1057_fu_164_p2, ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_start_int = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (c_fft_col_op_st_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(c_fft_col_op_st_V_empty_n, icmp_ln1057_fu_164_p2, ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (c_fft_col_op_st_V_empty_n = ap_const_logic_0)));
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_116_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_116 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_164_p2, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1057_fu_164_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_164_p2, ap_block_pp0_stage0_11001, empty_fu_132_p1, ap_return_preg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_164_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_return <= empty_fu_132_p1;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_92, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv16_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_92;
        end if; 
    end process;


    ap_sig_allocacmp_x_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, x_fu_88, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_x_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_x_load <= x_fu_88;
        end if; 
    end process;


    ap_sig_allocacmp_y_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, y_fu_84, ap_loop_init, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_y_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_y_load <= y_fu_84;
        end if; 
    end process;

    bound_fu_140_p0 <= cast_fu_136_p1(8 - 1 downto 0);
    bound_fu_140_p1 <= cast_fu_136_p1(8 - 1 downto 0);

    c_fft_col_op_st_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, c_fft_col_op_st_V_empty_n, icmp_ln1057_fu_164_p2, ap_done_reg, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_fft_col_op_st_V_blk_n <= c_fft_col_op_st_V_empty_n;
        else 
            c_fft_col_op_st_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    c_fft_col_op_st_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_164_p2, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_fft_col_op_st_V_read <= ap_const_logic_1;
        else 
            c_fft_col_op_st_V_read <= ap_const_logic_0;
        end if; 
    end process;

    cast_fu_136_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_fu_132_p1),16));
    empty_fu_132_p1 <= ctrl1_reg(8 - 1 downto 0);
    icmp_ln1057_2_fu_188_p2 <= "1" when (ap_sig_allocacmp_y_load = empty_fu_132_p1) else "0";
    icmp_ln1057_fu_164_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = bound_fu_140_p2) else "0";
    icmp_ln145_1_fu_266_p2 <= "1" when (unsigned(and_ln145_cast_mid2_v_fu_228_p3) > unsigned(or_ln550_fu_236_p2)) else "0";
    icmp_ln145_fu_260_p2 <= "1" when (unsigned(and_ln145_cast_mid2_v_fu_228_p3) > unsigned(or_ln550_fu_236_p2)) else "0";
    ifmap_CF_M_imag_address0 <= zext_ln557_fu_293_p1(11 - 1 downto 0);

    ifmap_CF_M_imag_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_imag_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_imag_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_CF_M_imag_d0 <= (select_ln145_7_fu_503_p3 and and_ln145_2_fu_522_p2);

    ifmap_CF_M_imag_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, shl_ln145_2_fu_424_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_imag_we0 <= shl_ln145_2_fu_424_p2;
        else 
            ifmap_CF_M_imag_we0 <= ap_const_lv4_0;
        end if; 
    end process;

    ifmap_CF_M_real_address0 <= zext_ln557_fu_293_p1(11 - 1 downto 0);

    ifmap_CF_M_real_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_real_ce0 <= ap_const_logic_1;
        else 
            ifmap_CF_M_real_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ifmap_CF_M_real_d0 <= (select_ln145_3_fu_381_p3 and and_ln145_fu_400_p2);

    ifmap_CF_M_real_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, shl_ln145_2_fu_424_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ifmap_CF_M_real_we0 <= shl_ln145_2_fu_424_p2;
        else 
            ifmap_CF_M_real_we0 <= ap_const_lv4_0;
        end if; 
    end process;

    lshr_ln145_1_fu_516_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv32_FFFFFFFF),to_integer(unsigned('0' & zext_ln145_12_fu_483_p1(31-1 downto 0)))));
    lshr_ln145_fu_394_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv32_FFFFFFFF),to_integer(unsigned('0' & zext_ln145_5_fu_361_p1(31-1 downto 0)))));
    or_ln550_fu_236_p2 <= (ap_const_lv5_F or and_ln145_cast_mid2_v_fu_228_p3);
    select_ln145_1_fu_333_p3 <= 
        zext_ln145_1_fu_313_p1 when (icmp_ln145_reg_587(0) = '1') else 
        zext_ln145_fu_310_p1;
    select_ln145_2_fu_340_p3 <= 
        xor_ln145_fu_320_p2 when (icmp_ln145_reg_587(0) = '1') else 
        zext_ln145_fu_310_p1;
    select_ln145_3_fu_381_p3 <= 
        tmp_fu_371_p4 when (icmp_ln145_reg_587(0) = '1') else 
        shl_ln145_fu_365_p2;
    select_ln145_4_fu_448_p3 <= 
        zext_ln145_7_fu_432_p1 when (icmp_ln145_1_reg_595(0) = '1') else 
        zext_ln145_8_fu_435_p1;
    select_ln145_5_fu_455_p3 <= 
        zext_ln145_8_fu_435_p1 when (icmp_ln145_1_reg_595(0) = '1') else 
        zext_ln145_7_fu_432_p1;
    select_ln145_6_fu_462_p3 <= 
        xor_ln145_2_fu_442_p2 when (icmp_ln145_1_reg_595(0) = '1') else 
        zext_ln145_7_fu_432_p1;
    select_ln145_7_fu_503_p3 <= 
        tmp_2_fu_493_p4 when (icmp_ln145_1_reg_595(0) = '1') else 
        shl_ln145_3_fu_487_p2;
    select_ln145_fu_326_p3 <= 
        zext_ln145_fu_310_p1 when (icmp_ln145_reg_587(0) = '1') else 
        zext_ln145_1_fu_313_p1;
    select_ln550_1_fu_202_p3 <= 
        add_ln551_fu_182_p2 when (icmp_ln1057_2_fu_188_p2(0) = '1') else 
        ap_sig_allocacmp_x_load;
    select_ln550_fu_194_p3 <= 
        ap_const_lv8_0 when (icmp_ln1057_2_fu_188_p2(0) = '1') else 
        ap_sig_allocacmp_y_load;
    shl_ln145_1_fu_388_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv32_FFFFFFFF),to_integer(unsigned('0' & zext_ln145_4_fu_357_p1(31-1 downto 0)))));
    shl_ln145_2_fu_424_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv4_3),to_integer(unsigned('0' & zext_ln145_6_fu_420_p1(4-1 downto 0)))));
    shl_ln145_3_fu_487_p2 <= std_logic_vector(shift_left(unsigned(zext_ln145_9_fu_438_p1),to_integer(unsigned('0' & zext_ln145_10_fu_475_p1(31-1 downto 0)))));
    shl_ln145_4_fu_510_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv32_FFFFFFFF),to_integer(unsigned('0' & zext_ln145_11_fu_479_p1(31-1 downto 0)))));
    shl_ln145_fu_365_p2 <= std_logic_vector(shift_left(unsigned(zext_ln145_2_fu_316_p1),to_integer(unsigned('0' & zext_ln145_3_fu_353_p1(31-1 downto 0)))));
    tmp_11_cast_fu_246_p3 <= (trunc_ln557_fu_242_p1 & ap_const_lv5_0);
    tmp_1_fu_413_p3 <= (trunc_ln550_reg_559 & ap_const_lv1_0);
    
    tmp_2_fu_493_p4_proc : process(shl_ln145_3_fu_487_p2)
    variable vlo_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable tmp_2_fu_493_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(5 - 1 downto 0) := ap_const_lv32_1F(5 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(5 - 1 downto 0) := ap_const_lv32_0(5 - 1 downto 0);
        v0_cpy := shl_ln145_3_fu_487_p2;
        if (vlo_cpy(5 - 1 downto 0) > vhi_cpy(5 - 1 downto 0)) then
            vhi_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_0(5-1 downto 0)));
            vlo_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_1F(5-1 downto 0)));
            for tmp_2_fu_493_p4_i in 0 to 32-1 loop
                v0_cpy(tmp_2_fu_493_p4_i) := shl_ln145_3_fu_487_p2(32-1-tmp_2_fu_493_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(5-1 downto 0)))));

        section := (others=>'0');
        section(5-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(5-1 downto 0)) - unsigned(vlo_cpy(5-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(32-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_2_fu_493_p4 <= resvalue(32-1 downto 0);
    end process;

    
    tmp_fu_371_p4_proc : process(shl_ln145_fu_365_p2)
    variable vlo_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable tmp_fu_371_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(5 - 1 downto 0) := ap_const_lv32_1F(5 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(5 - 1 downto 0) := ap_const_lv32_0(5 - 1 downto 0);
        v0_cpy := shl_ln145_fu_365_p2;
        if (vlo_cpy(5 - 1 downto 0) > vhi_cpy(5 - 1 downto 0)) then
            vhi_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_0(5-1 downto 0)));
            vlo_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_1F(5-1 downto 0)));
            for tmp_fu_371_p4_i in 0 to 32-1 loop
                v0_cpy(tmp_fu_371_p4_i) := shl_ln145_fu_365_p2(32-1-tmp_fu_371_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(5-1 downto 0)))));

        section := (others=>'0');
        section(5-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(5-1 downto 0)) - unsigned(vlo_cpy(5-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(32-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_fu_371_p4 <= resvalue(32-1 downto 0);
    end process;

    trunc_ln145_1_fu_301_p4 <= c_fft_col_op_st_V_read_reg_581(31 downto 16);
    trunc_ln145_fu_298_p1 <= c_fft_col_op_st_V_read_reg_581(16 - 1 downto 0);
    trunc_ln550_fu_224_p1 <= select_ln550_1_fu_202_p3(1 - 1 downto 0);
    trunc_ln557_fu_242_p1 <= select_ln550_fu_194_p3(6 - 1 downto 0);
    xor_ln145_1_fu_347_p2 <= (select_ln145_fu_326_p3 xor ap_const_lv6_1F);
    xor_ln145_2_fu_442_p2 <= (zext_ln145_7_fu_432_p1 xor ap_const_lv6_1F);
    xor_ln145_3_fu_469_p2 <= (select_ln145_4_fu_448_p3 xor ap_const_lv6_1F);
    xor_ln145_fu_320_p2 <= (zext_ln145_fu_310_p1 xor ap_const_lv6_1F);
    zext_ln145_10_fu_475_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln145_6_fu_462_p3),32));
    zext_ln145_11_fu_479_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln145_5_fu_455_p3),32));
    zext_ln145_12_fu_483_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln145_3_fu_469_p2),32));
    zext_ln145_1_fu_313_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln550_reg_570),6));
    zext_ln145_2_fu_316_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln145_fu_298_p1),32));
    zext_ln145_3_fu_353_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln145_2_fu_340_p3),32));
    zext_ln145_4_fu_357_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln145_1_fu_333_p3),32));
    zext_ln145_5_fu_361_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln145_1_fu_347_p2),32));
    zext_ln145_6_fu_420_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_413_p3),4));
    zext_ln145_7_fu_432_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln145_cast_mid2_v_reg_564),6));
    zext_ln145_8_fu_435_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln550_reg_570),6));
    zext_ln145_9_fu_438_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln145_1_fu_301_p4),32));
    zext_ln145_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln145_cast_mid2_v_reg_564),6));
    zext_ln550_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln557_mid2_v_fu_210_p4),11));
    zext_ln557_fu_293_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln557_reg_576),64));
    zext_ln557_mid2_v_fu_210_p4 <= select_ln550_1_fu_202_p3(7 downto 1);
end behav;
