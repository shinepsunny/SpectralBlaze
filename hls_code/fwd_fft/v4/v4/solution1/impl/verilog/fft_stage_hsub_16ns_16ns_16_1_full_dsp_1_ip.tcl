# BEGIN Vivado Commands 
set vivado_ver [version -short]
set fpo_ver 7.1
if {[regexp -nocase {2015\.1.*} $vivado_ver match]} {
    set fpo_ver 7.0
}
create_ip -name floating_point -version $fpo_ver -vendor xilinx.com -library ip -module_name fft_stage_hsub_16ns_16ns_16_1_full_dsp_1_ip
# BEGIN Vivado Commands 
# BEGIN Vivado Parameters
set_property -dict [list CONFIG.a_precision_type Half \
                          CONFIG.a_tuser_width 1 \
                          CONFIG.add_sub_value Subtract \
                          CONFIG.b_tuser_width 1 \
                          CONFIG.c_a_exponent_width 5 \
                          CONFIG.c_a_fraction_width 11 \
                          CONFIG.c_compare_operation Programmable \
                          CONFIG.c_has_divide_by_zero false \
                          CONFIG.c_has_invalid_op false \
                          CONFIG.c_has_overflow false \
                          CONFIG.c_has_underflow false \
                          CONFIG.c_latency 0 \
                          CONFIG.c_mult_usage Full_Usage \
                          CONFIG.c_optimization Speed_Optimized \
                          CONFIG.c_rate 1 \
                          CONFIG.c_result_exponent_width 5 \
                          CONFIG.c_result_fraction_width 11 \
                          CONFIG.component_name fft_stage_hsub_16ns_16ns_16_1_full_dsp_1_ip \
                          CONFIG.flow_control NonBlocking \
                          CONFIG.has_a_tlast false \
                          CONFIG.has_a_tuser false \
                          CONFIG.has_aclken false \
                          CONFIG.has_aresetn false \
                          CONFIG.has_b_tlast false \
                          CONFIG.has_b_tuser false \
                          CONFIG.has_operation_tlast false \
                          CONFIG.has_operation_tuser false \
                          CONFIG.has_result_tready false \
                          CONFIG.maximum_latency false \
                          CONFIG.operation_tuser_width 1 \
                          CONFIG.operation_type Add_Subtract \
                          CONFIG.result_precision_type Half \
                          CONFIG.result_tlast_behv Null] -objects [get_ips fft_stage_hsub_16ns_16ns_16_1_full_dsp_1_ip] -quiet
# END Vivado Parameters
set_property generate_synth_checkpoint false [get_files fft_stage_hsub_16ns_16ns_16_1_full_dsp_1_ip.xci]
generate_target {synthesis simulation} [get_files fft_stage_hsub_16ns_16ns_16_1_full_dsp_1_ip.xci]