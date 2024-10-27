create_ip -vlnv xilinx.com:ip:xfft -module_name fwd_fft_fft_syn_param1_32_32_16_1_1_s_core_ip
set_property -dict [list \
    CONFIG.aclken {true} \
    CONFIG.aresetn {true} \
    CONFIG.butterfly_type {use_xtremedsp_slices} \
    CONFIG.channels {1} \
    CONFIG.complex_mult_type {use_mults_performance} \
    CONFIG.cyclic_prefix_insertion {0} \
    CONFIG.data_format {floating_point} \
    CONFIG.implementation_options {pipelined_streaming_io} \
    CONFIG.input_width {32} \
    CONFIG.memory_options_data {distributed_ram} \
    CONFIG.memory_options_hybrid {0} \
    CONFIG.memory_options_phase_factors {distributed_ram} \
    CONFIG.memory_options_reorder {block_ram} \
    CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {0} \
    CONFIG.output_ordering {natural_order} \
    CONFIG.ovflo {1} \
    CONFIG.phase_factor_width {25} \
    CONFIG.rounding_modes {truncation} \
    CONFIG.run_time_configurable_transform_length {1} \
    CONFIG.scaling_options {scaled} \
    CONFIG.target_clock_frequency {200} \
    CONFIG.throttle_scheme {nonrealtime} \
    CONFIG.transform_length {16} \
    CONFIG.xk_index {0} \
] -objects [get_ips fwd_fft_fft_syn_param1_32_32_16_1_1_s_core_ip]
set_property generate_synth_checkpoint false [get_files fwd_fft_fft_syn_param1_32_32_16_1_1_s_core_ip.xci]
generate_target {synthesis simulation} [get_files fwd_fft_fft_syn_param1_32_32_16_1_1_s_core_ip.xci]
