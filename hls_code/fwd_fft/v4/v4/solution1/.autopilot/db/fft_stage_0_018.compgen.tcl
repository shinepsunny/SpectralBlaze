# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 98
set hasByteEnable 0
set MemName fwd_fft_fft_stage_0_018_w_M_real40
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 192
set AddrWd 8
set impl_style distributed
set TrueReset 0
set IsROM 1
set ROMData { "0011110000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0011110000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0011110000000000" "0011100110101000" "0000000000000000" "1011100110101000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0011110000000000" "0011101101100100" "0011100110101000" "0011011000011111" "0000000000000000" "1011011000011111" "1011100110101000" "1011101101100100" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0011110000000000" "0011101111011001" "0011101101100100" "0011101010100111" "0011100110101000" "0011100001110010" "0011011000011111" "0011001000111110" "0000000000000000" "1011001000111110" "1011011000011111" "1011100001110010" "1011100110101000" "1011101010100111" "1011101101100100" "1011101111011001" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0011110000000000" "0011101111110110" "0011101111011001" "0011101110101000" "0011101101100100" "0011101100001110" "0011101010100111" "0011101000101111" "0011100110101000" "0011100100010011" "0011100001110010" "0011011110001011" "0011011000011111" "0011010010100101" "0011001000111110" "0010111001000110" "0000000000000000" "1010111001000110" "1011001000111110" "1011010010100101" "1011011000011111" "1011011110001011" "1011100001110010" "1011100100010011" "1011100110101000" "1011101000101111" "1011101010100111" "1011101100001110" "1011101101100100" "1011101110101000" "1011101111011001" "1011101111110110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 0.79
set ClkPeriod 5
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom_np} IMPL {lutram} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM_nP_LUTRAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 99
set hasByteEnable 0
set MemName fwd_fft_fft_stage_0_018_w_M_imag29
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 192
set AddrWd 8
set impl_style distributed
set TrueReset 0
set IsROM 1
set ROMData { "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "1011110000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "1011100110101000" "1011110000000000" "1011100110101000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "1011011000011111" "1011100110101000" "1011101101100100" "1011110000000000" "1011101101100100" "1011100110101000" "1011011000011111" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "1011001000111110" "1011011000011111" "1011100001110010" "1011100110101000" "1011101010100111" "1011101101100100" "1011101111011001" "1011110000000000" "1011101111011001" "1011101101100100" "1011101010100111" "1011100110101000" "1011100001110010" "1011011000011111" "1011001000111110" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "0000000000000000" "1010111001000110" "1011001000111110" "1011010010100101" "1011011000011111" "1011011110001011" "1011100001110010" "1011100100010011" "1011100110101000" "1011101000101111" "1011101010100111" "1011101100001110" "1011101101100100" "1011101110101000" "1011101111011001" "1011101111110110" "1011110000000000" "1011101111110110" "1011101111011001" "1011101110101000" "1011101101100100" "1011101100001110" "1011101010100111" "1011101000101111" "1011100110101000" "1011100100010011" "1011100001110010" "1011011110001011" "1011011000011111" "1011010010100101" "1011001000111110" "1010111001000110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 0.79
set ClkPeriod 5
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom_np} IMPL {lutram} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM_nP_LUTRAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name IN_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename IN_r \
    op interface \
    ports { IN_r_address0 { O 6 vector } IN_r_ce0 { O 1 bit } IN_r_q0 { I 32 vector } IN_r_address1 { O 6 vector } IN_r_ce1 { O 1 bit } IN_r_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'IN_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name OUT_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_r \
    op interface \
    ports { OUT_r_address0 { O 6 vector } OUT_r_ce0 { O 1 bit } OUT_r_we0 { O 1 bit } OUT_r_d0 { O 32 vector } OUT_r_address1 { O 6 vector } OUT_r_ce1 { O 1 bit } OUT_r_we1 { O 1 bit } OUT_r_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


