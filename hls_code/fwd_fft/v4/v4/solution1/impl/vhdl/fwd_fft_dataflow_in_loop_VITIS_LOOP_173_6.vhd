-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fwd_fft_dataflow_in_loop_VITIS_LOOP_173_6 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    c_ifmap_col_op_st_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    c_ifmap_col_op_st_empty_n : IN STD_LOGIC;
    c_ifmap_col_op_st_read : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (15 downto 0);
    c_fft_row_op_st_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    c_fft_row_op_st_full_n : IN STD_LOGIC;
    c_fft_row_op_st_write : OUT STD_LOGIC;
    pny : IN STD_LOGIC_VECTOR (7 downto 0);
    p_read12 : IN STD_LOGIC_VECTOR (31 downto 0);
    y_6 : IN STD_LOGIC_VECTOR (31 downto 0);
    Row_Buffer_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    Row_Buffer_full_n : IN STD_LOGIC;
    Row_Buffer_write : OUT STD_LOGIC;
    p_read1_ap_vld : IN STD_LOGIC;
    pny_ap_vld : IN STD_LOGIC;
    p_read12_ap_vld : IN STD_LOGIC;
    y_6_ap_vld : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    p_read_ap_vld : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of fwd_fft_dataflow_in_loop_VITIS_LOOP_173_6 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal in_fft_M_value_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal in_fft_M_value_t_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal in_fft_M_value_1_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal in_fft_M_value_1_t_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal entry_proc16_U0_ap_start : STD_LOGIC;
    signal entry_proc16_U0_ap_done : STD_LOGIC;
    signal entry_proc16_U0_ap_continue : STD_LOGIC;
    signal entry_proc16_U0_ap_idle : STD_LOGIC;
    signal entry_proc16_U0_ap_ready : STD_LOGIC;
    signal entry_proc16_U0_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal entry_proc16_U0_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal entry_proc16_U0_ap_return_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal entry_proc16_U0_ap_return_3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_channel_done_fft_config1_data_V_c_channel : STD_LOGIC;
    signal fft_config1_data_V_c_channel_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_fft_config1_data_V_c_channel : STD_LOGIC := '0';
    signal ap_sync_channel_write_fft_config1_data_V_c_channel : STD_LOGIC;
    signal ap_channel_done_pny_c_channel : STD_LOGIC;
    signal pny_c_channel_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_pny_c_channel : STD_LOGIC := '0';
    signal ap_sync_channel_write_pny_c_channel : STD_LOGIC;
    signal ap_channel_done_ctrl2_reg_c_channel : STD_LOGIC;
    signal ctrl2_reg_c_channel_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_ctrl2_reg_c_channel : STD_LOGIC := '0';
    signal ap_sync_channel_write_ctrl2_reg_c_channel : STD_LOGIC;
    signal ap_channel_done_y_6_c_channel : STD_LOGIC;
    signal y_6_c_channel_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_y_6_c_channel : STD_LOGIC := '0';
    signal ap_sync_channel_write_y_6_c_channel : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_ap_start : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_ap_done : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_ap_continue : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_ap_idle : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_ap_ready : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_c_ifmap_col_op_st_read : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_ce0 : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_we0 : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_ce0 : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_we0 : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal VITIS_LOOP_177_7_proc_U0_ctrl1_reg_c_din : STD_LOGIC_VECTOR (31 downto 0);
    signal VITIS_LOOP_177_7_proc_U0_ctrl1_reg_c_write : STD_LOGIC;
    signal ap_channel_done_in_fft_M_value_1 : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_in_fft_M_value_1 : STD_LOGIC := '0';
    signal ap_sync_channel_write_in_fft_M_value_1 : STD_LOGIC;
    signal ap_channel_done_in_fft_M_value : STD_LOGIC;
    signal VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_in_fft_M_value : STD_LOGIC := '0';
    signal ap_sync_channel_write_in_fft_M_value : STD_LOGIC;
    signal fft_param1_U0_xn_0_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal fft_param1_U0_xn_0_ce0 : STD_LOGIC;
    signal fft_param1_U0_xn_0_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal fft_param1_U0_xn_0_we0 : STD_LOGIC;
    signal fft_param1_U0_xn_0_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal fft_param1_U0_xn_0_ce1 : STD_LOGIC;
    signal fft_param1_U0_xn_0_d1 : STD_LOGIC_VECTOR (31 downto 0);
    signal fft_param1_U0_xn_0_we1 : STD_LOGIC;
    signal fft_param1_U0_xn_1_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal fft_param1_U0_xn_1_ce0 : STD_LOGIC;
    signal fft_param1_U0_xn_1_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal fft_param1_U0_xn_1_we0 : STD_LOGIC;
    signal fft_param1_U0_xn_1_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal fft_param1_U0_xn_1_ce1 : STD_LOGIC;
    signal fft_param1_U0_xn_1_d1 : STD_LOGIC_VECTOR (31 downto 0);
    signal fft_param1_U0_xn_1_we1 : STD_LOGIC;
    signal fft_param1_U0_out_fft_din : STD_LOGIC_VECTOR (63 downto 0);
    signal fft_param1_U0_out_fft_write : STD_LOGIC;
    signal fft_param1_U0_xn_0_read : STD_LOGIC;
    signal fft_param1_U0_xn_1_read : STD_LOGIC;
    signal fft_param1_U0_ap_start : STD_LOGIC;
    signal fft_param1_U0_ap_done : STD_LOGIC;
    signal fft_param1_U0_ap_ready : STD_LOGIC;
    signal fft_param1_U0_ap_idle : STD_LOGIC;
    signal fft_param1_U0_ap_continue : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_ap_start : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_ap_done : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_ap_continue : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_ap_idle : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_ap_ready : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_ctrl1_reg_read : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_out_fft3_read : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_c_fft_row_op_st_din : STD_LOGIC_VECTOR (31 downto 0);
    signal VITIS_LOOP_185_8_proc_U0_c_fft_row_op_st_write : STD_LOGIC;
    signal VITIS_LOOP_185_8_proc_U0_Row_Buffer_din : STD_LOGIC_VECTOR (31 downto 0);
    signal VITIS_LOOP_185_8_proc_U0_Row_Buffer_write : STD_LOGIC;
    signal in_fft_M_value_i_full_n : STD_LOGIC;
    signal in_fft_M_value_t_empty_n : STD_LOGIC;
    signal in_fft_M_value_1_i_full_n : STD_LOGIC;
    signal in_fft_M_value_1_t_empty_n : STD_LOGIC;
    signal y_6_c_channel_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal y_6_c_channel_empty_n : STD_LOGIC;
    signal ctrl2_reg_c_channel_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal ctrl2_reg_c_channel_empty_n : STD_LOGIC;
    signal pny_c_channel_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal pny_c_channel_empty_n : STD_LOGIC;
    signal fft_config1_data_V_c_channel_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal fft_config1_data_V_c_channel_empty_n : STD_LOGIC;
    signal ctrl1_reg_c_full_n : STD_LOGIC;
    signal ctrl1_reg_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal ctrl1_reg_c_empty_n : STD_LOGIC;
    signal out_fft3_full_n : STD_LOGIC;
    signal out_fft3_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal out_fft3_empty_n : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_entry_proc16_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_entry_proc16_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_VITIS_LOOP_177_7_proc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_VITIS_LOOP_177_7_proc_U0_ap_ready : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fwd_fft_entry_proc16 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (15 downto 0);
        pny : IN STD_LOGIC_VECTOR (7 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        y_6 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fwd_fft_VITIS_LOOP_177_7_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (31 downto 0);
        c_ifmap_col_op_st_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        c_ifmap_col_op_st_empty_n : IN STD_LOGIC;
        c_ifmap_col_op_st_read : OUT STD_LOGIC;
        in_fft_M_value1_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        in_fft_M_value1_ce0 : OUT STD_LOGIC;
        in_fft_M_value1_we0 : OUT STD_LOGIC;
        in_fft_M_value1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        in_fft_M_value_12_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        in_fft_M_value_12_ce0 : OUT STD_LOGIC;
        in_fft_M_value_12_we0 : OUT STD_LOGIC;
        in_fft_M_value_12_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ctrl1_reg_c_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        ctrl1_reg_c_full_n : IN STD_LOGIC;
        ctrl1_reg_c_write : OUT STD_LOGIC );
    end component;


    component fwd_fft_fft_param1_s IS
    port (
        xn_0_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        xn_0_ce0 : OUT STD_LOGIC;
        xn_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        xn_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        xn_0_we0 : OUT STD_LOGIC;
        xn_0_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
        xn_0_ce1 : OUT STD_LOGIC;
        xn_0_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        xn_0_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        xn_0_we1 : OUT STD_LOGIC;
        xn_1_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        xn_1_ce0 : OUT STD_LOGIC;
        xn_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        xn_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        xn_1_we0 : OUT STD_LOGIC;
        xn_1_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
        xn_1_ce1 : OUT STD_LOGIC;
        xn_1_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        xn_1_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        xn_1_we1 : OUT STD_LOGIC;
        out_fft_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        out_fft_full_n : IN STD_LOGIC;
        out_fft_write : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (15 downto 0);
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        xn_0_empty_n : IN STD_LOGIC;
        xn_0_read : OUT STD_LOGIC;
        xn_1_empty_n : IN STD_LOGIC;
        xn_1_read : OUT STD_LOGIC;
        p_read_ap_vld : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component fwd_fft_VITIS_LOOP_185_8_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ctrl1_reg_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        ctrl1_reg_empty_n : IN STD_LOGIC;
        ctrl1_reg_read : OUT STD_LOGIC;
        out_fft3_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        out_fft3_empty_n : IN STD_LOGIC;
        out_fft3_read : OUT STD_LOGIC;
        c_fft_row_op_st_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        c_fft_row_op_st_full_n : IN STD_LOGIC;
        c_fft_row_op_st_write : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (7 downto 0);
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        Row_Buffer_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        Row_Buffer_full_n : IN STD_LOGIC;
        Row_Buffer_write : OUT STD_LOGIC );
    end component;


    component fwd_fft_dataflow_in_loop_VITIS_LOOP_173_6_in_fft_M_value IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        i_address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        i_ce0 : IN STD_LOGIC;
        i_we0 : IN STD_LOGIC;
        i_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        i_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        t_address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        t_ce0 : IN STD_LOGIC;
        t_we0 : IN STD_LOGIC;
        t_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        t_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        i_ce : IN STD_LOGIC;
        t_ce : IN STD_LOGIC;
        i_full_n : OUT STD_LOGIC;
        i_write : IN STD_LOGIC;
        t_empty_n : OUT STD_LOGIC;
        t_read : IN STD_LOGIC );
    end component;


    component fwd_fft_fifo_w32_d3_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fwd_fft_fifo_w8_d3_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fwd_fft_fifo_w16_d2_S_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fwd_fft_fifo_w64_d64_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (63 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (63 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    in_fft_M_value_U : component fwd_fft_dataflow_in_loop_VITIS_LOOP_173_6_in_fft_M_value
    generic map (
        DataWidth => 32,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        i_address0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_address0,
        i_ce0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_ce0,
        i_we0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_we0,
        i_d0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_d0,
        i_q0 => in_fft_M_value_i_q0,
        t_address0 => fft_param1_U0_xn_0_address0,
        t_ce0 => fft_param1_U0_xn_0_ce0,
        t_we0 => ap_const_logic_0,
        t_d0 => ap_const_lv32_0,
        t_q0 => in_fft_M_value_t_q0,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => in_fft_M_value_i_full_n,
        i_write => ap_channel_done_in_fft_M_value,
        t_empty_n => in_fft_M_value_t_empty_n,
        t_read => fft_param1_U0_ap_ready);

    in_fft_M_value_1_U : component fwd_fft_dataflow_in_loop_VITIS_LOOP_173_6_in_fft_M_value
    generic map (
        DataWidth => 32,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        i_address0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_address0,
        i_ce0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_ce0,
        i_we0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_we0,
        i_d0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_d0,
        i_q0 => in_fft_M_value_1_i_q0,
        t_address0 => fft_param1_U0_xn_1_address0,
        t_ce0 => fft_param1_U0_xn_1_ce0,
        t_we0 => ap_const_logic_0,
        t_d0 => ap_const_lv32_0,
        t_q0 => in_fft_M_value_1_t_q0,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => in_fft_M_value_1_i_full_n,
        i_write => ap_channel_done_in_fft_M_value_1,
        t_empty_n => in_fft_M_value_1_t_empty_n,
        t_read => fft_param1_U0_ap_ready);

    entry_proc16_U0 : component fwd_fft_entry_proc16
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => entry_proc16_U0_ap_start,
        ap_done => entry_proc16_U0_ap_done,
        ap_continue => entry_proc16_U0_ap_continue,
        ap_idle => entry_proc16_U0_ap_idle,
        ap_ready => entry_proc16_U0_ap_ready,
        p_read => p_read1,
        pny => pny,
        p_read2 => p_read12,
        y_6 => y_6,
        ap_return_0 => entry_proc16_U0_ap_return_0,
        ap_return_1 => entry_proc16_U0_ap_return_1,
        ap_return_2 => entry_proc16_U0_ap_return_2,
        ap_return_3 => entry_proc16_U0_ap_return_3);

    VITIS_LOOP_177_7_proc_U0 : component fwd_fft_VITIS_LOOP_177_7_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => VITIS_LOOP_177_7_proc_U0_ap_start,
        ap_done => VITIS_LOOP_177_7_proc_U0_ap_done,
        ap_continue => VITIS_LOOP_177_7_proc_U0_ap_continue,
        ap_idle => VITIS_LOOP_177_7_proc_U0_ap_idle,
        ap_ready => VITIS_LOOP_177_7_proc_U0_ap_ready,
        p_read => p_read,
        c_ifmap_col_op_st_dout => c_ifmap_col_op_st_dout,
        c_ifmap_col_op_st_empty_n => c_ifmap_col_op_st_empty_n,
        c_ifmap_col_op_st_read => VITIS_LOOP_177_7_proc_U0_c_ifmap_col_op_st_read,
        in_fft_M_value1_address0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_address0,
        in_fft_M_value1_ce0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_ce0,
        in_fft_M_value1_we0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_we0,
        in_fft_M_value1_d0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_d0,
        in_fft_M_value_12_address0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_address0,
        in_fft_M_value_12_ce0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_ce0,
        in_fft_M_value_12_we0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_we0,
        in_fft_M_value_12_d0 => VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_d0,
        ctrl1_reg_c_din => VITIS_LOOP_177_7_proc_U0_ctrl1_reg_c_din,
        ctrl1_reg_c_full_n => ctrl1_reg_c_full_n,
        ctrl1_reg_c_write => VITIS_LOOP_177_7_proc_U0_ctrl1_reg_c_write);

    fft_param1_U0 : component fwd_fft_fft_param1_s
    port map (
        xn_0_address0 => fft_param1_U0_xn_0_address0,
        xn_0_ce0 => fft_param1_U0_xn_0_ce0,
        xn_0_d0 => fft_param1_U0_xn_0_d0,
        xn_0_q0 => in_fft_M_value_t_q0,
        xn_0_we0 => fft_param1_U0_xn_0_we0,
        xn_0_address1 => fft_param1_U0_xn_0_address1,
        xn_0_ce1 => fft_param1_U0_xn_0_ce1,
        xn_0_d1 => fft_param1_U0_xn_0_d1,
        xn_0_q1 => ap_const_lv32_0,
        xn_0_we1 => fft_param1_U0_xn_0_we1,
        xn_1_address0 => fft_param1_U0_xn_1_address0,
        xn_1_ce0 => fft_param1_U0_xn_1_ce0,
        xn_1_d0 => fft_param1_U0_xn_1_d0,
        xn_1_q0 => in_fft_M_value_1_t_q0,
        xn_1_we0 => fft_param1_U0_xn_1_we0,
        xn_1_address1 => fft_param1_U0_xn_1_address1,
        xn_1_ce1 => fft_param1_U0_xn_1_ce1,
        xn_1_d1 => fft_param1_U0_xn_1_d1,
        xn_1_q1 => ap_const_lv32_0,
        xn_1_we1 => fft_param1_U0_xn_1_we1,
        out_fft_din => fft_param1_U0_out_fft_din,
        out_fft_full_n => out_fft3_full_n,
        out_fft_write => fft_param1_U0_out_fft_write,
        p_read => fft_config1_data_V_c_channel_dout,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        xn_0_empty_n => ap_const_logic_0,
        xn_0_read => fft_param1_U0_xn_0_read,
        xn_1_empty_n => ap_const_logic_0,
        xn_1_read => fft_param1_U0_xn_1_read,
        p_read_ap_vld => ap_const_logic_0,
        ap_start => fft_param1_U0_ap_start,
        ap_done => fft_param1_U0_ap_done,
        ap_ready => fft_param1_U0_ap_ready,
        ap_idle => fft_param1_U0_ap_idle,
        ap_continue => fft_param1_U0_ap_continue);

    VITIS_LOOP_185_8_proc_U0 : component fwd_fft_VITIS_LOOP_185_8_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => VITIS_LOOP_185_8_proc_U0_ap_start,
        ap_done => VITIS_LOOP_185_8_proc_U0_ap_done,
        ap_continue => VITIS_LOOP_185_8_proc_U0_ap_continue,
        ap_idle => VITIS_LOOP_185_8_proc_U0_ap_idle,
        ap_ready => VITIS_LOOP_185_8_proc_U0_ap_ready,
        ctrl1_reg_dout => ctrl1_reg_c_dout,
        ctrl1_reg_empty_n => ctrl1_reg_c_empty_n,
        ctrl1_reg_read => VITIS_LOOP_185_8_proc_U0_ctrl1_reg_read,
        out_fft3_dout => out_fft3_dout,
        out_fft3_empty_n => out_fft3_empty_n,
        out_fft3_read => VITIS_LOOP_185_8_proc_U0_out_fft3_read,
        c_fft_row_op_st_din => VITIS_LOOP_185_8_proc_U0_c_fft_row_op_st_din,
        c_fft_row_op_st_full_n => c_fft_row_op_st_full_n,
        c_fft_row_op_st_write => VITIS_LOOP_185_8_proc_U0_c_fft_row_op_st_write,
        p_read => pny_c_channel_dout,
        p_read1 => ctrl2_reg_c_channel_dout,
        p_read2 => y_6_c_channel_dout,
        Row_Buffer_din => VITIS_LOOP_185_8_proc_U0_Row_Buffer_din,
        Row_Buffer_full_n => Row_Buffer_full_n,
        Row_Buffer_write => VITIS_LOOP_185_8_proc_U0_Row_Buffer_write);

    y_6_c_channel_U : component fwd_fft_fifo_w32_d3_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => entry_proc16_U0_ap_return_2,
        if_full_n => y_6_c_channel_full_n,
        if_write => ap_channel_done_y_6_c_channel,
        if_dout => y_6_c_channel_dout,
        if_empty_n => y_6_c_channel_empty_n,
        if_read => VITIS_LOOP_185_8_proc_U0_ap_ready);

    ctrl2_reg_c_channel_U : component fwd_fft_fifo_w32_d3_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => entry_proc16_U0_ap_return_1,
        if_full_n => ctrl2_reg_c_channel_full_n,
        if_write => ap_channel_done_ctrl2_reg_c_channel,
        if_dout => ctrl2_reg_c_channel_dout,
        if_empty_n => ctrl2_reg_c_channel_empty_n,
        if_read => VITIS_LOOP_185_8_proc_U0_ap_ready);

    pny_c_channel_U : component fwd_fft_fifo_w8_d3_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => entry_proc16_U0_ap_return_0,
        if_full_n => pny_c_channel_full_n,
        if_write => ap_channel_done_pny_c_channel,
        if_dout => pny_c_channel_dout,
        if_empty_n => pny_c_channel_empty_n,
        if_read => VITIS_LOOP_185_8_proc_U0_ap_ready);

    fft_config1_data_V_c_channel_U : component fwd_fft_fifo_w16_d2_S_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => entry_proc16_U0_ap_return_3,
        if_full_n => fft_config1_data_V_c_channel_full_n,
        if_write => ap_channel_done_fft_config1_data_V_c_channel,
        if_dout => fft_config1_data_V_c_channel_dout,
        if_empty_n => fft_config1_data_V_c_channel_empty_n,
        if_read => fft_param1_U0_ap_ready);

    ctrl1_reg_c_U : component fwd_fft_fifo_w32_d3_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => VITIS_LOOP_177_7_proc_U0_ctrl1_reg_c_din,
        if_full_n => ctrl1_reg_c_full_n,
        if_write => VITIS_LOOP_177_7_proc_U0_ctrl1_reg_c_write,
        if_dout => ctrl1_reg_c_dout,
        if_empty_n => ctrl1_reg_c_empty_n,
        if_read => VITIS_LOOP_185_8_proc_U0_ctrl1_reg_read);

    out_fft3_U : component fwd_fft_fifo_w64_d64_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fft_param1_U0_out_fft_din,
        if_full_n => out_fft3_full_n,
        if_write => fft_param1_U0_out_fft_write,
        if_dout => out_fft3_dout,
        if_empty_n => out_fft3_empty_n,
        if_read => VITIS_LOOP_185_8_proc_U0_out_fft3_read);





    ap_sync_reg_VITIS_LOOP_177_7_proc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_VITIS_LOOP_177_7_proc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_VITIS_LOOP_177_7_proc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_VITIS_LOOP_177_7_proc_U0_ap_ready <= ap_sync_VITIS_LOOP_177_7_proc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_ctrl2_reg_c_channel_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_ctrl2_reg_c_channel <= ap_const_logic_0;
            else
                if (((entry_proc16_U0_ap_done and entry_proc16_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_ctrl2_reg_c_channel <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_ctrl2_reg_c_channel <= ap_sync_channel_write_ctrl2_reg_c_channel;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_fft_config1_data_V_c_channel_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_fft_config1_data_V_c_channel <= ap_const_logic_0;
            else
                if (((entry_proc16_U0_ap_done and entry_proc16_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_fft_config1_data_V_c_channel <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_fft_config1_data_V_c_channel <= ap_sync_channel_write_fft_config1_data_V_c_channel;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_in_fft_M_value_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_in_fft_M_value <= ap_const_logic_0;
            else
                if (((VITIS_LOOP_177_7_proc_U0_ap_done and VITIS_LOOP_177_7_proc_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_in_fft_M_value <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_in_fft_M_value <= ap_sync_channel_write_in_fft_M_value;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_in_fft_M_value_1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_in_fft_M_value_1 <= ap_const_logic_0;
            else
                if (((VITIS_LOOP_177_7_proc_U0_ap_done and VITIS_LOOP_177_7_proc_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_in_fft_M_value_1 <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_in_fft_M_value_1 <= ap_sync_channel_write_in_fft_M_value_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_pny_c_channel_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_pny_c_channel <= ap_const_logic_0;
            else
                if (((entry_proc16_U0_ap_done and entry_proc16_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_pny_c_channel <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_pny_c_channel <= ap_sync_channel_write_pny_c_channel;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_y_6_c_channel_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_y_6_c_channel <= ap_const_logic_0;
            else
                if (((entry_proc16_U0_ap_done and entry_proc16_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_y_6_c_channel <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_y_6_c_channel <= ap_sync_channel_write_y_6_c_channel;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_entry_proc16_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_entry_proc16_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_entry_proc16_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_entry_proc16_U0_ap_ready <= ap_sync_entry_proc16_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;

    Row_Buffer_din <= VITIS_LOOP_185_8_proc_U0_Row_Buffer_din;
    Row_Buffer_write <= VITIS_LOOP_185_8_proc_U0_Row_Buffer_write;
    VITIS_LOOP_177_7_proc_U0_ap_continue <= (ap_sync_channel_write_in_fft_M_value_1 and ap_sync_channel_write_in_fft_M_value);
    VITIS_LOOP_177_7_proc_U0_ap_start <= ((ap_sync_reg_VITIS_LOOP_177_7_proc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_full_n <= in_fft_M_value_i_full_n;
    VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_full_n <= in_fft_M_value_1_i_full_n;
    VITIS_LOOP_185_8_proc_U0_ap_continue <= ap_continue;
    VITIS_LOOP_185_8_proc_U0_ap_start <= (y_6_c_channel_empty_n and pny_c_channel_empty_n and ctrl2_reg_c_channel_empty_n);
    ap_channel_done_ctrl2_reg_c_channel <= ((ap_sync_reg_channel_write_ctrl2_reg_c_channel xor ap_const_logic_1) and entry_proc16_U0_ap_done);
    ap_channel_done_fft_config1_data_V_c_channel <= ((ap_sync_reg_channel_write_fft_config1_data_V_c_channel xor ap_const_logic_1) and entry_proc16_U0_ap_done);
    ap_channel_done_in_fft_M_value <= ((ap_sync_reg_channel_write_in_fft_M_value xor ap_const_logic_1) and VITIS_LOOP_177_7_proc_U0_ap_done);
    ap_channel_done_in_fft_M_value_1 <= ((ap_sync_reg_channel_write_in_fft_M_value_1 xor ap_const_logic_1) and VITIS_LOOP_177_7_proc_U0_ap_done);
    ap_channel_done_pny_c_channel <= ((ap_sync_reg_channel_write_pny_c_channel xor ap_const_logic_1) and entry_proc16_U0_ap_done);
    ap_channel_done_y_6_c_channel <= ((ap_sync_reg_channel_write_y_6_c_channel xor ap_const_logic_1) and entry_proc16_U0_ap_done);
    ap_done <= VITIS_LOOP_185_8_proc_U0_ap_done;
    ap_idle <= (fft_param1_U0_ap_idle and (fft_config1_data_V_c_channel_empty_n xor ap_const_logic_1) and (pny_c_channel_empty_n xor ap_const_logic_1) and (ctrl2_reg_c_channel_empty_n xor ap_const_logic_1) and (y_6_c_channel_empty_n xor ap_const_logic_1) and (in_fft_M_value_1_t_empty_n xor ap_const_logic_1) and (in_fft_M_value_t_empty_n xor ap_const_logic_1) and entry_proc16_U0_ap_idle and VITIS_LOOP_185_8_proc_U0_ap_idle and VITIS_LOOP_177_7_proc_U0_ap_idle);
    ap_ready <= ap_sync_ready;
    ap_sync_VITIS_LOOP_177_7_proc_U0_ap_ready <= (ap_sync_reg_VITIS_LOOP_177_7_proc_U0_ap_ready or VITIS_LOOP_177_7_proc_U0_ap_ready);
    ap_sync_channel_write_ctrl2_reg_c_channel <= ((ctrl2_reg_c_channel_full_n and ap_channel_done_ctrl2_reg_c_channel) or ap_sync_reg_channel_write_ctrl2_reg_c_channel);
    ap_sync_channel_write_fft_config1_data_V_c_channel <= ((fft_config1_data_V_c_channel_full_n and ap_channel_done_fft_config1_data_V_c_channel) or ap_sync_reg_channel_write_fft_config1_data_V_c_channel);
    ap_sync_channel_write_in_fft_M_value <= ((ap_channel_done_in_fft_M_value and VITIS_LOOP_177_7_proc_U0_in_fft_M_value1_full_n) or ap_sync_reg_channel_write_in_fft_M_value);
    ap_sync_channel_write_in_fft_M_value_1 <= ((ap_channel_done_in_fft_M_value_1 and VITIS_LOOP_177_7_proc_U0_in_fft_M_value_12_full_n) or ap_sync_reg_channel_write_in_fft_M_value_1);
    ap_sync_channel_write_pny_c_channel <= ((pny_c_channel_full_n and ap_channel_done_pny_c_channel) or ap_sync_reg_channel_write_pny_c_channel);
    ap_sync_channel_write_y_6_c_channel <= ((y_6_c_channel_full_n and ap_channel_done_y_6_c_channel) or ap_sync_reg_channel_write_y_6_c_channel);
    ap_sync_entry_proc16_U0_ap_ready <= (entry_proc16_U0_ap_ready or ap_sync_reg_entry_proc16_U0_ap_ready);
    ap_sync_ready <= (ap_sync_entry_proc16_U0_ap_ready and ap_sync_VITIS_LOOP_177_7_proc_U0_ap_ready);
    c_fft_row_op_st_din <= VITIS_LOOP_185_8_proc_U0_c_fft_row_op_st_din;
    c_fft_row_op_st_write <= VITIS_LOOP_185_8_proc_U0_c_fft_row_op_st_write;
    c_ifmap_col_op_st_read <= VITIS_LOOP_177_7_proc_U0_c_ifmap_col_op_st_read;
    entry_proc16_U0_ap_continue <= (ap_sync_channel_write_y_6_c_channel and ap_sync_channel_write_pny_c_channel and ap_sync_channel_write_fft_config1_data_V_c_channel and ap_sync_channel_write_ctrl2_reg_c_channel);
    entry_proc16_U0_ap_start <= ((ap_sync_reg_entry_proc16_U0_ap_ready xor ap_const_logic_1) and ap_start);
    fft_param1_U0_ap_continue <= ap_const_logic_1;
    fft_param1_U0_ap_start <= (in_fft_M_value_t_empty_n and in_fft_M_value_1_t_empty_n and fft_config1_data_V_c_channel_empty_n);
end behav;