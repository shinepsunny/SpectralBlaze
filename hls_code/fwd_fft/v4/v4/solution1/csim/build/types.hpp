#ifndef TYPES_HPP
#define TYPES_HPP
#include "globals.hpp"
#include "hls_vector.h"

//Data types for arithmetic operations
typedef half pix_t; //Assuming 8-bit pixel input
//typedef ap_fixed<16,1> fft_ip_t; //fft input for the xilinx fft ip core  (-1 to 1)
typedef half fft_op_t; //fft output capturing the full dynamic range of output
typedef std::complex<fft_op_t> c_fft_op_t ;//__attribute((no_ctor));
typedef hls::vector<pix_t,8> pix_vec_t; //128-bit wide pixel vector
typedef hls::vector<c_fft_op_t,4> c_fft_op_vec_t;//128-bit wide fft output vector
//typedef float pix_t; //Assuming 8-bit pixel input
//typedef float  fft_ip_t; //fft input for the xilinx fft ip core  (-1 to 1)
//typedef float fft_op_t; //fft output capturing the full dynamic range of output


//Complex versions of data types
typedef std::complex<pix_t> c_pix_t; //Assuming 8-bit complex pixel input
typedef hls::stream<c_pix_t> st_c_pix_t;
typedef hls::stream<c_fft_op_t> st_c_fft_op_t;


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
	ap_uint<16> ifs;
}layer2_t;


#endif

