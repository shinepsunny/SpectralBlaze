#ifndef _TYPES_HPP_
#define _TYPES_HPP_
#include "globals.hpp"
#include "hls_x_complex.h"

//typedef float fft_op_t;
#define VEC_SIZE 16
typedef ap_fixed<16,14> fft_op_t;
//typedef float fft_op_t;
typedef std::complex<fft_op_t>	c_fft_op_t;
typedef hls::axis<c_fft_op_t, 0, 0, 0> c_fft_op_axi_t;
typedef hls::axis<fft_op_t, 0, 0, 0> fft_op_axi_t;
typedef struct config_struct tc_t;
typedef hls::axis<tc_t, 0, 0, 0> tc_axi_t;
struct c_fft_op_st_t {
	fft_op_t real;
	fft_op_t imag;
};
typedef hls::vector<struct c_fft_op_st_t, VEC_SIZE> s_patch_t;
typedef hls::axis<s_patch_t, 0, 0, 0> patch_axi_t;




struct config_struct{
	ap_uint<4> oc_tile;
	ap_uint<4> ic_tile;
	ap_uint<5> pn_tile;
	ap_uint<1> wt_update;
	ap_uint<1> psum_update;
	ap_uint<1> ifmap_update;
	ap_uint<8> ifmap_offset;
	ap_uint<8> psum_offset;
};

struct ctrl_struct{
		ap_uint<7> ps; //size of input patch
		ap_uint<3> psl; //log of input patch size
		ap_uint<4> os; //size of overlap
		ap_uint<4> ls; //size of fresh region
		ap_uint<7> pn; //Number of patches
		ap_uint<7> spare; //alignment mismatch
};

typedef struct config_struct tc_t;
typedef struct ctrl_struct ctrl_t;
#endif
