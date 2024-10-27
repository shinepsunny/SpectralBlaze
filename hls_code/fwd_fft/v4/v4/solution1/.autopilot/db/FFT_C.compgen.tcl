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
    id 432 \
    name c_row_op_trans_st \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_row_op_trans_st \
    op interface \
    ports { c_row_op_trans_st_dout { I 32 vector } c_row_op_trans_st_empty_n { I 1 bit } c_row_op_trans_st_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name c_fft_col_op_st \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_fft_col_op_st \
    op interface \
    ports { c_fft_col_op_st_din { O 32 vector } c_fft_col_op_st_full_n { I 1 bit } c_fft_col_op_st_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name ctrl1_reg \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctrl1_reg \
    op interface \
    ports { ctrl1_reg_dout { I 32 vector } ctrl1_reg_empty_n { I 1 bit } ctrl1_reg_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name ctrl2_reg \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctrl2_reg \
    op interface \
    ports { ctrl2_reg_dout { I 32 vector } ctrl2_reg_empty_n { I 1 bit } ctrl2_reg_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name layer1_reg \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer1_reg \
    op interface \
    ports { layer1_reg_dout { I 32 vector } layer1_reg_empty_n { I 1 bit } layer1_reg_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name ctrl1_reg_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ctrl1_reg_c \
    op interface \
    ports { ctrl1_reg_c_din { O 32 vector } ctrl1_reg_c_full_n { I 1 bit } ctrl1_reg_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name ctrl2_reg_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ctrl2_reg_c \
    op interface \
    ports { ctrl2_reg_c_din { O 32 vector } ctrl2_reg_c_full_n { I 1 bit } ctrl2_reg_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name layer1_reg_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_layer1_reg_c \
    op interface \
    ports { layer1_reg_c_din { O 32 vector } layer1_reg_c_full_n { I 1 bit } layer1_reg_c_write { O 1 bit } } \
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


