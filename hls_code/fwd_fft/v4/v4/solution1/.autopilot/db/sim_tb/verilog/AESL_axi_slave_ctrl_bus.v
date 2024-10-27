// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_ctrl_bus (
    clk,
    reset,
    TRAN_s_axi_ctrl_bus_AWADDR,
    TRAN_s_axi_ctrl_bus_AWVALID,
    TRAN_s_axi_ctrl_bus_AWREADY,
    TRAN_s_axi_ctrl_bus_WVALID,
    TRAN_s_axi_ctrl_bus_WREADY,
    TRAN_s_axi_ctrl_bus_WDATA,
    TRAN_s_axi_ctrl_bus_WSTRB,
    TRAN_s_axi_ctrl_bus_ARADDR,
    TRAN_s_axi_ctrl_bus_ARVALID,
    TRAN_s_axi_ctrl_bus_ARREADY,
    TRAN_s_axi_ctrl_bus_RVALID,
    TRAN_s_axi_ctrl_bus_RREADY,
    TRAN_s_axi_ctrl_bus_RDATA,
    TRAN_s_axi_ctrl_bus_RRESP,
    TRAN_s_axi_ctrl_bus_BVALID,
    TRAN_s_axi_ctrl_bus_BREADY,
    TRAN_s_axi_ctrl_bus_BRESP,
    TRAN_ctrl_bus_write_data_finish,
    TRAN_ctrl_bus_start_in,
    TRAN_ctrl_bus_idle_out,
    TRAN_ctrl_bus_ready_out,
    TRAN_ctrl_bus_ready_in,
    TRAN_ctrl_bus_done_out,
    TRAN_ctrl_bus_write_start_in   ,
    TRAN_ctrl_bus_write_start_finish,
    TRAN_ctrl_bus_interrupt,
    TRAN_ctrl_bus_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_in1 "./c.fwd_fft.autotvin_in1.dat"
`define TV_IN_in2 "./c.fwd_fft.autotvin_in2.dat"
`define TV_IN_out_r "./c.fwd_fft.autotvin_out_r.dat"
`define TV_IN_ctrl1_reg "./c.fwd_fft.autotvin_ctrl1_reg.dat"
`define TV_IN_ctrl2_reg "./c.fwd_fft.autotvin_ctrl2_reg.dat"
`define TV_IN_layer1_reg "./c.fwd_fft.autotvin_layer1_reg.dat"
`define TV_IN_layer2_reg "./c.fwd_fft.autotvin_layer2_reg.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter in1_DEPTH = 1;
reg [31 : 0] in1_OPERATE_DEPTH = 0;
parameter in1_c_bitwidth = 64;
parameter in2_DEPTH = 1;
reg [31 : 0] in2_OPERATE_DEPTH = 0;
parameter in2_c_bitwidth = 64;
parameter out_r_DEPTH = 1;
reg [31 : 0] out_r_OPERATE_DEPTH = 0;
parameter out_r_c_bitwidth = 64;
parameter ctrl1_reg_DEPTH = 1;
reg [31 : 0] ctrl1_reg_OPERATE_DEPTH = 0;
parameter ctrl1_reg_c_bitwidth = 32;
parameter ctrl2_reg_DEPTH = 1;
reg [31 : 0] ctrl2_reg_OPERATE_DEPTH = 0;
parameter ctrl2_reg_c_bitwidth = 32;
parameter layer1_reg_DEPTH = 1;
reg [31 : 0] layer1_reg_OPERATE_DEPTH = 0;
parameter layer1_reg_c_bitwidth = 32;
parameter layer2_reg_DEPTH = 1;
reg [31 : 0] layer2_reg_OPERATE_DEPTH = 0;
parameter layer2_reg_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter fwd_fft_continue_addr = 0;
parameter fwd_fft_auto_start_addr = 0;
parameter in1_data_in_addr = 16;
parameter in2_data_in_addr = 28;
parameter out_r_data_in_addr = 40;
parameter ctrl1_reg_data_in_addr = 52;
parameter ctrl2_reg_data_in_addr = 60;
parameter layer1_reg_data_in_addr = 68;
parameter layer2_reg_data_in_addr = 76;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_ctrl_bus_AWADDR;
output  TRAN_s_axi_ctrl_bus_AWVALID;
input  TRAN_s_axi_ctrl_bus_AWREADY;
output  TRAN_s_axi_ctrl_bus_WVALID;
input  TRAN_s_axi_ctrl_bus_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_ctrl_bus_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_ctrl_bus_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_ctrl_bus_ARADDR;
output  TRAN_s_axi_ctrl_bus_ARVALID;
input  TRAN_s_axi_ctrl_bus_ARREADY;
input  TRAN_s_axi_ctrl_bus_RVALID;
output  TRAN_s_axi_ctrl_bus_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_ctrl_bus_RDATA;
input [2 - 1 : 0] TRAN_s_axi_ctrl_bus_RRESP;
input  TRAN_s_axi_ctrl_bus_BVALID;
output  TRAN_s_axi_ctrl_bus_BREADY;
input [2 - 1 : 0] TRAN_s_axi_ctrl_bus_BRESP;
output TRAN_ctrl_bus_write_data_finish;
input     clk;
input     reset;
input     TRAN_ctrl_bus_start_in;
output    TRAN_ctrl_bus_done_out;
output    TRAN_ctrl_bus_ready_out;
input     TRAN_ctrl_bus_ready_in;
output    TRAN_ctrl_bus_idle_out;
input  TRAN_ctrl_bus_write_start_in   ;
output TRAN_ctrl_bus_write_start_finish;
input     TRAN_ctrl_bus_interrupt;
input     TRAN_ctrl_bus_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [in1_c_bitwidth - 1 : 0] mem_in1 [in1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_in1 [ (in1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * in1_DEPTH -1 : 0] = '{default : 'hz};
reg in1_write_data_finish;
reg [in2_c_bitwidth - 1 : 0] mem_in2 [in2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_in2 [ (in2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * in2_DEPTH -1 : 0] = '{default : 'hz};
reg in2_write_data_finish;
reg [out_r_c_bitwidth - 1 : 0] mem_out_r [out_r_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_out_r [ (out_r_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * out_r_DEPTH -1 : 0] = '{default : 'hz};
reg out_r_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_ctrl1_reg [ctrl1_reg_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_ctrl1_reg [ (ctrl1_reg_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * ctrl1_reg_DEPTH -1 : 0] = '{default : 'hz};
reg ctrl1_reg_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_ctrl2_reg [ctrl2_reg_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_ctrl2_reg [ (ctrl2_reg_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * ctrl2_reg_DEPTH -1 : 0] = '{default : 'hz};
reg ctrl2_reg_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_layer1_reg [layer1_reg_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_layer1_reg [ (layer1_reg_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * layer1_reg_DEPTH -1 : 0] = '{default : 'hz};
reg layer1_reg_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_layer2_reg [layer2_reg_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_layer2_reg [ (layer2_reg_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * layer2_reg_DEPTH -1 : 0] = '{default : 'hz};
reg layer2_reg_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
//write in1 reg
reg [31 : 0] write_in1_count = 0;
reg write_in1_run_flag = 0;
reg write_one_in1_data_done = 0;
//write in2 reg
reg [31 : 0] write_in2_count = 0;
reg write_in2_run_flag = 0;
reg write_one_in2_data_done = 0;
//write out_r reg
reg [31 : 0] write_out_r_count = 0;
reg write_out_r_run_flag = 0;
reg write_one_out_r_data_done = 0;
//write ctrl1_reg reg
reg [31 : 0] write_ctrl1_reg_count = 0;
reg write_ctrl1_reg_run_flag = 0;
reg write_one_ctrl1_reg_data_done = 0;
//write ctrl2_reg reg
reg [31 : 0] write_ctrl2_reg_count = 0;
reg write_ctrl2_reg_run_flag = 0;
reg write_one_ctrl2_reg_data_done = 0;
//write layer1_reg reg
reg [31 : 0] write_layer1_reg_count = 0;
reg write_layer1_reg_run_flag = 0;
reg write_one_layer1_reg_data_done = 0;
//write layer2_reg reg
reg [31 : 0] write_layer2_reg_count = 0;
reg write_layer2_reg_run_flag = 0;
reg write_one_layer2_reg_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_ctrl_bus_AWADDR = AWADDR_reg;
assign TRAN_s_axi_ctrl_bus_AWVALID = AWVALID_reg;
assign TRAN_s_axi_ctrl_bus_WVALID = WVALID_reg;
assign TRAN_s_axi_ctrl_bus_WDATA = WDATA_reg;
assign TRAN_s_axi_ctrl_bus_WSTRB = WSTRB_reg;
assign TRAN_s_axi_ctrl_bus_ARADDR = ARADDR_reg;
assign TRAN_s_axi_ctrl_bus_ARVALID = ARVALID_reg;
assign TRAN_s_axi_ctrl_bus_RREADY = RREADY_reg;
assign TRAN_s_axi_ctrl_bus_BREADY = BREADY_reg;
assign TRAN_ctrl_bus_write_start_finish = AESL_write_start_finish;
assign TRAN_ctrl_bus_done_out = AESL_done_index_reg;
assign TRAN_ctrl_bus_ready_out = AESL_ready_out_index_reg;
assign TRAN_ctrl_bus_idle_out = AESL_idle_index_reg;
assign TRAN_ctrl_bus_write_data_finish = 1 & in1_write_data_finish & in2_write_data_finish & out_r_write_data_finish & ctrl1_reg_write_data_finish & ctrl2_reg_write_data_finish & layer1_reg_write_data_finish & layer2_reg_write_data_finish;
always @(TRAN_ctrl_bus_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_ctrl_bus_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_ctrl_bus_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_ctrl_bus_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_ctrl_bus_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_ctrl_bus_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_ctrl_bus_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_ctrl_bus_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_ctrl_bus_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_ctrl_bus_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        in1_write_data_finish <= 0;
        write_in1_run_flag <= 0; 
        write_in1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (in1_c_bitwidth, in1_DEPTH, in1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctrl_bus_start_in === 1) begin
            in1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_in1_run_flag <= 1; 
            write_in1_count = 0;
        end
        if (write_one_in1_data_done === 1) begin
            write_in1_count = write_in1_count + 1;
            if (write_in1_count == in1_OPERATE_DEPTH) begin
                write_in1_run_flag <= 0; 
                in1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_in1
    integer write_in1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] in1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = in1_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_in1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write in1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (in1_c_bitwidth < 32) begin
                        in1_data_tmp_reg = mem_in1[write_in1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < in1_c_bitwidth) begin
                                in1_data_tmp_reg[j] = mem_in1[write_in1_count][i*32 + j];
                            end
                            else begin
                                in1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_in1[write_in1_count * four_byte_num  + i]!==in1_data_tmp_reg) begin
                    write (in1_data_in_addr + write_in1_count * four_byte_num * 4 + i * 4, in1_data_tmp_reg, write_in1_resp);
                    image_mem_in1[write_in1_count * four_byte_num + i]=in1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_in1_data_done <= 1;
                @(posedge clk);
                write_one_in1_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        in2_write_data_finish <= 0;
        write_in2_run_flag <= 0; 
        write_in2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (in2_c_bitwidth, in2_DEPTH, in2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctrl_bus_start_in === 1) begin
            in2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_in2_run_flag <= 1; 
            write_in2_count = 0;
        end
        if (write_one_in2_data_done === 1) begin
            write_in2_count = write_in2_count + 1;
            if (write_in2_count == in2_OPERATE_DEPTH) begin
                write_in2_run_flag <= 0; 
                in2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_in2
    integer write_in2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] in2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = in2_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_in2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write in2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (in2_c_bitwidth < 32) begin
                        in2_data_tmp_reg = mem_in2[write_in2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < in2_c_bitwidth) begin
                                in2_data_tmp_reg[j] = mem_in2[write_in2_count][i*32 + j];
                            end
                            else begin
                                in2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_in2[write_in2_count * four_byte_num  + i]!==in2_data_tmp_reg) begin
                    write (in2_data_in_addr + write_in2_count * four_byte_num * 4 + i * 4, in2_data_tmp_reg, write_in2_resp);
                    image_mem_in2[write_in2_count * four_byte_num + i]=in2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_in2_data_done <= 1;
                @(posedge clk);
                write_one_in2_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        out_r_write_data_finish <= 0;
        write_out_r_run_flag <= 0; 
        write_out_r_count = 0;
        count_operate_depth_by_bitwidth_and_depth (out_r_c_bitwidth, out_r_DEPTH, out_r_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctrl_bus_start_in === 1) begin
            out_r_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_out_r_run_flag <= 1; 
            write_out_r_count = 0;
        end
        if (write_one_out_r_data_done === 1) begin
            write_out_r_count = write_out_r_count + 1;
            if (write_out_r_count == out_r_OPERATE_DEPTH) begin
                write_out_r_run_flag <= 0; 
                out_r_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_out_r
    integer write_out_r_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] out_r_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = out_r_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_out_r_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write out_r data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (out_r_c_bitwidth < 32) begin
                        out_r_data_tmp_reg = mem_out_r[write_out_r_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < out_r_c_bitwidth) begin
                                out_r_data_tmp_reg[j] = mem_out_r[write_out_r_count][i*32 + j];
                            end
                            else begin
                                out_r_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_out_r[write_out_r_count * four_byte_num  + i]!==out_r_data_tmp_reg) begin
                    write (out_r_data_in_addr + write_out_r_count * four_byte_num * 4 + i * 4, out_r_data_tmp_reg, write_out_r_resp);
                    image_mem_out_r[write_out_r_count * four_byte_num + i]=out_r_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_out_r_data_done <= 1;
                @(posedge clk);
                write_one_out_r_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        ctrl1_reg_write_data_finish <= 0;
        write_ctrl1_reg_run_flag <= 0; 
        write_ctrl1_reg_count = 0;
        count_operate_depth_by_bitwidth_and_depth (ctrl1_reg_c_bitwidth, ctrl1_reg_DEPTH, ctrl1_reg_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctrl_bus_start_in === 1) begin
            ctrl1_reg_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_ctrl1_reg_run_flag <= 1; 
            write_ctrl1_reg_count = 0;
        end
        if (write_one_ctrl1_reg_data_done === 1) begin
            write_ctrl1_reg_count = write_ctrl1_reg_count + 1;
            if (write_ctrl1_reg_count == ctrl1_reg_OPERATE_DEPTH) begin
                write_ctrl1_reg_run_flag <= 0; 
                ctrl1_reg_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_ctrl1_reg
    integer write_ctrl1_reg_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] ctrl1_reg_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = ctrl1_reg_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_ctrl1_reg_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write ctrl1_reg data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (ctrl1_reg_c_bitwidth < 32) begin
                        ctrl1_reg_data_tmp_reg = mem_ctrl1_reg[write_ctrl1_reg_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < ctrl1_reg_c_bitwidth) begin
                                ctrl1_reg_data_tmp_reg[j] = mem_ctrl1_reg[write_ctrl1_reg_count][i*32 + j];
                            end
                            else begin
                                ctrl1_reg_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_ctrl1_reg[write_ctrl1_reg_count * four_byte_num  + i]!==ctrl1_reg_data_tmp_reg) begin
                    write (ctrl1_reg_data_in_addr + write_ctrl1_reg_count * four_byte_num * 4 + i * 4, ctrl1_reg_data_tmp_reg, write_ctrl1_reg_resp);
                    image_mem_ctrl1_reg[write_ctrl1_reg_count * four_byte_num + i]=ctrl1_reg_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_ctrl1_reg_data_done <= 1;
                @(posedge clk);
                write_one_ctrl1_reg_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        ctrl2_reg_write_data_finish <= 0;
        write_ctrl2_reg_run_flag <= 0; 
        write_ctrl2_reg_count = 0;
        count_operate_depth_by_bitwidth_and_depth (ctrl2_reg_c_bitwidth, ctrl2_reg_DEPTH, ctrl2_reg_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctrl_bus_start_in === 1) begin
            ctrl2_reg_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_ctrl2_reg_run_flag <= 1; 
            write_ctrl2_reg_count = 0;
        end
        if (write_one_ctrl2_reg_data_done === 1) begin
            write_ctrl2_reg_count = write_ctrl2_reg_count + 1;
            if (write_ctrl2_reg_count == ctrl2_reg_OPERATE_DEPTH) begin
                write_ctrl2_reg_run_flag <= 0; 
                ctrl2_reg_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_ctrl2_reg
    integer write_ctrl2_reg_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] ctrl2_reg_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = ctrl2_reg_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_ctrl2_reg_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write ctrl2_reg data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (ctrl2_reg_c_bitwidth < 32) begin
                        ctrl2_reg_data_tmp_reg = mem_ctrl2_reg[write_ctrl2_reg_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < ctrl2_reg_c_bitwidth) begin
                                ctrl2_reg_data_tmp_reg[j] = mem_ctrl2_reg[write_ctrl2_reg_count][i*32 + j];
                            end
                            else begin
                                ctrl2_reg_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_ctrl2_reg[write_ctrl2_reg_count * four_byte_num  + i]!==ctrl2_reg_data_tmp_reg) begin
                    write (ctrl2_reg_data_in_addr + write_ctrl2_reg_count * four_byte_num * 4 + i * 4, ctrl2_reg_data_tmp_reg, write_ctrl2_reg_resp);
                    image_mem_ctrl2_reg[write_ctrl2_reg_count * four_byte_num + i]=ctrl2_reg_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_ctrl2_reg_data_done <= 1;
                @(posedge clk);
                write_one_ctrl2_reg_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer1_reg_write_data_finish <= 0;
        write_layer1_reg_run_flag <= 0; 
        write_layer1_reg_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer1_reg_c_bitwidth, layer1_reg_DEPTH, layer1_reg_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctrl_bus_start_in === 1) begin
            layer1_reg_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer1_reg_run_flag <= 1; 
            write_layer1_reg_count = 0;
        end
        if (write_one_layer1_reg_data_done === 1) begin
            write_layer1_reg_count = write_layer1_reg_count + 1;
            if (write_layer1_reg_count == layer1_reg_OPERATE_DEPTH) begin
                write_layer1_reg_run_flag <= 0; 
                layer1_reg_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer1_reg
    integer write_layer1_reg_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer1_reg_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer1_reg_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer1_reg_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer1_reg data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer1_reg_c_bitwidth < 32) begin
                        layer1_reg_data_tmp_reg = mem_layer1_reg[write_layer1_reg_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer1_reg_c_bitwidth) begin
                                layer1_reg_data_tmp_reg[j] = mem_layer1_reg[write_layer1_reg_count][i*32 + j];
                            end
                            else begin
                                layer1_reg_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_layer1_reg[write_layer1_reg_count * four_byte_num  + i]!==layer1_reg_data_tmp_reg) begin
                    write (layer1_reg_data_in_addr + write_layer1_reg_count * four_byte_num * 4 + i * 4, layer1_reg_data_tmp_reg, write_layer1_reg_resp);
                    image_mem_layer1_reg[write_layer1_reg_count * four_byte_num + i]=layer1_reg_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_layer1_reg_data_done <= 1;
                @(posedge clk);
                write_one_layer1_reg_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        layer2_reg_write_data_finish <= 0;
        write_layer2_reg_run_flag <= 0; 
        write_layer2_reg_count = 0;
        count_operate_depth_by_bitwidth_and_depth (layer2_reg_c_bitwidth, layer2_reg_DEPTH, layer2_reg_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctrl_bus_start_in === 1) begin
            layer2_reg_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_layer2_reg_run_flag <= 1; 
            write_layer2_reg_count = 0;
        end
        if (write_one_layer2_reg_data_done === 1) begin
            write_layer2_reg_count = write_layer2_reg_count + 1;
            if (write_layer2_reg_count == layer2_reg_OPERATE_DEPTH) begin
                write_layer2_reg_run_flag <= 0; 
                layer2_reg_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_layer2_reg
    integer write_layer2_reg_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] layer2_reg_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = layer2_reg_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_layer2_reg_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write layer2_reg data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (layer2_reg_c_bitwidth < 32) begin
                        layer2_reg_data_tmp_reg = mem_layer2_reg[write_layer2_reg_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < layer2_reg_c_bitwidth) begin
                                layer2_reg_data_tmp_reg[j] = mem_layer2_reg[write_layer2_reg_count][i*32 + j];
                            end
                            else begin
                                layer2_reg_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_layer2_reg[write_layer2_reg_count * four_byte_num  + i]!==layer2_reg_data_tmp_reg) begin
                    write (layer2_reg_data_in_addr + write_layer2_reg_count * four_byte_num * 4 + i * 4, layer2_reg_data_tmp_reg, write_layer2_reg_resp);
                    image_mem_layer2_reg[write_layer2_reg_count * four_byte_num + i]=layer2_reg_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_layer2_reg_data_done <= 1;
                @(posedge clk);
                write_one_layer2_reg_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_ctrl_bus_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 8;
    while (1) begin
        process_8_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_8_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_in1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [in1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (in1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_in1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_in1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < in1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_in1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_in1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_in1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_in1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_in1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_in2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [in2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (in2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_in2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_in2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < in2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_in2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_in2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_in2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_in2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_in2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_out_r_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [out_r_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (out_r_c_bitwidth , factor);
  fp = $fopen(`TV_IN_out_r ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_out_r); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < out_r_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_out_r [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_out_r [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_out_r [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_out_r [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_out_r [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_ctrl1_reg_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [ctrl1_reg_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (ctrl1_reg_c_bitwidth , factor);
  fp = $fopen(`TV_IN_ctrl1_reg ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_ctrl1_reg); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < ctrl1_reg_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_ctrl1_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_ctrl1_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_ctrl1_reg [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_ctrl1_reg [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_ctrl1_reg [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_ctrl2_reg_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [ctrl2_reg_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (ctrl2_reg_c_bitwidth , factor);
  fp = $fopen(`TV_IN_ctrl2_reg ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_ctrl2_reg); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < ctrl2_reg_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_ctrl2_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_ctrl2_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_ctrl2_reg [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_ctrl2_reg [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_ctrl2_reg [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer1_reg_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer1_reg_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer1_reg_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer1_reg ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer1_reg); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer1_reg_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_layer1_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_layer1_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer1_reg [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer1_reg [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer1_reg [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_layer2_reg_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [layer2_reg_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (layer2_reg_c_bitwidth , factor);
  fp = $fopen(`TV_IN_layer2_reg ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_layer2_reg); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < layer2_reg_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_layer2_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_layer2_reg [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_layer2_reg [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_layer2_reg [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_layer2_reg [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
endmodule
