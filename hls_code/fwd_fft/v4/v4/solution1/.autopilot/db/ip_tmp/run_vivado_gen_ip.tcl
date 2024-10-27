create_project prj -part xczu7cg-fbvb900-1-i -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/shine/Desktop/fft_story/hls/fwd_fft/v4/v4/solution1/syn/verilog/fwd_fft_hmul_16ns_16ns_16_4_max_dsp_1_ip.tcl"
source "/home/shine/Desktop/fft_story/hls/fwd_fft/v4/v4/solution1/syn/verilog/fwd_fft_hadd_16ns_16ns_16_5_full_dsp_1_ip.tcl"
source "/home/shine/Desktop/fft_story/hls/fwd_fft/v4/v4/solution1/syn/verilog/fwd_fft_hsub_16ns_16ns_16_5_full_dsp_1_ip.tcl"
