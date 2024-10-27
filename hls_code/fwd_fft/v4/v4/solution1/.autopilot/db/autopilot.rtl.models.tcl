set SynModuleInfo {
  {SRCNAME entry_proc47 MODELNAME entry_proc47 RTLNAME fwd_fft_entry_proc47}
  {SRCNAME Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4 MODELNAME Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4 RTLNAME fwd_fft_Mem_Patch_Gen_Pipeline_VITIS_LOOP_210_4
    SUBMODULES {
      {MODELNAME fwd_fft_flow_control_loop_pipe_sequential_init RTLNAME fwd_fft_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fwd_fft_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6 MODELNAME Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6 RTLNAME fwd_fft_Mem_Patch_Gen_Pipeline_VITIS_LOOP_220_6}
  {SRCNAME Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9 MODELNAME Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9 RTLNAME fwd_fft_Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9
    SUBMODULES {
      {MODELNAME fwd_fft_mac_muladd_8ns_8ns_8ns_16_4_1 RTLNAME fwd_fft_mac_muladd_8ns_8ns_8ns_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mem_Patch_Gen MODELNAME Mem_Patch_Gen RTLNAME fwd_fft_Mem_Patch_Gen
    SUBMODULES {
      {MODELNAME fwd_fft_mul_8ns_8ns_16_1_1 RTLNAME fwd_fft_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_mul_mul_8ns_16ns_24_4_1 RTLNAME fwd_fft_mul_mul_8ns_16ns_24_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_mul_mul_16ns_8ns_24_4_1 RTLNAME fwd_fft_mul_mul_16ns_8ns_24_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_Mem_Patch_Gen_burst_buffer1 RTLNAME fwd_fft_Mem_Patch_Gen_burst_buffer1 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5 MODELNAME Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5 RTLNAME fwd_fft_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5}
  {SRCNAME Col_Wise_Overlap_Gen MODELNAME Col_Wise_Overlap_Gen RTLNAME fwd_fft_Col_Wise_Overlap_Gen
    SUBMODULES {
      {MODELNAME fwd_fft_mul_16ns_32ns_48_2_1 RTLNAME fwd_fft_mul_16ns_32ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_mul_mul_8ns_24ns_32_4_1 RTLNAME fwd_fft_mul_mul_8ns_24ns_32_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_fifo_w32_d620_A RTLNAME fwd_fft_fifo_w32_d620_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME stream_2_buf17 MODELNAME stream_2_buf17 RTLNAME fwd_fft_stream_2_buf17
    SUBMODULES {
      {MODELNAME fwd_fft_flow_control_loop_pipe RTLNAME fwd_fft_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fwd_fft_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME fft_stage.0.018_Pipeline_SKIP_X MODELNAME fft_stage_0_018_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_0_018_Pipeline_SKIP_X
    SUBMODULES {
      {MODELNAME fwd_fft_hadd_16ns_16ns_16_5_full_dsp_1 RTLNAME fwd_fft_hadd_16ns_16ns_16_5_full_dsp_1 BINDTYPE op TYPE hadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_hsub_16ns_16ns_16_5_full_dsp_1 RTLNAME fwd_fft_hsub_16ns_16ns_16_5_full_dsp_1 BINDTYPE op TYPE hsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_hmul_16ns_16ns_16_4_max_dsp_1 RTLNAME fwd_fft_hmul_16ns_16ns_16_4_max_dsp_1 BINDTYPE op TYPE hmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.0.018_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_0_018_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_0_018_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.0.018 MODELNAME fft_stage_0_018 RTLNAME fwd_fft_fft_stage_0_018
    SUBMODULES {
      {MODELNAME fwd_fft_fft_stage_0_018_w_M_real40 RTLNAME fwd_fft_fft_stage_0_018_w_M_real40 BINDTYPE storage TYPE rom_np IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_fft_stage_0_018_w_M_imag29 RTLNAME fwd_fft_fft_stage_0_018_w_M_imag29 BINDTYPE storage TYPE rom_np IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.1.019_Pipeline_SKIP_X MODELNAME fft_stage_1_019_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_1_019_Pipeline_SKIP_X}
  {SRCNAME fft_stage.1.019_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_1_019_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_1_019_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.1.019 MODELNAME fft_stage_1_019 RTLNAME fwd_fft_fft_stage_1_019}
  {SRCNAME fft_stage.2.020_Pipeline_SKIP_X MODELNAME fft_stage_2_020_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_2_020_Pipeline_SKIP_X}
  {SRCNAME fft_stage.2.020_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_2_020_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_2_020_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.2.020 MODELNAME fft_stage_2_020 RTLNAME fwd_fft_fft_stage_2_020}
  {SRCNAME fft_stage.3.021_Pipeline_SKIP_X MODELNAME fft_stage_3_021_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_3_021_Pipeline_SKIP_X}
  {SRCNAME fft_stage.3.021_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_3_021_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_3_021_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.3.021 MODELNAME fft_stage_3_021 RTLNAME fwd_fft_fft_stage_3_021}
  {SRCNAME fft_stage.4.022_Pipeline_SKIP_X MODELNAME fft_stage_4_022_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_4_022_Pipeline_SKIP_X}
  {SRCNAME fft_stage.4.022_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_4_022_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_4_022_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.4.022 MODELNAME fft_stage_4_022 RTLNAME fwd_fft_fft_stage_4_022}
  {SRCNAME fft_stage.5.023_Pipeline_SKIP_X MODELNAME fft_stage_5_023_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_5_023_Pipeline_SKIP_X}
  {SRCNAME fft_stage.5.023_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_5_023_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_5_023_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.5.023 MODELNAME fft_stage_5_023 RTLNAME fwd_fft_fft_stage_5_023}
  {SRCNAME buf_2_stream24 MODELNAME buf_2_stream24 RTLNAME fwd_fft_buf_2_stream24}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_91_1 MODELNAME dataflow_in_loop_VITIS_LOOP_91_1 RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1
    SUBMODULES {
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_input_data1_memcore RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_input_data1_memcore BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_input_data1 RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_input_data1 BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2}
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_12_memcore RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_12_memcore BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_12 RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_12 BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2}
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_67_memcore RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_67_memcore BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_67 RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_91_1_out_data_67 BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2}
      {MODELNAME fwd_fft_fifo_w32_d2_S RTLNAME fwd_fft_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_fifo_w16_d2_S RTLNAME fwd_fft_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_fifo_w8_d2_S RTLNAME fwd_fft_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME dataflow_parent_loop_proc11 MODELNAME dataflow_parent_loop_proc11 RTLNAME fwd_fft_dataflow_parent_loop_proc11}
  {SRCNAME FFT_R MODELNAME FFT_R RTLNAME fwd_fft_FFT_R
    SUBMODULES {
      {MODELNAME fwd_fft_mul_mul_24ns_16ns_32_4_1 RTLNAME fwd_fft_mul_mul_24ns_16ns_32_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5 MODELNAME Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5 RTLNAME fwd_fft_Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5}
  {SRCNAME Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7 MODELNAME Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7 RTLNAME fwd_fft_Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7}
  {SRCNAME Row_Wise_Synch MODELNAME Row_Wise_Synch RTLNAME fwd_fft_Row_Wise_Synch
    SUBMODULES {
      {MODELNAME fwd_fft_mul_32ns_8ns_40_2_1 RTLNAME fwd_fft_mul_32ns_8ns_40_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_mul_mul_16ns_16ns_32_4_1 RTLNAME fwd_fft_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_fifo_w32_d2560_A RTLNAME fwd_fft_fifo_w32_d2560_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME ifmap_gen_x MODELNAME ifmap_gen_x RTLNAME fwd_fft_ifmap_gen_x}
  {SRCNAME ifmap_cons_y MODELNAME ifmap_cons_y RTLNAME fwd_fft_ifmap_cons_y}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_442_3 MODELNAME dataflow_in_loop_VITIS_LOOP_442_3 RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_442_3
    SUBMODULES {
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_442_3_ifmap_RF_M_real_memcore RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_442_3_ifmap_RF_M_real_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_442_3_ifmap_RF_M_real RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_442_3_ifmap_RF_M_real BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME fwd_fft_fifo_w8_d2_S_x RTLNAME fwd_fft_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME fwd_fft_dataflow_parent_loop_proc}
  {SRCNAME dataflow_parent_loop_proc14 MODELNAME dataflow_parent_loop_proc14 RTLNAME fwd_fft_dataflow_parent_loop_proc14}
  {SRCNAME dataflow_parent_loop_proc15 MODELNAME dataflow_parent_loop_proc15 RTLNAME fwd_fft_dataflow_parent_loop_proc15}
  {SRCNAME Transpose MODELNAME Transpose RTLNAME fwd_fft_Transpose}
  {SRCNAME stream_2_buf MODELNAME stream_2_buf RTLNAME fwd_fft_stream_2_buf}
  {SRCNAME fft_stage.0.0_Pipeline_SKIP_X MODELNAME fft_stage_0_0_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_0_0_Pipeline_SKIP_X}
  {SRCNAME fft_stage.0.0_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_0_0_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_0_0_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.0.0 MODELNAME fft_stage_0_0 RTLNAME fwd_fft_fft_stage_0_0}
  {SRCNAME fft_stage.1.0_Pipeline_SKIP_X MODELNAME fft_stage_1_0_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_1_0_Pipeline_SKIP_X}
  {SRCNAME fft_stage.1.0_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_1_0_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_1_0_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.1.0 MODELNAME fft_stage_1_0 RTLNAME fwd_fft_fft_stage_1_0}
  {SRCNAME fft_stage.2.0_Pipeline_SKIP_X MODELNAME fft_stage_2_0_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_2_0_Pipeline_SKIP_X}
  {SRCNAME fft_stage.2.0_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_2_0_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_2_0_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.2.0 MODELNAME fft_stage_2_0 RTLNAME fwd_fft_fft_stage_2_0}
  {SRCNAME fft_stage.3.0_Pipeline_SKIP_X MODELNAME fft_stage_3_0_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_3_0_Pipeline_SKIP_X}
  {SRCNAME fft_stage.3.0_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_3_0_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_3_0_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.3.0 MODELNAME fft_stage_3_0 RTLNAME fwd_fft_fft_stage_3_0}
  {SRCNAME fft_stage.4.0_Pipeline_SKIP_X MODELNAME fft_stage_4_0_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_4_0_Pipeline_SKIP_X}
  {SRCNAME fft_stage.4.0_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_4_0_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_4_0_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.4.0 MODELNAME fft_stage_4_0 RTLNAME fwd_fft_fft_stage_4_0}
  {SRCNAME fft_stage.5.0_Pipeline_SKIP_X MODELNAME fft_stage_5_0_Pipeline_SKIP_X RTLNAME fwd_fft_fft_stage_5_0_Pipeline_SKIP_X}
  {SRCNAME fft_stage.5.0_Pipeline_VITIS_LOOP_40_1 MODELNAME fft_stage_5_0_Pipeline_VITIS_LOOP_40_1 RTLNAME fwd_fft_fft_stage_5_0_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME fft_stage.5.0 MODELNAME fft_stage_5_0 RTLNAME fwd_fft_fft_stage_5_0}
  {SRCNAME buf_2_stream MODELNAME buf_2_stream RTLNAME fwd_fft_buf_2_stream}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_139_1 MODELNAME dataflow_in_loop_VITIS_LOOP_139_1 RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_139_1
    SUBMODULES {
      {MODELNAME fwd_fft_fifo_w32_d2_S_x RTLNAME fwd_fft_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_fifo_w16_d2_S_x RTLNAME fwd_fft_fifo_w16_d2_S_x BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_fifo_w8_d2_S_x0 RTLNAME fwd_fft_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME dataflow_parent_loop_proc12 MODELNAME dataflow_parent_loop_proc12 RTLNAME fwd_fft_dataflow_parent_loop_proc12}
  {SRCNAME FFT_C MODELNAME FFT_C RTLNAME fwd_fft_FFT_C}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME fwd_fft_entry_proc}
  {SRCNAME ifmap_gen_y MODELNAME ifmap_gen_y RTLNAME fwd_fft_ifmap_gen_y}
  {SRCNAME ifmap_vec_write_Pipeline_VITIS_LOOP_419_2 MODELNAME ifmap_vec_write_Pipeline_VITIS_LOOP_419_2 RTLNAME fwd_fft_ifmap_vec_write_Pipeline_VITIS_LOOP_419_2}
  {SRCNAME ifmap_vec_write MODELNAME ifmap_vec_write RTLNAME fwd_fft_ifmap_vec_write
    SUBMODULES {
      {MODELNAME fwd_fft_mul_31ns_8ns_32_2_1 RTLNAME fwd_fft_mul_31ns_8ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_mul_31ns_9s_32_2_1 RTLNAME fwd_fft_mul_31ns_9s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_VITIS_LOOP_471_3 MODELNAME dataflow_in_loop_VITIS_LOOP_471_3 RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3
    SUBMODULES {
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3_ifmap_CF_M_real_memcore RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3_ifmap_CF_M_real_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3_ifmap_CF_M_real RTLNAME fwd_fft_dataflow_in_loop_VITIS_LOOP_471_3_ifmap_CF_M_real BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME fwd_fft_fifo_w64_d2_S RTLNAME fwd_fft_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_fifo_w8_d2_S_x1 RTLNAME fwd_fft_fifo_w8_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME dataflow_parent_loop_proc10 MODELNAME dataflow_parent_loop_proc10 RTLNAME fwd_fft_dataflow_parent_loop_proc10}
  {SRCNAME dataflow_parent_loop_proc13 MODELNAME dataflow_parent_loop_proc13 RTLNAME fwd_fft_dataflow_parent_loop_proc13}
  {SRCNAME dataflow_parent_loop_proc16 MODELNAME dataflow_parent_loop_proc16 RTLNAME fwd_fft_dataflow_parent_loop_proc16}
  {SRCNAME Mem_patch_Wr MODELNAME Mem_patch_Wr RTLNAME fwd_fft_Mem_patch_Wr}
  {SRCNAME fwd_fft MODELNAME fwd_fft RTLNAME fwd_fft IS_TOP 1
    SUBMODULES {
      {MODELNAME fwd_fft_fifo_w64_d7_S RTLNAME fwd_fft_fifo_w64_d7_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_fifo_w32_d1001_A RTLNAME fwd_fft_fifo_w32_d1001_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_fifo_w32_d2_S_x0 RTLNAME fwd_fft_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_start_for_Col_Wise_Overlap_Gen_U0 RTLNAME fwd_fft_start_for_Col_Wise_Overlap_Gen_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_start_for_FFT_R_U0 RTLNAME fwd_fft_start_for_FFT_R_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_start_for_Row_Wise_Synch_U0 RTLNAME fwd_fft_start_for_Row_Wise_Synch_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_start_for_Transpose_U0 RTLNAME fwd_fft_start_for_Transpose_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_start_for_FFT_C_U0 RTLNAME fwd_fft_start_for_FFT_C_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fwd_fft_ctrl_bus_s_axi RTLNAME fwd_fft_ctrl_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME fwd_fft_gmem_m_axi RTLNAME fwd_fft_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
