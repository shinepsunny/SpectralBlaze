-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fwd_fft_Mem_patch_Wr is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    c_fft_col_op_st_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    c_fft_col_op_st_empty_n : IN STD_LOGIC;
    c_fft_col_op_st_read : OUT STD_LOGIC;
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    p_read : IN STD_LOGIC_VECTOR (63 downto 0);
    ctrl1_reg_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    ctrl1_reg_empty_n : IN STD_LOGIC;
    ctrl1_reg_read : OUT STD_LOGIC;
    ctrl2_reg_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    ctrl2_reg_empty_n : IN STD_LOGIC;
    ctrl2_reg_read : OUT STD_LOGIC;
    layer1_reg_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    layer1_reg_empty_n : IN STD_LOGIC;
    layer1_reg_read : OUT STD_LOGIC );
end;


architecture behav of fwd_fft_Mem_patch_Wr is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ctrl1_reg_blk_n : STD_LOGIC;
    signal ctrl2_reg_blk_n : STD_LOGIC;
    signal layer1_reg_blk_n : STD_LOGIC;
    signal empty_fu_85_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_reg_105 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_162_fu_90_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal empty_162_reg_110 : STD_LOGIC_VECTOR (15 downto 0);
    signal empty_163_fu_95_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_163_reg_115 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_c_fft_col_op_st_read : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWVALID : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WVALID : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WDATA : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WSTRB : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WLAST : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARVALID : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_RREADY : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_BREADY : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_ap_start : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_ap_done : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_ap_ready : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_ap_idle : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_ap_continue : STD_LOGIC;
    signal grp_dataflow_parent_loop_proc9_fu_70_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state1_ignore_call12 : BOOLEAN;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_ready : STD_LOGIC;
    signal ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_done : STD_LOGIC;
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_ready : STD_LOGIC := '0';
    signal ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_done : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fwd_fft_dataflow_parent_loop_proc9 IS
    port (
        layer1_reg_load_cast : IN STD_LOGIC_VECTOR (15 downto 0);
        ctrl2_reg_load_cast : IN STD_LOGIC_VECTOR (7 downto 0);
        c_fft_col_op_st_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        c_fft_col_op_st_empty_n : IN STD_LOGIC;
        c_fft_col_op_st_read : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (7 downto 0);
        m_axi_gmem_AWVALID : OUT STD_LOGIC;
        m_axi_gmem_AWREADY : IN STD_LOGIC;
        m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_WVALID : OUT STD_LOGIC;
        m_axi_gmem_WREADY : IN STD_LOGIC;
        m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
        m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (15 downto 0);
        m_axi_gmem_WLAST : OUT STD_LOGIC;
        m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_ARVALID : OUT STD_LOGIC;
        m_axi_gmem_ARREADY : IN STD_LOGIC;
        m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RVALID : IN STD_LOGIC;
        m_axi_gmem_RREADY : OUT STD_LOGIC;
        m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (127 downto 0);
        m_axi_gmem_RLAST : IN STD_LOGIC;
        m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_BVALID : IN STD_LOGIC;
        m_axi_gmem_BREADY : OUT STD_LOGIC;
        m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        fft_out : IN STD_LOGIC_VECTOR (63 downto 0);
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ctrl2_reg_load_cast_ap_vld : IN STD_LOGIC;
        p_read_ap_vld : IN STD_LOGIC;
        fft_out_ap_vld : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    grp_dataflow_parent_loop_proc9_fu_70 : component fwd_fft_dataflow_parent_loop_proc9
    port map (
        layer1_reg_load_cast => empty_162_reg_110,
        ctrl2_reg_load_cast => empty_163_reg_115,
        c_fft_col_op_st_dout => c_fft_col_op_st_dout,
        c_fft_col_op_st_empty_n => c_fft_col_op_st_empty_n,
        c_fft_col_op_st_read => grp_dataflow_parent_loop_proc9_fu_70_c_fft_col_op_st_read,
        p_read => empty_reg_105,
        m_axi_gmem_AWVALID => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY => m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWADDR,
        m_axi_gmem_AWID => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWID,
        m_axi_gmem_AWLEN => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WVALID,
        m_axi_gmem_WREADY => m_axi_gmem_WREADY,
        m_axi_gmem_WDATA => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WLAST,
        m_axi_gmem_WID => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WID,
        m_axi_gmem_WUSER => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY => ap_const_logic_0,
        m_axi_gmem_ARADDR => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARADDR,
        m_axi_gmem_ARID => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARID,
        m_axi_gmem_ARLEN => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID => ap_const_logic_0,
        m_axi_gmem_RREADY => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_RREADY,
        m_axi_gmem_RDATA => ap_const_lv128_lc_1,
        m_axi_gmem_RLAST => ap_const_logic_0,
        m_axi_gmem_RID => ap_const_lv1_0,
        m_axi_gmem_RUSER => ap_const_lv1_0,
        m_axi_gmem_RRESP => ap_const_lv2_0,
        m_axi_gmem_BVALID => m_axi_gmem_BVALID,
        m_axi_gmem_BREADY => grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_BREADY,
        m_axi_gmem_BRESP => m_axi_gmem_BRESP,
        m_axi_gmem_BID => m_axi_gmem_BID,
        m_axi_gmem_BUSER => m_axi_gmem_BUSER,
        fft_out => p_read,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ctrl2_reg_load_cast_ap_vld => ap_const_logic_1,
        p_read_ap_vld => ap_const_logic_1,
        fft_out_ap_vld => ap_const_logic_1,
        ap_start => grp_dataflow_parent_loop_proc9_fu_70_ap_start,
        ap_done => grp_dataflow_parent_loop_proc9_fu_70_ap_done,
        ap_ready => grp_dataflow_parent_loop_proc9_fu_70_ap_ready,
        ap_idle => grp_dataflow_parent_loop_proc9_fu_70_ap_idle,
        ap_continue => grp_dataflow_parent_loop_proc9_fu_70_ap_continue);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_done_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_done <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
                    ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_done <= ap_const_logic_0;
                elsif ((grp_dataflow_parent_loop_proc9_fu_70_ap_done = ap_const_logic_1)) then 
                    ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_done <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_ready <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
                    ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_ready <= ap_const_logic_0;
                elsif ((grp_dataflow_parent_loop_proc9_fu_70_ap_ready = ap_const_logic_1)) then 
                    ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_ready <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_dataflow_parent_loop_proc9_fu_70_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dataflow_parent_loop_proc9_fu_70_ap_start_reg <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_ready = ap_const_logic_0)) or (not(((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                    grp_dataflow_parent_loop_proc9_fu_70_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_dataflow_parent_loop_proc9_fu_70_ap_ready = ap_const_logic_1)) then 
                    grp_dataflow_parent_loop_proc9_fu_70_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                empty_162_reg_110 <= empty_162_fu_90_p1;
                empty_163_reg_115 <= empty_163_fu_95_p1;
                empty_reg_105 <= empty_fu_85_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ctrl1_reg_empty_n, ctrl2_reg_empty_n, layer1_reg_empty_n, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, ctrl1_reg_empty_n, ctrl2_reg_empty_n, layer1_reg_empty_n)
    begin
        if (((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state2_on_subcall_done)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, ctrl1_reg_empty_n, ctrl2_reg_empty_n, layer1_reg_empty_n)
    begin
                ap_block_state1 <= ((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state1_ignore_call12_assign_proc : process(ap_start, ap_done_reg, ctrl1_reg_empty_n, ctrl2_reg_empty_n, layer1_reg_empty_n)
    begin
                ap_block_state1_ignore_call12 <= ((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_on_subcall_done_assign_proc : process(ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_ready, ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_ready and ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_done) = ap_const_logic_0);
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_done <= (grp_dataflow_parent_loop_proc9_fu_70_ap_done or ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_done);
    ap_sync_grp_dataflow_parent_loop_proc9_fu_70_ap_ready <= (grp_dataflow_parent_loop_proc9_fu_70_ap_ready or ap_sync_reg_grp_dataflow_parent_loop_proc9_fu_70_ap_ready);

    c_fft_col_op_st_read_assign_proc : process(grp_dataflow_parent_loop_proc9_fu_70_c_fft_col_op_st_read, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_fft_col_op_st_read <= grp_dataflow_parent_loop_proc9_fu_70_c_fft_col_op_st_read;
        else 
            c_fft_col_op_st_read <= ap_const_logic_0;
        end if; 
    end process;


    ctrl1_reg_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ctrl1_reg_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ctrl1_reg_blk_n <= ctrl1_reg_empty_n;
        else 
            ctrl1_reg_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ctrl1_reg_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ctrl1_reg_empty_n, ctrl2_reg_empty_n, layer1_reg_empty_n)
    begin
        if ((not(((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ctrl1_reg_read <= ap_const_logic_1;
        else 
            ctrl1_reg_read <= ap_const_logic_0;
        end if; 
    end process;


    ctrl2_reg_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ctrl2_reg_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ctrl2_reg_blk_n <= ctrl2_reg_empty_n;
        else 
            ctrl2_reg_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ctrl2_reg_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ctrl1_reg_empty_n, ctrl2_reg_empty_n, layer1_reg_empty_n)
    begin
        if ((not(((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ctrl2_reg_read <= ap_const_logic_1;
        else 
            ctrl2_reg_read <= ap_const_logic_0;
        end if; 
    end process;

    empty_162_fu_90_p1 <= layer1_reg_dout(16 - 1 downto 0);
    empty_163_fu_95_p1 <= ctrl2_reg_dout(8 - 1 downto 0);
    empty_fu_85_p1 <= ctrl1_reg_dout(8 - 1 downto 0);

    grp_dataflow_parent_loop_proc9_fu_70_ap_continue_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
            grp_dataflow_parent_loop_proc9_fu_70_ap_continue <= ap_const_logic_1;
        else 
            grp_dataflow_parent_loop_proc9_fu_70_ap_continue <= ap_const_logic_0;
        end if; 
    end process;

    grp_dataflow_parent_loop_proc9_fu_70_ap_start <= grp_dataflow_parent_loop_proc9_fu_70_ap_start_reg;

    layer1_reg_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, layer1_reg_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer1_reg_blk_n <= layer1_reg_empty_n;
        else 
            layer1_reg_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    layer1_reg_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ctrl1_reg_empty_n, ctrl2_reg_empty_n, layer1_reg_empty_n)
    begin
        if ((not(((layer1_reg_empty_n = ap_const_logic_0) or (ctrl2_reg_empty_n = ap_const_logic_0) or (ctrl1_reg_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer1_reg_read <= ap_const_logic_1;
        else 
            layer1_reg_read <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_ARADDR <= ap_const_lv64_0;
    m_axi_gmem_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_ARID <= ap_const_lv1_0;
    m_axi_gmem_ARLEN <= ap_const_lv32_0;
    m_axi_gmem_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_ARUSER <= ap_const_lv1_0;
    m_axi_gmem_ARVALID <= ap_const_logic_0;
    m_axi_gmem_AWADDR <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWADDR;
    m_axi_gmem_AWBURST <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWBURST;
    m_axi_gmem_AWCACHE <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWCACHE;
    m_axi_gmem_AWID <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWID;
    m_axi_gmem_AWLEN <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWLEN;
    m_axi_gmem_AWLOCK <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWLOCK;
    m_axi_gmem_AWPROT <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWPROT;
    m_axi_gmem_AWQOS <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWQOS;
    m_axi_gmem_AWREGION <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWREGION;
    m_axi_gmem_AWSIZE <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWSIZE;
    m_axi_gmem_AWUSER <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWUSER;

    m_axi_gmem_AWVALID_assign_proc : process(ap_CS_fsm_state1, grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWVALID, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_gmem_AWVALID <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_AWVALID;
        else 
            m_axi_gmem_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_gmem_BREADY_assign_proc : process(ap_CS_fsm_state1, grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_BREADY, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_gmem_BREADY <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_BREADY;
        else 
            m_axi_gmem_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_RREADY <= ap_const_logic_0;
    m_axi_gmem_WDATA <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WDATA;
    m_axi_gmem_WID <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WID;
    m_axi_gmem_WLAST <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WLAST;
    m_axi_gmem_WSTRB <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WSTRB;
    m_axi_gmem_WUSER <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WUSER;

    m_axi_gmem_WVALID_assign_proc : process(ap_CS_fsm_state1, grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WVALID, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_gmem_WVALID <= grp_dataflow_parent_loop_proc9_fu_70_m_axi_gmem_WVALID;
        else 
            m_axi_gmem_WVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
