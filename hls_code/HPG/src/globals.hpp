#ifndef _GLOBALS_HPP_
#define _GLOBALS_HPP_
#include "ap_int.h"
#include "hls_vector.h"
#include "ap_fixed.h"
#include "hls_stream.h"
#include "complex.h"
#include "ap_axi_sdata.h"
#include "types.hpp"
#include "hls_streamofblocks.h"
#include <iostream>
#include <array>
#include <cassert>
#include <initializer_list>

#define MAX_PATCH_SIZE 32
#define MIN_PATCH_SIZE 4
#define MAX_MEM_UNITS 150
#define IC_TILE 4
#define OC_TILE 4
#define PN_TILE 4
extern "C"
void cmul(hls::stream<patch_t> &ifmap_in_top,hls::stream<patch_t> &wt_in_top,
		hls::stream<patch_t> &psum_in_top,hls::stream<patch_axi_t> &psum_out_top,
		tc_t tc_reg,ctrl_t ctrl_reg);
#endif
