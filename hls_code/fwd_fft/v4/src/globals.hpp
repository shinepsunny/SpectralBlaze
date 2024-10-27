#ifndef GLOBALS_HPP
#define GLOBALS_HPP

#include <stdio.h>
#include <stdint.h>
#include <complex>
#include "ap_int.h"
#include "ap_fixed.h"
#include "iostream"
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "hls_math.h"
#include "types.hpp"
#include "string.h"

//#include <gmp.h>
//#define __gmp_const const


#define MAX_IC 1 //Maximum nuber of input channels
#define MAX_OC 64 //Maximum nuber of output channels
#define MAX_LS 62
#define MAX_IFS 256
#define MAX_FS 11
#define MAX_OVS (MAX_FS-1)
#define MAX_PN 32
#define MAX_PS 64
#define MAX_PSL 6

/*Following section will capture the dimensions of the tensor sizes
 It has to be noted that only one dimension info a square matrix is captured here*/
#define MAX_PATCH_NOS 16
#define MAX_PATCH_SIZE 16// Maximum size of a patch
#define MIN_PATCH_SIZE 8 //Minimum size of a patch
#define MAX_FILTER_SIZE 3//Maximum filter size
#define MIN_FILTER_SIZE 3//Minimum filter size
#define MAX_L_SIZE (MAX_PATCH_SIZE-MIN_FILTER_SIZE+1) //Maximum size of new pixels in the patch
#define MIN_L_SIZE (MIN_PATCH_SIZE-MIN_FILTER_SIZE) //Minimum size of new pixels in the patch
#define MAX_IFMAP_SIZE 224 // Maximum size of the input feature map
#define MAX_OVERLAP_SIZE (MAX_FILTER_SIZE-1) //Overlap size
#define MAX_BATCH_SIZE 2 //Maximum number of ifmaps in a single tensor
#define MAX_COL_BUFFER_SIZE MAX_LS*MAX_OVS
#define MAX_ROW_BUFFER_SIZE MAX_OVS*MAX_IFS
#define MAX_PIX 255
#define MAX_IFMAP_UNIQUE_SIZE (MAX_PATCH_SIZE/2+1)
#define PIX_INV 0.003921569
#define SCALE_SCH 0b0110
#define COL_SCALE_SCH 0b1010
#define NO_BURST
#define MEM_BITS 256
#define PIX_BITS 8
#define PIX_BITS_PER_ELEM MEM_BITS/PIX_BITS
#define PIX_BUFFER_SIZE MAX_PATCH_SIZE*MAX_BATCH_SIZE*MAX_IFMAP_SIZE
#define PIX_BUFFER_SIZE_PER_ELEM MAX_L_SIZE*MAX_BATCH_SIZE*MAX_IFMAP_SIZE*(PIX_BITS/MEM_BITS)
#define PIX_VEC_SIZE (128/16)
#define MAX_PSL 6
static const c_fft_op_t w[MAX_PSL][MAX_PS/2]= {
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.923880,-0.382683),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.382683,-0.923880),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.382683,-0.923880),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (-0.923880,-0.382683),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.980785,-0.195090),c_fft_op_t (0.923880,-0.382683),c_fft_op_t (0.831470,-0.555570),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.555570,-0.831470),c_fft_op_t (0.382683,-0.923880),c_fft_op_t (0.195090,-0.980785),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.195090,-0.980785),c_fft_op_t (-0.382683,-0.923880),c_fft_op_t (-0.555570,-0.831470),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (-0.831470,-0.555570),c_fft_op_t (-0.923880,-0.382683),c_fft_op_t (-0.980785,-0.195090),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.995185,-0.098017),c_fft_op_t (0.980785,-0.195090),c_fft_op_t (0.956940,-0.290285),c_fft_op_t (0.923880,-0.382683),c_fft_op_t (0.881921,-0.471397),c_fft_op_t (0.831470,-0.555570),c_fft_op_t (0.773010,-0.634393),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.634393,-0.773010),c_fft_op_t (0.555570,-0.831470),c_fft_op_t (0.471397,-0.881921),c_fft_op_t (0.382683,-0.923880),c_fft_op_t (0.290285,-0.956940),c_fft_op_t (0.195090,-0.980785),c_fft_op_t (0.098017,-0.995185),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.098017,-0.995185),c_fft_op_t (-0.195090,-0.980785),c_fft_op_t (-0.290285,-0.956940),c_fft_op_t (-0.382683,-0.923880),c_fft_op_t (-0.471397,-0.881921),c_fft_op_t (-0.555570,-0.831470),c_fft_op_t (-0.634393,-0.773010),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (-0.773010,-0.634393),c_fft_op_t (-0.831470,-0.555570),c_fft_op_t (-0.881921,-0.471397),c_fft_op_t (-0.923880,-0.382683),c_fft_op_t (-0.956940,-0.290285),c_fft_op_t (-0.980785,-0.195090),c_fft_op_t (-0.995185,-0.098017)}};

void fwd_fft(pix_vec_t *in1,pix_vec_t *in2,c_fft_op_vec_t *out,
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg);
#endif
