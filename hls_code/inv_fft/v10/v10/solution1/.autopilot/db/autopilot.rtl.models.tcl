set SynModuleInfo {
  {SRCNAME entry_proc21 MODELNAME entry_proc21 RTLNAME IFFT_AP_entry_proc21}
  {SRCNAME Block_entry6_proc MODELNAME Block_entry6_proc RTLNAME IFFT_AP_Block_entry6_proc}
  {SRCNAME entry_proc20 MODELNAME entry_proc20 RTLNAME IFFT_AP_entry_proc20}
  {SRCNAME rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2 MODELNAME rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2 RTLNAME IFFT_AP_rd_data_Pipeline_VITIS_LOOP_157_1_VITIS_LOOP_160_2
    SUBMODULES {
      {MODELNAME IFFT_AP_flow_control_loop_pipe_sequential_init RTLNAME IFFT_AP_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME IFFT_AP_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME rd_data MODELNAME rd_data RTLNAME IFFT_AP_rd_data
    SUBMODULES {
      {MODELNAME IFFT_AP_mul_31ns_8ns_32_2_1 RTLNAME IFFT_AP_mul_31ns_8ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_mul_8ns_31ns_38_2_1 RTLNAME IFFT_AP_mul_8ns_31ns_38_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_mul_31ns_9s_32_2_1 RTLNAME IFFT_AP_mul_31ns_9s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME collect_input_Pipeline_VITIS_LOOP_91_2 MODELNAME collect_input_Pipeline_VITIS_LOOP_91_2 RTLNAME IFFT_AP_collect_input_Pipeline_VITIS_LOOP_91_2}
  {SRCNAME collect_input MODELNAME collect_input RTLNAME IFFT_AP_collect_input}
  {SRCNAME fft_stage_Pipeline_SKIP_X_SKIP_Y MODELNAME fft_stage_Pipeline_SKIP_X_SKIP_Y RTLNAME IFFT_AP_fft_stage_Pipeline_SKIP_X_SKIP_Y
    SUBMODULES {
      {MODELNAME IFFT_AP_hadd_16ns_16ns_16_5_full_dsp_1 RTLNAME IFFT_AP_hadd_16ns_16ns_16_5_full_dsp_1 BINDTYPE op TYPE hadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_hsub_16ns_16ns_16_5_full_dsp_1 RTLNAME IFFT_AP_hsub_16ns_16ns_16_5_full_dsp_1 BINDTYPE op TYPE hsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_hmul_16ns_16ns_16_4_max_dsp_1 RTLNAME IFFT_AP_hmul_16ns_16ns_16_4_max_dsp_1 BINDTYPE op TYPE hmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage_Pipeline_VITIS_LOOP_66_2 MODELNAME fft_stage_Pipeline_VITIS_LOOP_66_2 RTLNAME IFFT_AP_fft_stage_Pipeline_VITIS_LOOP_66_2}
  {SRCNAME fft_stage MODELNAME fft_stage RTLNAME IFFT_AP_fft_stage
    SUBMODULES {
      {MODELNAME IFFT_AP_mul_7ns_7ns_14_1_1 RTLNAME IFFT_AP_mul_7ns_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.1_Pipeline_SKIP_X_SKIP_Y MODELNAME fft_stage_1_Pipeline_SKIP_X_SKIP_Y RTLNAME IFFT_AP_fft_stage_1_Pipeline_SKIP_X_SKIP_Y
    SUBMODULES {
      {MODELNAME IFFT_AP_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_w_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_w_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_w_10_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_1_Pipeline_SKIP_X_SKIP_Y_w_10_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.1_Pipeline_VITIS_LOOP_66_2 MODELNAME fft_stage_1_Pipeline_VITIS_LOOP_66_2 RTLNAME IFFT_AP_fft_stage_1_Pipeline_VITIS_LOOP_66_2}
  {SRCNAME fft_stage.1 MODELNAME fft_stage_1 RTLNAME IFFT_AP_fft_stage_1}
  {SRCNAME fft_stage.2_Pipeline_VITIS_LOOP_66_2 MODELNAME fft_stage_2_Pipeline_VITIS_LOOP_66_2 RTLNAME IFFT_AP_fft_stage_2_Pipeline_VITIS_LOOP_66_2}
  {SRCNAME fft_stage.2_Pipeline_SKIP_X_SKIP_Y MODELNAME fft_stage_2_Pipeline_SKIP_X_SKIP_Y RTLNAME IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y
    SUBMODULES {
      {MODELNAME IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_w_6_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_w_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_w_11_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_w_11_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.2 MODELNAME fft_stage_2 RTLNAME IFFT_AP_fft_stage_2}
  {SRCNAME fft_stage.3_Pipeline_SKIP_X_SKIP_Y MODELNAME fft_stage_3_Pipeline_SKIP_X_SKIP_Y RTLNAME IFFT_AP_fft_stage_3_Pipeline_SKIP_X_SKIP_Y
    SUBMODULES {
      {MODELNAME IFFT_AP_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_w_7_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_w_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_w_12_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_3_Pipeline_SKIP_X_SKIP_Y_w_12_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.3_Pipeline_VITIS_LOOP_66_2 MODELNAME fft_stage_3_Pipeline_VITIS_LOOP_66_2 RTLNAME IFFT_AP_fft_stage_3_Pipeline_VITIS_LOOP_66_2}
  {SRCNAME fft_stage.3 MODELNAME fft_stage_3 RTLNAME IFFT_AP_fft_stage_3}
  {SRCNAME fft_stage.4_Pipeline_VITIS_LOOP_66_2 MODELNAME fft_stage_4_Pipeline_VITIS_LOOP_66_2 RTLNAME IFFT_AP_fft_stage_4_Pipeline_VITIS_LOOP_66_2}
  {SRCNAME fft_stage.4_Pipeline_SKIP_X_SKIP_Y MODELNAME fft_stage_4_Pipeline_SKIP_X_SKIP_Y RTLNAME IFFT_AP_fft_stage_4_Pipeline_SKIP_X_SKIP_Y
    SUBMODULES {
      {MODELNAME IFFT_AP_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_w_8_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_w_8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_w_13_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_w_13_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.4 MODELNAME fft_stage_4 RTLNAME IFFT_AP_fft_stage_4}
  {SRCNAME fft_stage.5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2 MODELNAME fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2 RTLNAME IFFT_AP_fft_stage_5_Pipeline_VITIS_LOOP_63_1_VITIS_LOOP_66_2}
  {SRCNAME fft_stage.5_Pipeline_SKIP_X_SKIP_Y MODELNAME fft_stage_5_Pipeline_SKIP_X_SKIP_Y RTLNAME IFFT_AP_fft_stage_5_Pipeline_SKIP_X_SKIP_Y
    SUBMODULES {
      {MODELNAME IFFT_AP_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_w_9_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_w_9_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_w_14_ROM_AUTO_1R RTLNAME IFFT_AP_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_w_14_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.5 MODELNAME fft_stage_5 RTLNAME IFFT_AP_fft_stage_5
    SUBMODULES {
      {MODELNAME IFFT_AP_mul_8ns_7ns_70_1_1 RTLNAME IFFT_AP_mul_8ns_7ns_70_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pool_Pipeline_VITIS_LOOP_178_2 MODELNAME pool_Pipeline_VITIS_LOOP_178_2 RTLNAME IFFT_AP_pool_Pipeline_VITIS_LOOP_178_2
    SUBMODULES {
      {MODELNAME IFFT_AP_hdiv_16ns_16ns_16_7_no_dsp_1 RTLNAME IFFT_AP_hdiv_16ns_16ns_16_7_no_dsp_1 BINDTYPE op TYPE hdiv IMPL fabric LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_hcmp_16ns_16ns_1_2_no_dsp_1 RTLNAME IFFT_AP_hcmp_16ns_16ns_1_2_no_dsp_1 BINDTYPE op TYPE hcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_mux_21_16_1_1 RTLNAME IFFT_AP_mux_21_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pool MODELNAME pool RTLNAME IFFT_AP_pool
    SUBMODULES {
      {MODELNAME IFFT_AP_uitofp_32ns_32_7_no_dsp_1 RTLNAME IFFT_AP_uitofp_32ns_32_7_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_sptohp_32ns_16_2_no_dsp_1 RTLNAME IFFT_AP_sptohp_32ns_16_2_no_dsp_1 BINDTYPE op TYPE sptohp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2 MODELNAME push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2 RTLNAME IFFT_AP_push_out_Pipeline_VITIS_LOOP_136_1_VITIS_LOOP_139_2}
  {SRCNAME push_out MODELNAME push_out RTLNAME IFFT_AP_push_out
    SUBMODULES {
      {MODELNAME IFFT_AP_udiv_8ns_8ns_8_12_seq_1 RTLNAME IFFT_AP_udiv_8ns_8ns_8_12_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_mul_8ns_8ns_71_1_1 RTLNAME IFFT_AP_mul_8ns_8ns_71_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_VITIS_LOOP_208_1 MODELNAME dataflow_in_loop_VITIS_LOOP_208_1 RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1
    SUBMODULES {
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_input_data2_RAM_T2P_BRAM_1R1W_memcore RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_input_data2_RAM_T2P_BRAM_1R1W_memcore BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_input_data2_RAM_T2P_BRAM_1R1W RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_input_data2_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_6_0_08_RAM_T2P_BRAM_1R1W_memcore RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_6_0_08_RAM_T2P_BRAM_1R1W_memcore BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_6_0_08_RAM_T2P_BRAM_1R1W RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_6_0_08_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_712_RAM_T2P_BRAM_1R1W_memcore RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_712_RAM_T2P_BRAM_1R1W_memcore BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_712_RAM_T2P_BRAM_1R1W RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_208_1_out_data_712_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_fifo_w32_d10_S RTLNAME IFFT_AP_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME actp_regp_c9_U}
      {MODELNAME IFFT_AP_fifo_w128_d2_S RTLNAME IFFT_AP_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_st1_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c8_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c7_channel8_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c6_channel7_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c5_channel6_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c4_channel5_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c3_channel4_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c2_channel3_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c1_channel2_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_regp_c_channel_U}
      {MODELNAME IFFT_AP_fifo_w32_d2_S RTLNAME IFFT_AP_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME actp_regp_c_channel_U}
      {MODELNAME IFFT_AP_start_for_collect_input_U0 RTLNAME IFFT_AP_start_for_collect_input_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_collect_input_U0_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME IFFT_AP_dataflow_parent_loop_proc}
  {SRCNAME vr_ifft MODELNAME vr_ifft RTLNAME IFFT_AP_vr_ifft
    SUBMODULES {
      {MODELNAME IFFT_AP_mul_8ns_8ns_16_1_1 RTLNAME IFFT_AP_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_mul_mul_16ns_16ns_32_4_1 RTLNAME IFFT_AP_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME IFFT_AP_entry_proc}
  {SRCNAME buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3 MODELNAME buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3 RTLNAME IFFT_AP_buffer_Pipeline_VITIS_LOOP_304_1_VITIS_LOOP_307_2_VITIS_LOOP_310_3}
  {SRCNAME buffer MODELNAME buffer_r RTLNAME IFFT_AP_buffer_r
    SUBMODULES {
      {MODELNAME IFFT_AP_mul_8ns_8ns_39_1_1 RTLNAME IFFT_AP_mul_8ns_8ns_39_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_mul_8ns_16ns_47_1_1 RTLNAME IFFT_AP_mul_8ns_16ns_47_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_Pipeline_VITIS_LOOP_273_2 MODELNAME write_Pipeline_VITIS_LOOP_273_2 RTLNAME IFFT_AP_write_Pipeline_VITIS_LOOP_273_2}
  {SRCNAME write_Pipeline_VITIS_LOOP_286_5 MODELNAME write_Pipeline_VITIS_LOOP_286_5 RTLNAME IFFT_AP_write_Pipeline_VITIS_LOOP_286_5}
  {SRCNAME write MODELNAME write_r RTLNAME IFFT_AP_write_r
    SUBMODULES {
      {MODELNAME IFFT_AP_udiv_16ns_8ns_16_20_seq_1 RTLNAME IFFT_AP_udiv_16ns_8ns_16_20_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 19 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_VITIS_LOOP_332_1 MODELNAME dataflow_in_loop_VITIS_LOOP_332_1 RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_332_1
    SUBMODULES {
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_332_1_buffer1_RAM_AUTO_1R1W_memcore RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_332_1_buffer1_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_332_1_buffer1_RAM_AUTO_1R1W RTLNAME IFFT_AP_dataflow_in_loop_VITIS_LOOP_332_1_buffer1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IFFT_AP_fifo_w64_d3_S RTLNAME IFFT_AP_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out1_c_U}
      {MODELNAME IFFT_AP_fifo_w64_d3_S RTLNAME IFFT_AP_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out2_c_U}
      {MODELNAME IFFT_AP_fifo_w16_d3_S RTLNAME IFFT_AP_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_reg_ifs_c_U}
      {MODELNAME IFFT_AP_fifo_w8_d2_S RTLNAME IFFT_AP_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ctrl1_reg_ls_c_channel_U}
      {MODELNAME IFFT_AP_fifo_w8_d2_S RTLNAME IFFT_AP_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME actp_reg_pool_size_c_channel_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc18 MODELNAME dataflow_parent_loop_proc18 RTLNAME IFFT_AP_dataflow_parent_loop_proc18}
  {SRCNAME buffer_write MODELNAME buffer_write RTLNAME IFFT_AP_buffer_write
    SUBMODULES {
      {MODELNAME IFFT_AP_mul_mul_16ns_8ns_24_4_1 RTLNAME IFFT_AP_mul_mul_16ns_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME IFFT_AP MODELNAME IFFT_AP RTLNAME IFFT_AP IS_TOP 1
    SUBMODULES {
      {MODELNAME IFFT_AP_fifo_w64_d3_S_x RTLNAME IFFT_AP_fifo_w64_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out1_c_U}
      {MODELNAME IFFT_AP_fifo_w64_d3_S_x RTLNAME IFFT_AP_fifo_w64_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out2_c_U}
      {MODELNAME IFFT_AP_fifo_w8_d2_S_x RTLNAME IFFT_AP_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME trunc_ln372_loc_channel_U}
      {MODELNAME IFFT_AP_fifo_w8_d2_S_x RTLNAME IFFT_AP_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME trunc_ln372_1_loc_channel_U}
      {MODELNAME IFFT_AP_fifo_w16_d2_S RTLNAME IFFT_AP_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME trunc_ln372_2_loc_channel_U}
      {MODELNAME IFFT_AP_fifo_w16_d2_S RTLNAME IFFT_AP_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME trunc_ln372_3_loc_channel_U}
      {MODELNAME IFFT_AP_fifo_w8_d2_S_x RTLNAME IFFT_AP_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME trunc_ln372_4_loc_channel_U}
      {MODELNAME IFFT_AP_fifo_w64_d2_S RTLNAME IFFT_AP_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_st_U}
      {MODELNAME IFFT_AP_gmem_m_axi RTLNAME IFFT_AP_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME IFFT_AP_ctrl_bus_s_axi RTLNAME IFFT_AP_ctrl_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
