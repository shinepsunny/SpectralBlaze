#include "globals.hpp"

static int rd_ptr=0,wr_ptr1=0,wr_ptr2=0;



//This function is common across all fft stages
void fft_stage(c_fft_op_t I[MAX_PS][MAX_PS],c_fft_op_t X[MAX_PS][MAX_PS],int curr_stage,int y,ctrl1_t *ctrl1_reg)
{
	unsigned int k1,j1,k2,j2,x1,y1,m1,m2;
	int oc,pn;
	if(curr_stage <= ctrl1_reg->psl)
	{
		c_fft_op_t t1,t2,t3,t4,w1,w2,w12,cm1,cm2,cm3;
		m1 = 0;
		j1 = 0;
		SKIP_X: for(k1=0;k1<(ctrl1_reg->ps/2);k1 = k1+1)
		{
#pragma HLS LOOP_TRIPCOUNT max=8
			m2 = 0;
			j2 = 0;
			SKIP_Y: for(k2=0;k2<(ctrl1_reg->ps/2);k2 = k2+1)
			{
#pragma HLS LOOP_TRIPCOUNT max=8
#pragma HLS PIPELINE II=2
				w1 = w[(curr_stage-1)][j1];
				w2 = w[(curr_stage-1)][j2];
				w12 = w[(curr_stage-1)][(j1+j2)%(y/2)];
				cm1 = I[m1+j1+(y/2)][m2+j2]*w1;
				cm2 = I[m1+j1][m2+j2+(y/2)]*w2;
				cm3 = I[m1+j1+(y/2)][m2+j2+(y/2)]*w12;
				t1 = I[m1+j1][m2+j2]+cm2;
				t2 = cm1+cm3;
				t3 = I[m1+j1][m2+j2]-cm2;
				t4 = cm1-cm3;
				X[m1+j1][m2+j2] = t1+t2;
				X[m1+j1][m2+j2+(y/2)] = t3+t4;
				X[m1+j1+(y/2)][m2+j2] = t1-t2;
				X[m1+j1+(y/2)][m2+j2+(y/2)] = t3-t4;
				if(j2 < (y/2)-1)
				{
					j2 = j2+1;
				}
				else if(j2 == (y/2-1))
				{
					j2 = 0;
					m2 = m2+y;
				}
			}
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
		for(x1=0;x1<ctrl1_reg->ps;x1++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
			for(y1=0;y1<ctrl1_reg->ps;y1=y1+4)
			{
#pragma HLS LOOP_TRIPCOUNT max=4
#pragma HLS PIPELINE II=2
				X[x1][y1] = I[x1][y1];
				X[x1][y1+1] = I[x1][y1+1];
				X[x1][y1+2] = I[x1][y1+2];
				X[x1][y1+3] = I[x1][y1+3];
			}

		}
	}

}
/*takes the input stream and does the real->imaginary conversion for inverse and forms a patch buffer */
void collect_input(hls::stream<c_fft_op_vec_t,2> &in,c_fft_op_t I[MAX_PS][MAX_PS],ctrl1_t *ctrl1_reg)//,ctrl1_t *ctrl1_reg_out)

{
	int x,y;
	int oc,pn;
	c_fft_op_vec_t tmp;

	for(x=0;x<ctrl1_reg->ps;x++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(y=0;y<ctrl1_reg->ps;y=y+4)
		{
#pragma HLS LOOP_TRIPCOUNT max=4
#pragma HLS PIPELINE II=2
			tmp = in.read();
			I[x][y].real(tmp[0].imag());
			I[x][y].imag(tmp[0].real());
			I[x][y+1].real(tmp[1].imag());
			I[x][y+1].imag(tmp[1].real());
			I[x][y+2].real(tmp[2].imag());
			I[x][y+2].imag(tmp[2].real());
			I[x][y+3].real(tmp[3].imag());
			I[x][y+3].imag(tmp[3].real());
		}
	}

}

fft_op_t act(fft_op_t arg,actp_t *actp_reg)
{
	fft_op_t out;
	if(actp_reg->enable)
	{
		if(actp_reg->type == RELU)
		{
			if(arg > 0)
				out = arg;
			else
				out = 0;
		}
	}
	else
	{
		out = arg;

	}
	return out;
}

void push_out(c_fft_op_t O[MAX_PS][MAX_PS],c_fft_op_vec2_stream &out,ctrl1_t *ctrl1_reg,actp_t *actp_reg)
{

	int x,y,oc,pn;
	c_fft_op_vec2_t tmp;

	for(x=0;x<(ctrl1_reg->ls/actp_reg->pool_size);x++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(y=0;y<(ctrl1_reg->ls/actp_reg->pool_size);y=y+2)
		{
#pragma HLS LOOP_TRIPCOUNT max=4
#pragma HLS PIPELINE II=2
			tmp[0] = O[x][y];
			tmp[1] = O[x][y+1];
			out.write(tmp);
		}
	}
}

/*Read a 4-element input from DRAM and sends it as a stream,for the first patch,rd_ptr becomes 0 */

void rd_data(c_fft_op_vec_t *in,hls::stream<c_fft_op_vec_t,2> *in_st,ctrl1_t *ctrl1_reg,int pn)
{
	int y,x;
	if(pn==0)
		rd_ptr =0;
	for(x=0;x<ctrl1_reg->ps;x++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(y=0;y<ctrl1_reg->ps;y=y+4)
		{
#pragma HLS LOOP_TRIPCOUNT max=4
#pragma HLS PIPELINE II=1
			in_st->write(in[rd_ptr++]);
		}
	}
}

void pool(c_fft_op_t I[MAX_PS][MAX_PS],c_fft_op_t O[MAX_PS][MAX_PS],ctrl1_t *ctrl1_reg,actp_t *actp_reg)
{
	int y,x,j,i,y1=0;
	int x1=0;
	fft_op_t max_real,max_imag;
	c_fft_op_t data;
	for(y=ctrl1_reg->os;y<ctrl1_reg->ps;y=y+2)
	{
#pragma HLS LOOP_TRIPCOUNT  MAX=14
		for(x=ctrl1_reg->os;x<ctrl1_reg->ps;x=x+2)
		{
#pragma HLS LOOP_TRIPCOUNT  MAX=14
			max_real = 0,max_imag=0;
			for(j=0;j<2;j++)
			{
#pragma HLS LOOP_TRIPCOUNT  MAX=1
				for(i=0;i<2;i++)
				{
#pragma HLS LOOP_TRIPCOUNT  MAX=1
					data = c_fft_op_t(act(I[y+j][x+i].imag(),actp_reg),act(I[y+j][x+i].real(),actp_reg));
					if (data.real() > max_real)
						max_real = data.real();
					if (data.imag() > max_imag)
						max_imag = data.imag();

				}
			}
			O[y1++][x1++] = c_fft_op_t(max_real/(ctrl1_reg->ps.to_half()*ctrl1_reg->ps.to_half()),max_imag/(ctrl1_reg->ps.to_half()*ctrl1_reg->ps.to_half()));
		}
	}

}


void vr_ifft(c_fft_op_vec_t *in , c_fft_op_vec2_stream  &out_st,
		ctrl1_t *ctrl1_reg,ctrl2_t *ctrl2_reg,layer1_t *layer1_reg,actp_t *actp_reg)
{


	for(int pn=0;pn<(ctrl2_reg->pn*ctrl2_reg->pn*layer1_reg->oc);pn++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16384

		c_fft_op_t input_data[MAX_PS][MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_1[MAX_PS][MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_2[MAX_PS][MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_3[MAX_PS][MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_4[MAX_PS][MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_5[MAX_PS][MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_6[MAX_PS][MAX_PS] __attribute__((no_ctor));
		c_fft_op_t out_data_7[MAX_PS][MAX_PS] __attribute__((no_ctor));

#pragma HLS bind_storage variable=input_data type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_1 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_2 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_3 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_4 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_5 type=ram_t2p impl=bram
#pragma HLS BIND_STORAGE variable=out_data_6 type=ram_t2p impl=bram
#pragma HLS bind_storage variable=out_data_7 type=ram_t2p impl=bram
#pragma HLS ARRAY_PARTITION variable=out_data_6  dim=1 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=out_data_6  dim=2 type=cyclic factor=2


#pragma HLS ARRAY_PARTITION variable=w type=complete

#pragma HLS AGGREGATE variable=input_data compact=bit
#pragma HLS AGGREGATE variable= out_data_1 compact=bit
#pragma HLS AGGREGATE variable= out_data_2 compact=bit
#pragma HLS AGGREGATE variable= out_data_3 compact=bit
#pragma HLS AGGREGATE variable= out_data_4 compact=bit
#pragma HLS AGGREGATE variable= out_data_5 compact=bit
#pragma HLS AGGREGATE variable= out_data_6 compact=bit
#pragma HLS AGGREGATE variable= out_data_7 compact=bit

		/*Compute the FFT*/
		hls::stream<c_fft_op_vec_t,2> in_st("input_stream");

#pragma HLS DATAFLOW
		rd_data(in, &in_st, ctrl1_reg,pn);
		collect_input(in_st,input_data,ctrl1_reg);
		fft_stage(input_data,out_data_1,1,2,ctrl1_reg);
		fft_stage(out_data_1,out_data_2,2,4,ctrl1_reg);
		fft_stage(out_data_2,out_data_3,3,8,ctrl1_reg);
		fft_stage(out_data_3,out_data_4,4,16,ctrl1_reg);
		fft_stage(out_data_4,out_data_5,5,32,ctrl1_reg);
		fft_stage(out_data_5,out_data_6,6,64,ctrl1_reg);
		pool(out_data_6, out_data_7, ctrl1_reg, actp_reg);
		push_out(out_data_7,out_st,ctrl1_reg,actp_reg);

	}

}

void write (fft_op_t buffer1[MAX_PS][MAX_IFS],fft_op_t buffer2[MAX_PS][MAX_IFS],fft_op_vec8_t *out1,fft_op_vec8_t *out2,
		ctrl1_t ctrl1_reg,ctrl2_t ctrl2_reg,layer1_t layer1_reg,layer2_t layer2_reg,actp_t actp_reg)
{
	int y,x;
	fft_op_vec8_t out_data;
	fft_op_t max;

	for(y=0;y<ctrl1_reg.ls/(actp_reg.pool_size);y++)
	{
#pragma HLS LOOP_TRIPCOUNT max=14
		for(x=0;x<layer2_reg.ifs/(actp_reg.pool_size);x=x+8)
		{
#pragma HLS LOOP_TRIPCOUNT max=28
			for(int k=0;k<8;k++)
			{
				out_data[k] = buffer1[y][x+k];
			}
			out1[wr_ptr1++]= out_data;
		}
	}
	for(y=0;y<ctrl1_reg.ls/(actp_reg.pool_size);y++)
	{
#pragma HLS LOOP_TRIPCOUNT max=14
		for(x=0;x<layer2_reg.ifs/(actp_reg.pool_size);x=x+8)
		{
#pragma HLS LOOP_TRIPCOUNT max=28
			for(int k=0;k<8;k++)
			{
				out_data[k] = buffer1[y][x+k];
			}
			out2[wr_ptr2++]= out_data;
		}
	}

}

void buffer(c_fft_op_vec2_stream  &in_st,fft_op_t buffer1[MAX_PS][MAX_IFS],fft_op_t buffer2[MAX_PS][MAX_IFS],
		ctrl1_t ctrl1_reg,ctrl2_t ctrl2_reg,layer1_t layer1_reg,layer2_t layer2_reg,actp_t actp_reg)
{
	int oc,pn_x,pn_y,y,x;
	c_fft_op_vec2_t in_data;
	for(pn_x=0;pn_x<ctrl2_reg.pn;pn_x++)
	{
#pragma HLS LOOP_TRIPCOUNT max=16
		for(y=0;y<(ctrl1_reg.ls/actp_reg.pool_size);y++)
		{
#pragma HLS LOOP_TRIPCOUNT max=14
			for(x=0;x<(ctrl1_reg.ls/actp_reg.pool_size);x=x+2)
			{
#pragma HLS LOOP_TRIPCOUNT max=7
				in_data = in_st.read();
				buffer1[y][pn_x*(ctrl1_reg.ls/actp_reg.pool_size)+x] = in_data[0].real();
				buffer2[y][pn_x*(ctrl1_reg.ls/actp_reg.pool_size)+x] = in_data[0].imag();
				buffer1[y][pn_x*(ctrl1_reg.ls/actp_reg.pool_size)+x+1] = in_data[1].real();
				buffer2[y][pn_x*(ctrl1_reg.ls/actp_reg.pool_size)+x+1] = in_data[1].imag();
			}
		}

	}
}

void buffer_write(c_fft_op_vec2_stream  &in_st,fft_op_vec8_t *out1,fft_op_vec8_t *out2,
		ctrl1_t ctrl1_reg,ctrl2_t ctrl2_reg,layer1_t layer1_reg,layer2_t layer2_reg,actp_t actp_reg)
{
	int pn_x,pn_y,y,x;
	fft_op_t buffer1[MAX_PS][MAX_IFS];
	fft_op_t buffer2[MAX_PS][MAX_IFS];
#pragma HLS ARRAY_PARTITION variable=buffer1 type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=buffer2 type=cyclic dim=2 factor=2
	for(pn_y=0;pn_y<layer1_reg.oc*ctrl2_reg.pn;pn_y++)
	{
#pragma HLS LOOP_TRIPCOUNT max=1024
#pragma HLS DATAFLOW
		buffer(in_st, buffer1, buffer2, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg, actp_reg);
		write(buffer1, buffer2, out1, out2, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg, actp_reg);
	}

}



/*Main function that executes the inverse FFT, Activation and Pooling*/
void IFFT_AP(c_fft_op_vec_t *in ,fft_op_vec8_t *out1,fft_op_vec8_t *out2,
		ctrl1_t *ctrl1_regp,ctrl2_t *ctrl2_regp,layer1_t *layer1_regp,layer2_t *layer2_regp,actp_t *actp_regp)
{
#pragma HLS INTERFACE mode=m_axi port=in offset=slave bundle=gmem depth=1024
#pragma HLS INTERFACE mode=m_axi port=out1 offset=slave bundle=gmem depth=1024
#pragma HLS INTERFACE mode=m_axi port=out2 offset=slave bundle=gmem depth=1024
#pragma HLS INTERFACE mode=s_axilite port=in bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=out1 bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=out2 bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=ctrl1_regp bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=ctrl2_regp bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=layer1_regp bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=layer2_regp bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=actp_regp bundle=ctrl_bus
#pragma HLS interface ap_ctrl_chain port=return
#pragma HLS INTERFACE mode=s_axilite port=return bundle=ctrl_bus

	int oc,pn;
	ctrl1_t ctrl1_reg = *ctrl1_regp;
	ctrl2_t ctrl2_reg = *ctrl2_regp;
	layer1_t layer1_reg = *layer1_regp;
	layer2_t layer2_reg = *layer2_regp;
	actp_t actp_reg = *actp_regp;
#pragma HLS DATAFLOW
	c_fft_op_vec2_stream out_st("fft_op_stream");
	vr_ifft(in, out_st, ctrl1_regp, ctrl2_regp, layer1_regp,actp_regp);
	//Form a row of patches with discarded and cleaned data and do the pooling on this
	buffer_write(out_st, out1, out2, ctrl1_reg, ctrl2_reg, layer1_reg, layer2_reg,actp_reg);
}



