#ifndef __TYPES_HPP__
#define __TYPES_HPP__

#include "globals.hpp"
#include "hls_vector.h"
typedef half fft_op_t;
//typedef  ap_fixed<16, 11> fft_op_t; //32-bit type for in-place vr FFT
//typedef float fft_op_t;
typedef std::complex<fft_op_t> c_fft_op_t;
typedef hls::vector<c_fft_op_t, 4> c_fft_op_vec_t;
typedef hls::axis<c_fft_op_t, 0, 0, 0> c_fft_op_axi_t;
typedef hls::stream<c_fft_op_t> c_fft_op_stream;
typedef hls::stream<c_fft_op_axi_t> c_fft_op_axi_stream;

//Captures the properties of fft operation and other controls
typedef struct {
	ap_uint<8> ps; //size of input patch
	ap_uint<8> psl; //log of input patch size
	ap_uint<8> os; //size of overlap
	ap_uint<8> ls; //size of fresh region
} ctrl1_t;

typedef struct {
	ap_uint<8> pn; //size of input patch
	ap_uint<8> sp1; //log of input patch size
	ap_uint<8> sp2; //size of overlap
	ap_uint<8> sp3; //size of fresh region
} ctrl2_t;

typedef struct{
	ap_uint<16> ic; //input channel
	ap_uint<16> oc; //output channel
}layer1_t;

typedef struct{
	ap_uint<8> bs; //size of batch
	ap_uint<8> fs ; //size of filter
	ap_uint<16> spare1;
}layer2_t;
#endif


