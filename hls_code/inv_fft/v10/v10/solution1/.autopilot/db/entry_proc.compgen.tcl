# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name out1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out1 \
    op interface \
    ports { out1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name out1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out1_c \
    op interface \
    ports { out1_c_din { O 64 vector } out1_c_num_data_valid { I 3 vector } out1_c_fifo_cap { I 3 vector } out1_c_full_n { I 1 bit } out1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name out2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out2 \
    op interface \
    ports { out2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name out2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out2_c \
    op interface \
    ports { out2_c_din { O 64 vector } out2_c_num_data_valid { I 3 vector } out2_c_fifo_cap { I 3 vector } out2_c_full_n { I 1 bit } out2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name layer2_reg_ifs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer2_reg_ifs \
    op interface \
    ports { layer2_reg_ifs { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name layer2_reg_ifs_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_layer2_reg_ifs_c \
    op interface \
    ports { layer2_reg_ifs_c_din { O 16 vector } layer2_reg_ifs_c_num_data_valid { I 3 vector } layer2_reg_ifs_c_fifo_cap { I 3 vector } layer2_reg_ifs_c_full_n { I 1 bit } layer2_reg_ifs_c_write { O 1 bit } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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

