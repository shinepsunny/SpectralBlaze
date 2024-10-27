`timescale 1 ns / 1 ps

module AESL_deadlock_report_unit #( parameter PROC_NUM = 4 ) (
    input dl_reset,
    input dl_clock,
    input [PROC_NUM - 1:0] dl_in_vec,
    input [15:0] trans_in_cnt_0,
    input [15:0] trans_out_cnt_0,
    input [15:0] trans_in_cnt_1,
    input [15:0] trans_out_cnt_1,
    input [15:0] trans_in_cnt_2,
    input [15:0] trans_out_cnt_2,
    input [15:0] trans_in_cnt_3,
    input [15:0] trans_out_cnt_3,
    input [15:0] trans_in_cnt_4,
    input [15:0] trans_out_cnt_4,
    input ap_done_reg_0,
    input ap_done_reg_1,
    input ap_done_reg_2,
    input ap_done_reg_3,
    input ap_done_reg_4,
    input ap_done_reg_5,
    input ap_done_reg_6,
    input ap_done_reg_7,
    input ap_done_reg_8,
    input ap_done_reg_9,
    input ap_done_reg_10,
    input ap_done_reg_11,
    input ap_done_reg_12,
    input ap_done_reg_13,
    input ap_done_reg_14,
    input ap_done_reg_15,
    input ap_done_reg_16,
    input ap_done_reg_17,
    input ap_done_reg_18,
    input ap_done_reg_19,
    input ap_done_reg_20,
    output dl_detect_out,
    output reg [PROC_NUM - 1:0] origin,
    output token_clear);
   
    // FSM states
    localparam ST_IDLE = 3'b000;
    localparam ST_FILTER_FAKE = 3'b001;
    localparam ST_DL_DETECTED = 3'b010;
    localparam ST_DL_REPORT = 3'b100;

    reg find_df_deadlock = 0;
    reg [2:0] CS_fsm;
    reg [2:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    reg [31:0] dl_keep_cnt;
    integer i;
    integer fp;

    // FSM State machine
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end
    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg or dl_keep_cnt) begin
        NS_fsm = CS_fsm;
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_FILTER_FAKE;
                end
            end
            ST_FILTER_FAKE: begin
                if (dl_keep_cnt == 32'd1000) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else if (dl_detect_reg != (dl_detect_reg & dl_in_vec)) begin
                    NS_fsm = ST_IDLE;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if (dl_detect_reg != dl_done_reg) begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_keep_cnt <= 32'h0;
        end
        else begin
            if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg == (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= dl_keep_cnt + 32'h1;
            end
            else if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg != (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= 32'h0;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = (|dl_detect_reg) && (CS_fsm == ST_DL_DETECTED || CS_fsm == ST_DL_REPORT);

    // dl_done_reg record the cycles has been reported
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    always @ (CS_fsm or dl_detect_reg or dl_done_reg) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_detect_reg[i] & ~dl_done_reg[i] & ~(|origin)) begin
                    origin = 'b1 << i;
                end
            end
        end
        else begin
            origin = 'b0;
        end
    end
    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [1512:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "fwd_fft.entry_proc47_U0";
                end
                1 : begin
                    proc_path = "fwd_fft.Mem_Patch_Gen_U0";
                end
                2 : begin
                    proc_path = "fwd_fft.Col_Wise_Overlap_Gen_U0";
                end
                3 : begin
                    proc_path = "fwd_fft.FFT_R_U0";
                end
                4 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0";
                end
                5 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0";
                end
                6 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0";
                end
                7 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0";
                end
                8 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0";
                end
                9 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0";
                end
                10 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0";
                end
                11 : begin
                    proc_path = "fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0";
                end
                12 : begin
                    proc_path = "fwd_fft.Row_Wise_Synch_U0";
                end
                13 : begin
                    proc_path = "fwd_fft.Transpose_U0";
                end
                14 : begin
                    proc_path = "fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0";
                end
                15 : begin
                    proc_path = "fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0";
                end
                16 : begin
                    proc_path = "fwd_fft.FFT_C_U0";
                end
                17 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0";
                end
                18 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0";
                end
                19 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0";
                end
                20 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0";
                end
                21 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0";
                end
                22 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0";
                end
                23 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0";
                end
                24 : begin
                    proc_path = "fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0";
                end
                25 : begin
                    proc_path = "fwd_fft.Mem_patch_Wr_U0";
                end
                26 : begin
                    proc_path = "fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.entry_proc_U0";
                end
                27 : begin
                    proc_path = "fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0";
                end
                28 : begin
                    proc_path = "fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            fp = $fopen("deadlock_db.dat", "w");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [1512:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
            $fdisplay(fp, "Dependence_Cycle_ID %0d", cycle_id);
            $fdisplay(fp, "Dependence_Process_ID 1");
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num, input integer record_time);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
            $fdisplay(fp, "Dependence_Cycle_Number %0d", num);
            $fclose(fp);
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [1512:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [1544:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    1: begin
                        if (AESL_inst_fwd_fft.ap_sync_entry_proc47_U0_ap_ready & AESL_inst_fwd_fft.entry_proc47_U0.ap_idle & ~AESL_inst_fwd_fft.ap_sync_Mem_Patch_Gen_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'fwd_fft.Mem_Patch_Gen_U0'");
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    2: begin
                        if (~AESL_inst_fwd_fft.Mem_Patch_Gen_U0.grp_Mem_Patch_Gen_Pipeline_VITIS_LOOP_228_7_VITIS_LOOP_231_8_VITIS_LOOP_234_9_fu_270.c_ifmap_patch_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_ifmap_patch_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_ifmap_patch_st_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_patch_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_ifmap_patch_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_ifmap_patch_st_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_patch_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_Patch_Gen_U0.ctrl1_reg_c21_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c21_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c21_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c21_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c21_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c21_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c21_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_Patch_Gen_U0.ctrl2_reg_c26_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c26_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c26_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c26_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c26_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c26_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c26_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_Patch_Gen_U0.layer1_reg_c31_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c31_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c31_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c31_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c31_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c31_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c31_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_Col_Wise_Overlap_Gen_U0_U.if_full_n & AESL_inst_fwd_fft.Mem_Patch_Gen_U0.ap_start & ~AESL_inst_fwd_fft.Mem_Patch_Gen_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~AESL_inst_fwd_fft.start_for_Col_Wise_Overlap_Gen_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'fwd_fft.start_for_Col_Wise_Overlap_Gen_U0_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0',");
                        end
                    end
                    0: begin
                        if (AESL_inst_fwd_fft.ap_sync_Mem_Patch_Gen_U0_ap_ready & AESL_inst_fwd_fft.Mem_Patch_Gen_U0.ap_idle & ~AESL_inst_fwd_fft.ap_sync_entry_proc47_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'fwd_fft.entry_proc47_U0'");
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    1: begin
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116.c_ifmap_patch_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_ifmap_patch_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_ifmap_patch_st_U' written by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_patch_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_ifmap_patch_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_ifmap_patch_st_U' read by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_patch_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.ctrl1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c21_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c21_U' written by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c21_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c21_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c21_U' read by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c21_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.ctrl2_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c26_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c26_U' written by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c26_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c26_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c26_U' read by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c26_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.layer1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c31_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c31_U' written by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c31_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c31_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c31_U' read by process 'fwd_fft.Mem_Patch_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c31_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_Col_Wise_Overlap_Gen_U0_U.if_empty_n & AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.ap_idle & ~AESL_inst_fwd_fft.start_for_Col_Wise_Overlap_Gen_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'fwd_fft.start_for_Col_Wise_Overlap_Gen_U0_U' written by process 'fwd_fft.Mem_Patch_Gen_U0',");
                        end
                    end
                    3: begin
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.grp_Col_Wise_Overlap_Gen_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_269_3_VITIS_LOOP_272_4_VITIS_LOOP_275_5_fu_116.c_ifmap_col_op_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_ifmap_col_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_ifmap_col_op_st_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_ifmap_col_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_ifmap_col_op_st_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.ctrl1_reg_c20_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c20_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c20_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c20_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c20_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.ctrl2_reg_c25_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c25_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c25_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c25_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c25_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c25_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c25_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.layer1_reg_c30_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c30_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c30_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c30_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c30_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c30_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c30_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_FFT_R_U0_U.if_full_n & AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.ap_start & ~AESL_inst_fwd_fft.Col_Wise_Overlap_Gen_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~AESL_inst_fwd_fft.start_for_FFT_R_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'fwd_fft.start_for_FFT_R_U0_U' read by process 'fwd_fft.FFT_R_U0',");
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    2: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0.c_row_op_trans_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_ifmap_col_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_ifmap_col_op_st_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_ifmap_col_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_ifmap_col_op_st_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_ifmap_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.ctrl1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c20_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c20_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c20_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c20_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c20_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.ctrl2_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c25_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c25_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c25_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c25_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c25_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c25_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.layer1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c30_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c30_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c30_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c30_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c30_U' read by process 'fwd_fft.Col_Wise_Overlap_Gen_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c30_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_FFT_R_U0_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.ap_idle & ~AESL_inst_fwd_fft.start_for_FFT_R_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'fwd_fft.start_for_FFT_R_U0_U' written by process 'fwd_fft.Col_Wise_Overlap_Gen_U0',");
                        end
                    end
                    12: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0.c_fft_col_op_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_fft_row_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_fft_row_op_st_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_fft_row_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_fft_row_op_st_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.ctrl1_reg_c19_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c19_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c19_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c19_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c19_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.ctrl2_reg_c24_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c24_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c24_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c24_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c24_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c24_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c24_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.layer1_reg_c29_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c29_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c29_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c29_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c29_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c29_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c29_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_Row_Wise_Synch_U0_U.if_full_n & AESL_inst_fwd_fft.FFT_R_U0.ap_start & ~AESL_inst_fwd_fft.FFT_R_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_fwd_fft.start_for_Row_Wise_Synch_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'fwd_fft.start_for_Row_Wise_Synch_U0_U' read by process 'fwd_fft.Row_Wise_Synch_U0',");
                        end
                    end
                    endcase
                end
                4 : begin
                    case(index2)
                    5: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.i_full_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0.ap_done & ap_done_reg_0 & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                5 : begin
                    case(index2)
                    4: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.t_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.stream_2_buf17_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c6_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    6: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.i_full_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0.ap_done & ap_done_reg_1 & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                6 : begin
                    case(index2)
                    5: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.t_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_0_018_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c5_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    7: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.i_full_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0.ap_done & ap_done_reg_2 & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                7 : begin
                    case(index2)
                    6: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.t_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_1_019_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c4_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    8: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.i_full_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0.ap_done & ap_done_reg_3 & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                8 : begin
                    case(index2)
                    7: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.t_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_2_020_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c3_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    9: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.i_full_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0.ap_done & ap_done_reg_4 & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                9 : begin
                    case(index2)
                    8: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.t_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_3_021_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c2_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    10: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.i_full_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0.ap_done & ap_done_reg_5 & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                10 : begin
                    case(index2)
                    9: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.t_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_4_022_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c1_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    11: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.i_full_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0.ap_done & ap_done_reg_6 & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                11 : begin
                    case(index2)
                    10: begin
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.t_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.buf_2_stream24_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U' written by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U' read by process 'fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.fft_stage_5_023_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_R_U0.grp_dataflow_parent_loop_proc11_fu_112.dataflow_in_loop_VITIS_LOOP_91_1_U0.ctrl1_reg_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                12 : begin
                    case(index2)
                    3: begin
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_340_6_VITIS_LOOP_343_7_fu_161.c_fft_row_op_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_fft_row_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_fft_row_op_st_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_fft_row_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_fft_row_op_st_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.ctrl1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c19_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c19_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c19_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c19_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c19_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.ctrl2_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c24_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c24_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c24_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c24_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c24_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c24_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.layer1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c29_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c29_U' written by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c29_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c29_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c29_U' read by process 'fwd_fft.FFT_R_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c29_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_Row_Wise_Synch_U0_U.if_empty_n & AESL_inst_fwd_fft.Row_Wise_Synch_U0.ap_idle & ~AESL_inst_fwd_fft.start_for_Row_Wise_Synch_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'fwd_fft.start_for_Row_Wise_Synch_U0_U' written by process 'fwd_fft.FFT_R_U0',");
                        end
                    end
                    13: begin
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.grp_Row_Wise_Synch_Pipeline_VITIS_LOOP_328_4_VITIS_LOOP_331_5_fu_152.c_row_op_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_row_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_row_op_st_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_row_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_row_op_st_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.ctrl1_reg_c18_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c18_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c18_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c18_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c18_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c18_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c18_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.ctrl2_reg_c23_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c23_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c23_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c23_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c23_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c23_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c23_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Row_Wise_Synch_U0.layer1_reg_c28_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c28_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c28_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c28_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c28_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c28_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c28_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_Transpose_U0_U.if_full_n & AESL_inst_fwd_fft.Row_Wise_Synch_U0.ap_start & ~AESL_inst_fwd_fft.Row_Wise_Synch_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_fwd_fft.start_for_Transpose_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'fwd_fft.start_for_Transpose_U0_U' read by process 'fwd_fft.Transpose_U0',");
                        end
                    end
                    endcase
                end
                13 : begin
                    case(index2)
                    12: begin
                        if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.c_row_op_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_row_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_row_op_st_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_row_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_row_op_st_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.ctrl1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c18_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c18_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c18_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c18_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c18_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c18_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.ctrl2_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c23_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c23_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c23_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c23_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c23_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c23_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.layer1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c28_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c28_U' written by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c28_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c28_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c28_U' read by process 'fwd_fft.Row_Wise_Synch_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c28_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_Transpose_U0_U.if_empty_n & AESL_inst_fwd_fft.Transpose_U0.ap_idle & ~AESL_inst_fwd_fft.start_for_Transpose_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'fwd_fft.start_for_Transpose_U0_U' written by process 'fwd_fft.Row_Wise_Synch_U0',");
                        end
                    end
                    16: begin
                        if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.c_row_op_trans_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_row_op_trans_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_row_op_trans_st_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_trans_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_row_op_trans_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_row_op_trans_st_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_trans_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.ctrl1_reg_c17_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c17_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c17_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c17_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c17_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c17_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c17_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.ctrl2_reg_c22_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c22_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c22_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c22_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c22_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c22_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c22_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.layer1_reg_c27_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c27_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c27_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c27_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c27_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c27_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c27_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_FFT_C_U0_U.if_full_n & AESL_inst_fwd_fft.Transpose_U0.ap_start & ~AESL_inst_fwd_fft.Transpose_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~AESL_inst_fwd_fft.start_for_FFT_C_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'fwd_fft.start_for_FFT_C_U0_U' read by process 'fwd_fft.FFT_C_U0',");
                        end
                    end
                    endcase
                end
                14 : begin
                    case(index2)
                    15: begin
                        if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.i_full_n & AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.ap_done & ap_done_reg_8 & ~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.t_read) begin
                            if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U' written by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U' read by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.i_full_n & AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0.ap_done & ap_done_reg_8 & ~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.t_read) begin
                            if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U' written by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U' read by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                15 : begin
                    case(index2)
                    14: begin
                        if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.t_empty_n & AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.ap_idle & ~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.i_write) begin
                            if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U' written by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U' read by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.t_empty_n & AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.ap_idle & ~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.i_write) begin
                            if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U' written by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U' read by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_RF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U.if_empty_n & AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_cons_y_U0.ap_idle & ~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U.if_write) begin
                            if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U' written by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U' read by process 'fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ifmap_gen_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Transpose_U0.grp_dataflow_parent_loop_proc15_fu_82.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_VITIS_LOOP_442_3_U0.ctrl1_reg_c_channel1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                16 : begin
                    case(index2)
                    13: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0.c_row_op_trans_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_row_op_trans_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_row_op_trans_st_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_trans_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_row_op_trans_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_row_op_trans_st_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_row_op_trans_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.ctrl1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c17_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c17_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c17_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c17_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c17_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c17_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.ctrl2_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c22_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c22_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c22_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c22_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c22_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c22_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.layer1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c27_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c27_U' written by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c27_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c27_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c27_U' read by process 'fwd_fft.Transpose_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c27_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.start_for_FFT_C_U0_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.ap_idle & ~AESL_inst_fwd_fft.start_for_FFT_C_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'fwd_fft.start_for_FFT_C_U0_U' written by process 'fwd_fft.Transpose_U0',");
                        end
                    end
                    25: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0.c_fft_col_op_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_fft_col_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_fft_col_op_st_U' written by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_fft_col_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_fft_col_op_st_U' read by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.ctrl1_reg_c_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c_U' written by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c_U' read by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.ctrl2_reg_c_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c_U' written by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c_U' read by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.layer1_reg_c_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c_U' written by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c_U' read by process 'fwd_fft.Mem_patch_Wr_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                17 : begin
                    case(index2)
                    18: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.i_full_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0.ap_done & ap_done_reg_10 & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                18 : begin
                    case(index2)
                    17: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.t_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.input_data1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.stream_2_buf_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c6_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    19: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.i_full_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0.ap_done & ap_done_reg_11 & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                19 : begin
                    case(index2)
                    18: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.t_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_12_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_0_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c5_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    20: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.i_full_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0.ap_done & ap_done_reg_12 & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                20 : begin
                    case(index2)
                    19: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.t_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_23_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_1_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c4_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    21: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.i_full_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0.ap_done & ap_done_reg_13 & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                21 : begin
                    case(index2)
                    20: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.t_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_34_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_2_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c3_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    22: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.i_full_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0.ap_done & ap_done_reg_14 & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                22 : begin
                    case(index2)
                    21: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.t_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_45_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_3_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c2_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    23: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.i_full_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0.ap_done & ap_done_reg_15 & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                23 : begin
                    case(index2)
                    22: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.t_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_56_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_4_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c1_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    24: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.i_full_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0.ap_done & ap_done_reg_16 & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.t_read) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                24 : begin
                    case(index2)
                    23: begin
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.t_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.i_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.out_data_67_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U.if_empty_n & AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.buf_2_stream_U0.ap_idle & ~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U' written by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U' read by process 'fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.fft_stage_5_0_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.FFT_C_U0.grp_dataflow_parent_loop_proc12_fu_106.dataflow_in_loop_VITIS_LOOP_139_1_U0.ctrl1_reg_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                25 : begin
                    case(index2)
                    16: begin
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.c_fft_col_op_st_blk_n) begin
                            if (~AESL_inst_fwd_fft.c_fft_col_op_st_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.c_fft_col_op_st_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.c_fft_col_op_st_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.c_fft_col_op_st_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.c_fft_col_op_st_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.ctrl1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl1_reg_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl1_reg_c_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl1_reg_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl1_reg_c_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.ctrl2_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.ctrl2_reg_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.ctrl2_reg_c_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.ctrl2_reg_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.ctrl2_reg_c_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.ctrl2_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.layer1_reg_blk_n) begin
                            if (~AESL_inst_fwd_fft.layer1_reg_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.layer1_reg_c_U' written by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.layer1_reg_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.layer1_reg_c_U' read by process 'fwd_fft.FFT_C_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.layer1_reg_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin
                        if (~AESL_inst_fwd_fft.out_c_channel_U.if_empty_n & AESL_inst_fwd_fft.Mem_patch_Wr_U0.ap_idle & ~AESL_inst_fwd_fft.out_c_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.out_c_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.out_c_channel_U' written by process 'fwd_fft.entry_proc47_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.out_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.out_c_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.out_c_channel_U' read by process 'fwd_fft.entry_proc47_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.out_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                26 : begin
                    case(index2)
                    27: begin
                        if (AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ap_sync_entry_proc_U0_ap_ready & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.entry_proc_U0.ap_idle & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ap_sync_ifmap_gen_y_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0'");
                        end
                    end
                    endcase
                end
                27 : begin
                    case(index2)
                    28: begin
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.i_full_n & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.ap_done & ap_done_reg_19 & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.t_read) begin
                            if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U' written by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U' read by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.i_full_n & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.ap_done & ap_done_reg_19 & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.t_read) begin
                            if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U' written by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U' read by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    26: begin
                        if (AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ap_sync_ifmap_gen_y_U0_ap_ready & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0.ap_idle & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.entry_proc_U0'");
                        end
                    end
                    endcase
                end
                28 : begin
                    case(index2)
                    27: begin
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.t_empty_n & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.ap_idle & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.i_write) begin
                            if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U' written by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U' read by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_real_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.t_empty_n & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.ap_idle & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.i_write) begin
                            if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U' written by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U' read by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_CF_M_imag_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U.if_empty_n & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.ap_idle & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U.if_write) begin
                            if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U' written by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U' read by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_gen_y_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ctrl1_reg_c_channel1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    26: begin
                        if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U.if_empty_n & AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.ifmap_vec_write_U0.ap_idle & ~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U.if_write) begin
                            if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U' written by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U' read by process 'fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path fwd_fft.Mem_patch_Wr_U0.grp_dataflow_parent_loop_proc16_fu_70.dataflow_parent_loop_proc13_U0.dataflow_parent_loop_proc10_U0.dataflow_in_loop_VITIS_LOOP_471_3_U0.fft_out_c_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        integer record_time;
        wait (dl_reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge dl_clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                            record_time = $time;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end((cycle_id - 1),record_time);
                        find_df_deadlock = 1;
                        @(negedge dl_clock);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
endmodule
