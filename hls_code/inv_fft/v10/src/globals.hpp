#ifndef __GLOBALS_HPP__
#define __GLOBALS_HPP__

#include <stdio.h>
#include <stdint.h>
#include <complex>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"
#include "types.hpp"
#include "hls_math.h"
#include "hls_vector.h"
#include <stdio.h>
#include <string.h>
#include <iostream>

//FFT related Constants
#define MAX_IC 1 //Maximum nuber of input channels
#define MAX_OC 64 //Maximum nuber of output channels
#define MAX_LS 62
#define MAX_IFS 256
#define MAX_FS 11
#define MAX_OVS (MAX_FS-1)
#define MAX_PN 32
#define MAX_PS 64
#define MAX_PSL 6


const c_fft_op_t w[MAX_PSL][MAX_PS/2]= {
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.923880,-0.382683),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.382683,-0.923880),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.382683,-0.923880),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (-0.923880,-0.382683),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.980785,-0.195090),c_fft_op_t (0.923880,-0.382683),c_fft_op_t (0.831470,-0.555570),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.555570,-0.831470),c_fft_op_t (0.382683,-0.923880),c_fft_op_t (0.195090,-0.980785),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.195090,-0.980785),c_fft_op_t (-0.382683,-0.923880),c_fft_op_t (-0.555570,-0.831470),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (-0.831470,-0.555570),c_fft_op_t (-0.923880,-0.382683),c_fft_op_t (-0.980785,-0.195090),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000),c_fft_op_t (0.000000,0.000000)},
		{c_fft_op_t (1.000000,0.000000),c_fft_op_t (0.995185,-0.098017),c_fft_op_t (0.980785,-0.195090),c_fft_op_t (0.956940,-0.290285),c_fft_op_t (0.923880,-0.382683),c_fft_op_t (0.881921,-0.471397),c_fft_op_t (0.831470,-0.555570),c_fft_op_t (0.773010,-0.634393),c_fft_op_t (0.707107,-0.707107),c_fft_op_t (0.634393,-0.773010),c_fft_op_t (0.555570,-0.831470),c_fft_op_t (0.471397,-0.881921),c_fft_op_t (0.382683,-0.923880),c_fft_op_t (0.290285,-0.956940),c_fft_op_t (0.195090,-0.980785),c_fft_op_t (0.098017,-0.995185),c_fft_op_t (0.000000,-1.000000),c_fft_op_t (-0.098017,-0.995185),c_fft_op_t (-0.195090,-0.980785),c_fft_op_t (-0.290285,-0.956940),c_fft_op_t (-0.382683,-0.923880),c_fft_op_t (-0.471397,-0.881921),c_fft_op_t (-0.555570,-0.831470),c_fft_op_t (-0.634393,-0.773010),c_fft_op_t (-0.707107,-0.707107),c_fft_op_t (-0.773010,-0.634393),c_fft_op_t (-0.831470,-0.555570),c_fft_op_t (-0.881921,-0.471397),c_fft_op_t (-0.923880,-0.382683),c_fft_op_t (-0.956940,-0.290285),c_fft_op_t (-0.980785,-0.195090),c_fft_op_t (-0.995185,-0.098017)}};


void IFFT_AP(c_fft_op_vec_t *in ,fft_op_vec8_t *out1,fft_op_vec8_t *out2,
		ctrl1_t *ctrl1_regp,ctrl2_t *ctrl2_regp,layer1_t *layer1_regp,layer2_t *layer2_regp,actp_t *actp_regp);


#endif


