// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __fwd_fft_fft_stage_0_018_w_M_imag29_H__
#define __fwd_fft_fft_stage_0_018_w_M_imag29_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct fwd_fft_fft_stage_0_018_w_M_imag29_ram : public sc_core::sc_module {

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


   SC_CTOR(fwd_fft_fft_stage_0_018_w_M_imag29_ram) {
        for (unsigned i = 0; i < 33 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[33] = "0b1011110000000000";
        for (unsigned i = 34; i < 65 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[65] = "0b1011100110101000";
        ram[66] = "0b1011110000000000";
        ram[67] = "0b1011100110101000";
        for (unsigned i = 68; i < 97 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[97] = "0b1011011000011111";
        ram[98] = "0b1011100110101000";
        ram[99] = "0b1011101101100100";
        ram[100] = "0b1011110000000000";
        ram[101] = "0b1011101101100100";
        ram[102] = "0b1011100110101000";
        ram[103] = "0b1011011000011111";
        for (unsigned i = 104; i < 129 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[129] = "0b1011001000111110";
        ram[130] = "0b1011011000011111";
        ram[131] = "0b1011100001110010";
        ram[132] = "0b1011100110101000";
        ram[133] = "0b1011101010100111";
        ram[134] = "0b1011101101100100";
        ram[135] = "0b1011101111011001";
        ram[136] = "0b1011110000000000";
        ram[137] = "0b1011101111011001";
        ram[138] = "0b1011101101100100";
        ram[139] = "0b1011101010100111";
        ram[140] = "0b1011100110101000";
        ram[141] = "0b1011100001110010";
        ram[142] = "0b1011011000011111";
        ram[143] = "0b1011001000111110";
        for (unsigned i = 144; i < 161 ; i = i + 1) {
            ram[i] = "0b0000000000000000";
        }
        ram[161] = "0b1010111001000110";
        ram[162] = "0b1011001000111110";
        ram[163] = "0b1011010010100101";
        ram[164] = "0b1011011000011111";
        ram[165] = "0b1011011110001011";
        ram[166] = "0b1011100001110010";
        ram[167] = "0b1011100100010011";
        ram[168] = "0b1011100110101000";
        ram[169] = "0b1011101000101111";
        ram[170] = "0b1011101010100111";
        ram[171] = "0b1011101100001110";
        ram[172] = "0b1011101101100100";
        ram[173] = "0b1011101110101000";
        ram[174] = "0b1011101111011001";
        ram[175] = "0b1011101111110110";
        ram[176] = "0b1011110000000000";
        ram[177] = "0b1011101111110110";
        ram[178] = "0b1011101111011001";
        ram[179] = "0b1011101110101000";
        ram[180] = "0b1011101101100100";
        ram[181] = "0b1011101100001110";
        ram[182] = "0b1011101010100111";
        ram[183] = "0b1011101000101111";
        ram[184] = "0b1011100110101000";
        ram[185] = "0b1011100100010011";
        ram[186] = "0b1011100001110010";
        ram[187] = "0b1011011110001011";
        ram[188] = "0b1011011000011111";
        ram[189] = "0b1011010010100101";
        ram[190] = "0b1011001000111110";
        ram[191] = "0b1010111001000110";


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


SC_MODULE(fwd_fft_fft_stage_0_018_w_M_imag29) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 192;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


fwd_fft_fft_stage_0_018_w_M_imag29_ram* meminst;


SC_CTOR(fwd_fft_fft_stage_0_018_w_M_imag29) {
meminst = new fwd_fft_fft_stage_0_018_w_M_imag29_ram("fwd_fft_fft_stage_0_018_w_M_imag29_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~fwd_fft_fft_stage_0_018_w_M_imag29() {
    delete meminst;
}


};//endmodule
#endif
