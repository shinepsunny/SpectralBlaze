// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module fwd_fft_fft_stage1119_Pipeline_SKIP_X_w_M_imag33 (
address0, ce0, q0, reset,clk);

parameter DataWidth = 16;
parameter AddressWidth = 8;
parameter AddressRange = 192;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./fwd_fft_fft_stage1119_Pipeline_SKIP_X_w_M_imag33.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

