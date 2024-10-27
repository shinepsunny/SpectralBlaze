# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ctrl_bus {
in_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
out1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
out2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
ctrl1_regp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
ctrl2_regp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
layer1_regp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 68
	offset_end 75
}
layer2_regp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 76
	offset_end 83
}
actp_regp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 84
	offset_end 91
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict ctrl_bus $port_ctrl_bus


