#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.fwd_fft.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.fwd_fft.autotvout_gmem.dat"
// wrapc file define:
#define AUTOTB_TVIN_in1 "../tv/cdatafile/c.fwd_fft.autotvin_in1.dat"
#define AUTOTB_TVOUT_in1 "../tv/cdatafile/c.fwd_fft.autotvout_in1.dat"
// wrapc file define:
#define AUTOTB_TVIN_in2 "../tv/cdatafile/c.fwd_fft.autotvin_in2.dat"
#define AUTOTB_TVOUT_in2 "../tv/cdatafile/c.fwd_fft.autotvout_in2.dat"
// wrapc file define:
#define AUTOTB_TVIN_out "../tv/cdatafile/c.fwd_fft.autotvin_out_r.dat"
#define AUTOTB_TVOUT_out "../tv/cdatafile/c.fwd_fft.autotvout_out_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_ctrl1_reg "../tv/cdatafile/c.fwd_fft.autotvin_ctrl1_reg.dat"
#define AUTOTB_TVOUT_ctrl1_reg "../tv/cdatafile/c.fwd_fft.autotvout_ctrl1_reg.dat"
// wrapc file define:
#define AUTOTB_TVIN_ctrl2_reg "../tv/cdatafile/c.fwd_fft.autotvin_ctrl2_reg.dat"
#define AUTOTB_TVOUT_ctrl2_reg "../tv/cdatafile/c.fwd_fft.autotvout_ctrl2_reg.dat"
// wrapc file define:
#define AUTOTB_TVIN_layer1_reg "../tv/cdatafile/c.fwd_fft.autotvin_layer1_reg.dat"
#define AUTOTB_TVOUT_layer1_reg "../tv/cdatafile/c.fwd_fft.autotvout_layer1_reg.dat"
// wrapc file define:
#define AUTOTB_TVIN_layer2_reg "../tv/cdatafile/c.fwd_fft.autotvin_layer2_reg.dat"
#define AUTOTB_TVOUT_layer2_reg "../tv/cdatafile/c.fwd_fft.autotvout_layer2_reg.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.fwd_fft.autotvout_gmem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in1 "../tv/rtldatafile/rtl.fwd_fft.autotvout_in1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in2 "../tv/rtldatafile/rtl.fwd_fft.autotvout_in2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out "../tv/rtldatafile/rtl.fwd_fft.autotvout_out_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ctrl1_reg "../tv/rtldatafile/rtl.fwd_fft.autotvout_ctrl1_reg.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ctrl2_reg "../tv/rtldatafile/rtl.fwd_fft.autotvout_ctrl2_reg.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_layer1_reg "../tv/rtldatafile/rtl.fwd_fft.autotvout_layer1_reg.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_layer2_reg "../tv/rtldatafile/rtl.fwd_fft.autotvout_layer2_reg.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_depth = 0;
  in1_depth = 0;
  in2_depth = 0;
  out_depth = 0;
  ctrl1_reg_depth = 0;
  ctrl2_reg_depth = 0;
  layer1_reg_depth = 0;
  layer2_reg_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{in1 " << in1_depth << "}\n";
  total_list << "{in2 " << in2_depth << "}\n";
  total_list << "{out_r " << out_depth << "}\n";
  total_list << "{ctrl1_reg " << ctrl1_reg_depth << "}\n";
  total_list << "{ctrl2_reg " << ctrl2_reg_depth << "}\n";
  total_list << "{layer1_reg " << layer1_reg_depth << "}\n";
  total_list << "{layer2_reg " << layer2_reg_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem_depth;
    int in1_depth;
    int in2_depth;
    int out_depth;
    int ctrl1_reg_depth;
    int ctrl2_reg_depth;
    int layer1_reg_depth;
    int layer2_reg_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
extern "C" void fwd_fft_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_fwd_fft_hw(volatile void * __xlx_apatb_param_in1, volatile void * __xlx_apatb_param_in2, volatile void * __xlx_apatb_param_out, volatile void * __xlx_apatb_param_ctrl1_reg, volatile void * __xlx_apatb_param_ctrl2_reg, volatile void * __xlx_apatb_param_layer1_reg, volatile void * __xlx_apatb_param_layer2_reg) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > gmem_pc_buffer(3072);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1024; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_in1)[j*2+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_in1)[j*2+1] = gmem_pc_buffer[i].range(127,64).to_int64();
}
            for (int j = 0, e = 1024; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_in2)[j*2+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_in2)[j*2+1] = gmem_pc_buffer[i].range(127,64).to_int64();
}
            for (int j = 0, e = 1024; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_out)[j*2+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_out)[j*2+1] = gmem_pc_buffer[i].range(127,64).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem
aesl_fh.touch(AUTOTB_TVIN_gmem);
aesl_fh.touch(AUTOTB_TVOUT_gmem);
//in1
aesl_fh.touch(AUTOTB_TVIN_in1);
aesl_fh.touch(AUTOTB_TVOUT_in1);
//in2
aesl_fh.touch(AUTOTB_TVIN_in2);
aesl_fh.touch(AUTOTB_TVOUT_in2);
//out
aesl_fh.touch(AUTOTB_TVIN_out);
aesl_fh.touch(AUTOTB_TVOUT_out);
//ctrl1_reg
aesl_fh.touch(AUTOTB_TVIN_ctrl1_reg);
aesl_fh.touch(AUTOTB_TVOUT_ctrl1_reg);
//ctrl2_reg
aesl_fh.touch(AUTOTB_TVIN_ctrl2_reg);
aesl_fh.touch(AUTOTB_TVOUT_ctrl2_reg);
//layer1_reg
aesl_fh.touch(AUTOTB_TVIN_layer1_reg);
aesl_fh.touch(AUTOTB_TVOUT_layer1_reg);
//layer2_reg
aesl_fh.touch(AUTOTB_TVIN_layer2_reg);
aesl_fh.touch(AUTOTB_TVOUT_layer2_reg);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_in1 = 0;
unsigned __xlx_offset_byte_param_in2 = 0;
unsigned __xlx_offset_byte_param_out = 0;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_in1 = 0*16;
  if (__xlx_apatb_param_in1) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in1)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in1)[j*2+1];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_in2 = 1024*16;
  if (__xlx_apatb_param_in2) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in2)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in2)[j*2+1];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_out = 2048*16;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out)[j*2+1];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(3072, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
}
// print in1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_in1, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_in1;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_in1, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.in1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_in1, __xlx_sprintf_buffer.data());
}
// print in2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_in2, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_in2;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_in2, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.in2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_in2, __xlx_sprintf_buffer.data());
}
// print out Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_out;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_out, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.out_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
}
// print ctrl1_reg Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ctrl1_reg, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_ctrl1_reg);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_ctrl1_reg, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.ctrl1_reg_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ctrl1_reg, __xlx_sprintf_buffer.data());
}
// print ctrl2_reg Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ctrl2_reg, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_ctrl2_reg);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_ctrl2_reg, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.ctrl2_reg_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ctrl2_reg, __xlx_sprintf_buffer.data());
}
// print layer1_reg Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_layer1_reg, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_layer1_reg);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_layer1_reg, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.layer1_reg_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_layer1_reg, __xlx_sprintf_buffer.data());
}
// print layer2_reg Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_layer2_reg, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_layer2_reg);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_layer2_reg, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.layer2_reg_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_layer2_reg, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
fwd_fft_hw_stub_wrapper(__xlx_apatb_param_in1, __xlx_apatb_param_in2, __xlx_apatb_param_out, __xlx_apatb_param_ctrl1_reg, __xlx_apatb_param_ctrl2_reg, __xlx_apatb_param_layer1_reg, __xlx_apatb_param_layer2_reg);
CodeState = DUMP_OUTPUTS;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_in1 = 0*16;
  if (__xlx_apatb_param_in1) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in1)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in1)[j*2+1];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_in2 = 1024*16;
  if (__xlx_apatb_param_in2) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in2)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in2)[j*2+1];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_out = 2048*16;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out)[j*2+1];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(3072, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
