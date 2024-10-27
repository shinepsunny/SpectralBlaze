// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __fwd_fft_fft_stage_0_018_w_M_real40_H__
#define __fwd_fft_fft_stage_0_018_w_M_real40_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct fwd_fft_fft_stage_0_018_w_M_real40_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 192;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(fwd_fft_fft_stage_0_018_w_M_real40_ram) {
        ram[0] = "0b0011110000000000";
        for (unsigned i = 1; i < 32 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[32] = "0b0011110000000000";
        for (unsigned i = 33; i < 64 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[64] = "0b0011110000000000";
        ram[65] = "0b0011100110101000";
        ram[66] = "0b0000000000000000";
        ram[67] = "0b1011100110101000";
        for (unsigned i = 68; i < 96 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[96] = "0b0011110000000000";
        ram[97] = "0b0011101101100100";
        ram[98] = "0b0011100110101000";
        ram[99] = "0b0011011000011111";
        ram[100] = "0b0000000000000000";
        ram[101] = "0b1011011000011111";
        ram[102] = "0b1011100110101000";
        ram[103] = "0b1011101101100100";
        for (unsigned i = 104; i < 128 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[128] = "0b0011110000000000";
        ram[129] = "0b0011101111011001";
        ram[130] = "0b0011101101100100";
        ram[131] = "0b0011101010100111";
        ram[132] = "0b0011100110101000";
        ram[133] = "0b0011100001110010";
        ram[134] = "0b0011011000011111";
        ram[135] = "0b0011001000111110";
        ram[136] = "0b0000000000000000";
        ram[137] = "0b1011001000111110";
        ram[138] = "0b1011011000011111";
        ram[139] = "0b1011100001110010";
        ram[140] = "0b1011100110101000";
        ram[141] = "0b1011101010100111";
        ram[142] = "0b1011101101100100";
        ram[143] = "0b1011101111011001";
        for (unsigned i = 144; i < 160 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[160] = "0b0011110000000000";
        ram[161] = "0b0011101111110110";
        ram[162] = "0b0011101111011001";
        ram[163] = "0b0011101110101000";
        ram[164] = "0b0011101101100100";
        ram[165] = "0b0011101100001110";
        ram[166] = "0b0011101010100111";
        ram[167] = "0b0011101000101111";
        ram[168] = "0b0011100110101000";
        ram[169] = "0b0011100100010011";
        ram[170] = "0b0011100001110010";
        ram[171] = "0b0011011110001011";
        ram[172] = "0b0011011000011111";
        ram[173] = "0b0011010010100101";
        ram[174] = "0b0011001000111110";
        ram[175] = "0b0010111001000110";
        ram[176] = "0b0000000000000000";
        ram[177] = "0b1010111001000110";
        ram[178] = "0b1011001000111110";
        ram[179] = "0b1011010010100101";
        ram[180] = "0b1011011000011111";
        ram[181] = "0b1011011110001011";
        ram[182] = "0b1011100001110010";
        ram[183] = "0b1011100100010011";
        ram[184] = "0b1011100110101000";
        ram[185] = "0b1011101000101111";
        ram[186] = "0b1011101010100111";
        ram[187] = "0b1011101100001110";
        ram[188] = "0b1011101101100100";
        ram[189] = "0b1011101110101000";
        ram[190] = "0b1011101111011001";
        ram[191] = "0b1011101111110110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(fwd_fft_fft_stage_0_018_w_M_real40) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 192;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


fwd_fft_fft_stage_0_018_w_M_real40_ram* meminst;


SC_CTOR(fwd_fft_fft_stage_0_018_w_M_real40) {
meminst = new fwd_fft_fft_stage_0_018_w_M_real40_ram("fwd_fft_fft_stage_0_018_w_M_real40_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~fwd_fft_fft_stage_0_018_w_M_real40() {
    delete meminst;
}


};//endmodule
#endif
