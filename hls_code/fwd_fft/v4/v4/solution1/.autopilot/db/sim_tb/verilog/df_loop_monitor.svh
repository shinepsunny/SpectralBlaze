`ifndef DF_LOOP_MONITOR__SV
    `define DF_LOOP_MONITOR__SV
    class df_loop_monitor extends loop_sample_agent;
        virtual df_loop_intf in_intf;
        logic body_ready_for_new_start;
        logic loop_ready_for_new_start;
        logic [31:0] total_run_time;

        function new(virtual df_loop_intf intf_inst,dump_file_agent file_inst);
            super.new(file_inst);
            this.in_intf = intf_inst;
            this.total_run_time = 32'h0;
            this.body_ready_for_new_start = 1'b1;
            this.loop_ready_for_new_start = 1'b1;
            for (integer i=0;i<12;i++)
                this.performance_arr[i] = 32'hffff_ffff;// initial to -1
        endfunction

        virtual function void output_to_file();
            collect_performance();
            this.file_dumper.open_file();
            this.file_dumper.dump_1_col(performance_arr);
            this.file_dumper.dump_1_line(loop_start_arr,loop_end_arr);
            this.file_dumper.dump_1_line_sep(iter_start_arr,iter_end_arr,iter_cnt);
            this.file_dumper.finish_dump();
        endfunction

        virtual task data_monitor();
            wait(in_intf.reset == 0);
            this.body_ready_for_new_start = 1'b1;
            this.loop_ready_for_new_start = 1'b1;
            forever begin
                @(posedge in_intf.clock);
                this.total_run_time = this.total_run_time + 32'h1;
                if (in_intf.loop_start == 1'b1 && loop_ready_for_new_start == 1'b1) begin
                    this.loop_start_arr.push_back(this.total_run_time);
                    this.loop_ready_for_new_start = 1'b0;
                    this.iter_start_index.push_back(this.iter_start_arr.size);
                end
                if (in_intf.body_start == 1'b1 && body_ready_for_new_start == 1'b1) begin
                    this.iter_start_arr.push_back(this.total_run_time);
                    this.body_ready_for_new_start = 1'b0;
                end
                if (in_intf.body_done == 1'b1 && in_intf.body_continue == 1'b1) begin
                    this.iter_end_arr.push_back(this.total_run_time);
                end
                if (in_intf.loop_done == 1'b1 && in_intf.loop_continue == 1'b1) begin
                    this.loop_end_arr.push_back(this.total_run_time);
                    this.iter_cnt.push_back(this.iter_end_arr.size);
                end
                if (in_intf.loop_start == 1'b1 && in_intf.loop_ready == 1'b1) begin
                    this.loop_ready_for_new_start = 1'b1;
                end
                if (in_intf.body_start == 1'b1 && in_intf.body_ready == 1'b1) begin
                    this.body_ready_for_new_start = 1'b1;
                end
                if (in_intf.finish == 1'b1)
                    break;
            end
        endtask

    endclass
`endif
