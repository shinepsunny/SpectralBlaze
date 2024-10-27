#include "globals.hpp"
#include "types.hpp"

static int wr_ptr=0;

////This function is common across all fft stages
void fft_stage(c_fft_op_t IN[MAX_PS],c_fft_op_t OUT[MAX_PS],int curr_stage,int y,ctrl1_t *ctrl1_reg)
{
#pragma HLS function_instantiate variable=curr_stage
#pragma HLS function_instantiate variable=y
	unsigned int k1,j1,m1;
	c_fft_op_t t1,t2,w1;
	if(curr_stage <= ctrl1_reg->psl)
	{

		m1 = 0;
		j1 = 0;
		SKIP_X: for(k1=0;k1<(ctrl1_reg->ps/2);k1++)
		{
#pragma HLS LOOP_TRIPCOUNT max=8
#pragma HLS PIPELINE II=1
			w1 = w[(curr_stage-1)][j1];
			t1 = IN[m1+j1];
			t2 = IN[m1+j1+(y/2)]*w1;
			OUT[m1+j1] = t1+t2;
			OUT[m1+j1+(y/2)] = t1-t2;
			if(j1 < (y/2)-1)
			{
				j1 = j1+1;
			}
			else if(j1 == (y/2-1))
			{
				j1 = 0;
				m1 = m1+y;
			}
		}
	}
	else
	{
		for(int x=0;x<ctrl1_reg->ps;x=x+2)
		{
#pragma HLS LOOP_TRIPCOUNT max=8
#pragma HLS PIPELINE II=1
			OUT[x] = IN[x];
			OUT[x+1] = IN[x+1];
		}

	}
}

void bit_reversal(c_fft_op_t IN[MAX_PS],c_fft_op_t OUT[MAX_PS],ctrl1_t *ctrl1_reg)
{
	ap_uint<6> i,j;
	int x;
	for(x=0;x<ctrl1_reg->ps;x++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
#pragma HLS PIPELINE II=1
		i = x;
		j = i.range(0,ctrl1_reg->psl-1);
		OUT[x] = IN[j];
	}
}


//
void stream_2_buf(hls::stream<c_fft_op_t> &input_stream,c_fft_op_t input_buffer[MAX_PS],ctrl1_t *ctrl1_reg)
{
	ap_uint<6> j;
	for(int i=0;i<ctrl1_reg->ps;i++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		j = i;
		input_stream.read(input_buffer[j.range(0,ctrl1_reg->psl-1)]);
	}
}

void buf_2_stream(c_fft_op_t output_buffer[MAX_PS],hls::stream<c_fft_op_t> &output_stream,ctrl1_t *ctrl1_reg)
{
	for(int i=0;i<ctrl1_reg->ps;i++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		output_stream.write(output_buffer[i]);
	}
}

void FFT_R(st_c_fft_op_t &in_stream,st_c_fft_op_t &out_stream,
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{
	int n = ctrl1_reg->ls*ctrl2_reg->pn*ctrl2_reg->pn*layer1_reg->ic;
	for(int i=0;i<n;i++)
	{
#pragma HLS LOOP_TRIPCOUNT max=14*16*16*3
#pragma HLS DATAFLOW
		c_fft_op_t input_data[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t input_data_rev[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_1[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_2[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_3[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_4[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_5[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_6[MAX_PS] __attribute__((no_ctor));

#pragma HLS bind_storage variable=input_data type=ram_t2p impl=bram
#pragma HLS bind_storage variable=input_data_rev type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_1 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_2 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_3 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_4 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_5 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_6 type=ram_t2p impl=bram
#pragma HLS AGGREGATE variable= input_data compact=bit
#pragma HLS AGGREGATE variable= input_data_rev compact=bit
#pragma HLS AGGREGATE variable= out_data_1 compact=bit
#pragma HLS AGGREGATE variable= out_data_2 compact=bit
#pragma HLS AGGREGATE variable= out_data_3 compact=bit
#pragma HLS AGGREGATE variable= out_data_4 compact=bit
#pragma HLS AGGREGATE variable= out_data_5 compact=bit
#pragma HLS AGGREGATE variable= out_data_6 compact=bit
#pragma HLS BIND_STORAGE variable=w type=rom_np impl=lutram
		stream_2_buf(in_stream, input_data, ctrl1_reg);
		//bit_reversal(input_data, input_data_rev,ctrl1_reg);
		fft_stage(input_data,out_data_1,1,2,ctrl1_reg);
		fft_stage(out_data_1,out_data_2,2,4,ctrl1_reg);
		fft_stage(out_data_2,out_data_3,3,8,ctrl1_reg);
		fft_stage(out_data_3,out_data_4,4,16,ctrl1_reg);
		fft_stage(out_data_4,out_data_5,5,32,ctrl1_reg);
		fft_stage(out_data_5,out_data_6,6,64,ctrl1_reg);
		buf_2_stream(out_data_6, out_stream, ctrl1_reg);
	}
}


void FFT_C(st_c_fft_op_t &in_stream,st_c_fft_op_t &out_stream,
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{

	int n = ctrl1_reg->ps*ctrl2_reg->pn*ctrl2_reg->pn*layer1_reg->ic;
	for(int i=0;i<n;i++)
	{
#pragma HLS LOOP_TRIPCOUNT max=14*16*16*3
#pragma HLS DATAFLOW
		c_fft_op_t input_data[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t input_data_rev[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_1[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_2[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_3[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_4[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_5[MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_6[MAX_PS] __attribute__((no_ctor));

#pragma HLS bind_storage variable=input_data type=ram_t2p impl=bram
#pragma HLS bind_storage variable=input_data_rev type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_1 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_2 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_3 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_4 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_5 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_6 type=ram_t2p impl=bram
#pragma HLS AGGREGATE variable= input_data compact=bit
#pragma HLS AGGREGATE variable= input_data_rev compact=bit
#pragma HLS AGGREGATE variable= out_data_1 compact=bit
#pragma HLS AGGREGATE variable= out_data_2 compact=bit
#pragma HLS AGGREGATE variable= out_data_3 compact=bit
#pragma HLS AGGREGATE variable= out_data_4 compact=bit
#pragma HLS AGGREGATE variable= out_data_5 compact=bit
#pragma HLS AGGREGATE variable= out_data_6 compact=bit
#pragma HLS BIND_STORAGE variable=w type=rom_np impl=lutram
		stream_2_buf(in_stream, input_data, ctrl1_reg);
		//bit_reversal(input_data, input_data_rev,ctrl1_reg);
		fft_stage(input_data,out_data_1,1,2,ctrl1_reg);
		fft_stage(out_data_1,out_data_2,2,4,ctrl1_reg);
		fft_stage(out_data_2,out_data_3,3,8,ctrl1_reg);
		fft_stage(out_data_3,out_data_4,4,16,ctrl1_reg);
		fft_stage(out_data_4,out_data_5,5,32,ctrl1_reg);
		fft_stage(out_data_5,out_data_6,6,64,ctrl1_reg);
		buf_2_stream(out_data_6, out_stream, ctrl1_reg);
	}
}


/*Take the first patch row of im1 and im2 and form a complex pixel. Stream the patched pixel one by one */
void Mem_Patch_Gen(pix_vec_t *in1,pix_vec_t *in2,st_c_pix_t &patched_pix_out,
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{
	pix_vec_t burst_buffer1[MAX_LS][MAX_IFS/8];
	pix_vec_t burst_buffer2[MAX_LS][MAX_IFS/8];
	int ic,pny,pnx,lsy,ifs,y,x,rd_i,rd_j,rd_ptr1,rd_ptr2,chunk_size;
	c_pix_t c_pix;
	rd_ptr1 = 0;
	rd_ptr2 = 0;
	for(ic=0;ic<layer1_reg->ic;ic++)
	{
#pragma HLS LOOP_TRIPCOUNT max=3
		for(pny=0;pny<ctrl2_reg->pn;pny++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			//#pragma HLS DATAFLOW
			if(pny<(ctrl2_reg->pn-1))
			{
				chunk_size = ctrl1_reg->ls;
			}
			else
			{
				chunk_size = (layer2_reg->ifs) - (pny*ctrl1_reg->ls);
			}
			for(lsy=0;lsy<chunk_size;lsy++)
			{
#pragma HLS LOOP_TRIPCOUNT max=14
				for(ifs=0;ifs<layer2_reg->ifs;ifs=ifs+8)
				{
#pragma HLS LOOP_TRIPCOUNT max=28
#pragma HLS PIPELINE II=1
					burst_buffer1[lsy][ifs/8] = in1[rd_ptr1++];
				}
			}
			for(lsy=0;lsy<chunk_size;lsy++)
			{
#pragma HLS LOOP_TRIPCOUNT max=14
				for(ifs=0;ifs<layer2_reg->ifs;ifs=ifs+8)
				{
#pragma HLS LOOP_TRIPCOUNT max=28
#pragma HLS PIPELINE II=1
					burst_buffer2[lsy][ifs/8] = in2[rd_ptr2++];
				}
			}
			rd_i=0;rd_j=0;
			for(pnx=0;pnx<ctrl2_reg->pn;pnx++)
			{
#pragma HLS LOOP_TRIPCOUNT max=16
				for(y=0;y<ctrl1_reg->ls;y++)
				{
#pragma HLS LOOP_TRIPCOUNT max=14
					for(x=0;x<ctrl1_reg->ls;x++)
					{
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT max=14
						if((x+pnx*ctrl1_reg->ls < layer2_reg->ifs) && (y+pny*ctrl1_reg->ls < layer2_reg->ifs))
						{
							rd_i = x/8;
							rd_j = x%8;
							c_pix= c_pix_t(burst_buffer1[y][rd_i][rd_j],burst_buffer2[y][rd_i][rd_j]);
						}
						else
						{
							c_pix = c_pix_t(0,0);
						}
						patched_pix_out.write(c_pix);
					}
				}
			}
		}
	}
}

void Col_Wise_Overlap_Gen(st_c_pix_t &c_ifmap_st_ip,st_c_pix_t &c_ifmap_st_op,//Complex pixel stream,//Complex pixel str
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{

	hls::stream<c_pix_t,MAX_COL_BUFFER_SIZE> Col_Buffer;
	int ic,pnx,pny,y,x;
	c_pix_t c_pix;
	for (ic=0;ic<layer1_reg->ic;ic++)
	{
#pragma HLS LOOP_TRIPCOUNT max=3
		for(pny=0;pny < ctrl2_reg->pn;pny++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			for(pnx=0;pnx < ctrl2_reg->pn;pnx++)
			{
#pragma HLS LOOP_TRIPCOUNT max=16
				for(y=0;y<ctrl1_reg->ls;y++)
				{
#pragma HLS LOOP_TRIPCOUNT max=14
					for(x=0;x<ctrl1_reg->ps;x++)
					{
#pragma HLS LOOP_TRIPCOUNT max=16

						if(x < ctrl1_reg->os)
						{
							if(pnx == 0)
								c_ifmap_st_op.write(c_pix_t(0,0));
							else
								c_ifmap_st_op.write(Col_Buffer.read());
						}
						else
						{
							c_pix = c_ifmap_st_ip.read();
							c_ifmap_st_op.write(c_pix);
							if(x>= ctrl1_reg->ls && pnx != (ctrl2_reg->pn-1))
							{
								Col_Buffer.write(c_pix);
							}

						}

					}
				}

			}

		}

	}
}



//
void Row_Wise_Synch(st_c_fft_op_t &c_fft_ip,st_c_fft_op_t &c_fft_op,//Complex pixel stream,//Complex pixel str
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{


	hls::stream<c_fft_op_t,MAX_ROW_BUFFER_SIZE> Row_Buffer("row buffer");
	c_fft_op_t tmp_out;
	int ic,pnx,pny,y,x,x1;
	float a;
	for (ic=0;ic<layer1_reg->ic;ic++)
	{
#pragma HLS LOOP_TRIPCOUNT max=3
		for(pny=0;pny < ctrl2_reg->pn;pny++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			for(pnx=0;pnx < ctrl2_reg->pn;pnx++)
			{
#pragma HLS LOOP_TRIPCOUNT max=16
				for(y=0;y<ctrl1_reg->os;y++)
				{
#pragma HLS LOOP_TRIPCOUNT max=2
					for(x=0;x<ctrl1_reg->ps;x++)
					{
#pragma HLS LOOP_TRIPCOUNT max=16
						if(pny == 0)
							c_fft_op.write(c_fft_op_t(0,0));
						else
							c_fft_op.write(Row_Buffer.read());
					}
				}
				for(y=ctrl1_reg->os;y<ctrl1_reg->ps;y++)
				{
#pragma HLS LOOP_TRIPCOUNT max=14
					for(x=0;x<ctrl1_reg->ps;x++)
					{
#pragma HLS LOOP_TRIPCOUNT max=16
#pragma HLS PIPELINE II=1
						tmp_out = c_fft_ip.read();
						c_fft_op.write(tmp_out);
						if (y >= ctrl1_reg->ls && pny != (ctrl2_reg->pn-1))
							Row_Buffer.write((c_fft_op_t)tmp_out);
					}
				}
			}

		}

	}

}


//
//
//
void ifmap_gen_x(st_c_fft_op_t &c_fft_col_op_st,c_fft_op_t ifmap_CF[MAX_PS][MAX_PS],
		ctrl1_t *ctrl1_reg)
{
	int y,x;

	for(y=0;y<ctrl1_reg->ps;y++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(x=0;x<ctrl1_reg->ps;x++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			c_fft_col_op_st.read(ifmap_CF[y][x]);
		}
	}
}

void ifmap_cons_y(c_fft_op_t ifmap_CF[MAX_PS][MAX_PS],st_c_fft_op_t &c_fft_op_st,
		ctrl1_t *ctrl1_reg)
{
	int y,x;
	for(x=0;x<ctrl1_reg->ps;x++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(y=0;y<ctrl1_reg->ps;y++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			c_fft_op_st.write(ifmap_CF[y][x]);
		}
	}
}

void ifmap_gen_y(st_c_fft_op_t &c_fft_col_op_st,c_fft_op_t ifmap_CF[MAX_PS][MAX_PS],
		ctrl1_t *ctrl1_reg)
{
	int y,x;
	for(x=0;x<ctrl1_reg->ps;x++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(y=0;y<ctrl1_reg->ps;y++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			c_fft_col_op_st.read(ifmap_CF[y][x]);
		}
	}
}

void ifmap_vec_write(c_fft_op_t ifmap_CF[MAX_PS][MAX_PS],c_fft_op_vec_t *fft_out,
		ctrl1_t *ctrl1_reg)
{
	int y,x,i;
	c_fft_op_vec_t tmp_out;
	for(y=0;y < ctrl1_reg->ps;y++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(x=0;x < ctrl1_reg->ps;x=x+4)
		{
#pragma HLS LOOP_TRIPCOUNT max=4
			for(i=0;i<4;i++)
			{
				tmp_out[i] = ifmap_CF[y][x+i];
			}
			fft_out[wr_ptr++] = tmp_out;
		}
	}
}

void Transpose(st_c_fft_op_t &c_fft_in_st,st_c_fft_op_t &c_fft_out_st,//Complex pixel stream,//Complex pixel str
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{

	int ic,pnx,pny,y,x;
	for (ic=0;ic<layer1_reg->ic;ic++)
	{
#pragma HLS LOOP_TRIPCOUNT max=3
		for(pny=0;pny < ctrl2_reg->pn;pny++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			for(pnx=0;pnx < ctrl2_reg->pn;pnx++)
			{
#pragma HLS LOOP_TRIPCOUNT max=16
#pragma HLS DATAFLOW
				c_fft_op_t ifmap_RF[MAX_PS][MAX_PS]__attribute((no_ctor));
				ifmap_gen_x(c_fft_in_st, ifmap_RF, ctrl1_reg);
				ifmap_cons_y(ifmap_RF,c_fft_out_st, ctrl1_reg);
			}

		}

	}

}

void Mem_patch_Wr(st_c_fft_op_t &c_fft_col_op_st,c_fft_op_vec_t *fft_out,//Complex pixel stream,//Complex pixel str
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{
	int ic,pny,pnx;
	int wr_ptr = 0;
	c_fft_op_t ifmap_CF[MAX_PS][MAX_PS]__attribute((no_ctor));
#pragma HLS ARRAY_RESHAPE variable= ifmap_CF dim=2 factor=2 type=cyclic
	wr_ptr =0;
	for (ic=0;ic<layer1_reg->ic;ic++)
	{
#pragma HLS LOOP_TRIPCOUNT max=3
		for(pny=0;pny < ctrl2_reg->pn;pny++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			for(pnx=0;pnx < ctrl2_reg->pn;pnx++)
			{
#pragma HLS LOOP_TRIPCOUNT max=16
#pragma HLS DATAFLOW
				ifmap_gen_y(c_fft_col_op_st, ifmap_CF, ctrl1_reg);
				ifmap_vec_write(ifmap_CF, fft_out, ctrl1_reg);
			}
		}
	}
}
//
///*Module reads the pixels from dram and produces the FFT
// * read order is NCHW and write order is NICPNYPNXPYPX(FFT of two patches will be combined to form a single complex patch)
// * Read and write is 128-bit wide, hence input will be 8-element vector and output will be 4-element vector
// * Desirable to have a 200 MHz speed
// * Control registers captures the settings of OaD convolution
// * and layer registers captures the info about layers
// */
//
void fwd_fft(pix_vec_t *in1,pix_vec_t *in2,c_fft_op_vec_t *out,
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg, layer1_t *layer1_reg,layer2_t *layer2_reg)
{
#pragma HLS INTERFACE mode=m_axi port=in1 bundle=gmem depth=1024 offset=slave
#pragma HLS INTERFACE mode=m_axi port=in2 bundle=gmem depth=1024 offset=slave
#pragma HLS INTERFACE mode=m_axi port=out bundle=gmem depth=1024 offset=slave
#pragma HLS INTERFACE mode=s_axilite port=in1 bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=in2 bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=out bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=ctrl1_reg bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=ctrl2_reg bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=layer1_reg bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=layer2_reg bundle=ctrl_bus
#pragma HLS interface ap_ctrl_hs port=return
#pragma HLS INTERFACE mode=s_axilite port=return bundle=ctrl_bus


	//Task-level pipelining
#pragma HLS DATAFLOW
	st_c_pix_t c_ifmap_patch_st("c_ifmap_patch_stream");//produced by column wise overlapping patch former module
	st_c_pix_t c_ifmap_col_op_st("c_ifmap_col_op_stream");
	st_c_fft_op_t c_fft_row_op_st("row_fft_op_stream"); //Produced by row-wise overlapped FFT module
	st_c_fft_op_t c_fft_col_op_st("col_fft_op_stream"); //Produced by column-wise FFT module
	st_c_fft_op_t c_row_op_st("row_op_stream"); //Produced by row-wise overlapped FFT module
	st_c_fft_op_t c_row_op_trans_st("row_op_transposed_stream"); //Produced by row-wise overlapped FFT module
	st_c_fft_op_t c_col_op_st("col_op_stream"); //Produced by column-wise FFT module
#pragma HLS stream variable=c_ifmap_patch_st depth=1001
#pragma HLS stream variable=c_ifmap_col_op_st depth=1001
	Mem_Patch_Gen(in1,in2,c_ifmap_patch_st, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg);
	Col_Wise_Overlap_Gen(c_ifmap_patch_st, c_ifmap_col_op_st, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg);
	FFT_R(c_ifmap_col_op_st, c_fft_row_op_st, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg);
	Row_Wise_Synch(c_fft_row_op_st, c_row_op_st, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg);
	Transpose(c_row_op_st, c_row_op_trans_st, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg);
	FFT_C(c_row_op_trans_st, c_fft_col_op_st,ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg);
	Mem_patch_Wr(c_fft_col_op_st, out, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg);
}
