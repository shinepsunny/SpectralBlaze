// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module fwd_fft_dataflow_in_loop_VITIS_LOOP_392_3_ifmap_CF_M_real_memcore (address0, ce0, d0, we0, q0, address1, ce1, q1,  reset,clk);

parameter DataWidth = 32;
parameter AddressWidth = 11;
parameter AddressRange = 2048;
parameter COL_WIDTH = 8;
parameter NUM_COL = (DataWidth/COL_WIDTH);

input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input [NUM_COL-1:0] we0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];



genvar i;

generate
    for (i=0;i<NUM_COL;i=i+1) begin
        always @(posedge clk) begin
            if (ce0) begin
                if (we0[i]) begin
                    ram[address0][i*COL_WIDTH +: COL_WIDTH] <= d0[i*COL_WIDTH +: COL_WIDTH]; 
                end
                q0[i*COL_WIDTH +: COL_WIDTH] <= ram[address0][i*COL_WIDTH +: COL_WIDTH];
            end
        end
    end
endgenerate


always @(posedge clk) begin
    if (ce1) begin
        q1 <= ram[address1];
    end
end


endmodule
