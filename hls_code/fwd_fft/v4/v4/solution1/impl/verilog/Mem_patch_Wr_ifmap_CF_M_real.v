// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module Mem_patch_Wr_ifmap_CF_M_real (address0, ce0, d0, we0, q0,  reset,clk);

parameter DataWidth = 1024;
parameter AddressWidth = 6;
parameter AddressRange = 64;
parameter COL_WIDTH = 8;
parameter NUM_COL = (DataWidth/COL_WIDTH);

input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input [NUM_COL-1:0] we0;
output reg[DataWidth-1:0] q0;
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


endmodule

