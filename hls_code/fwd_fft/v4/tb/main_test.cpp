#include "../src/globals.hpp"
#include "../src/types.hpp"
#include "vector"


int main()
{
	int ic,x,y,p_y,p_x,i,m;
	float data;
	FILE *fp1,*fp2;
	pix_t ifmap1[MAX_IC][MAX_IFS][MAX_IFS]; //MAX_IFS is a multiple of 8
	pix_t ifmap2[MAX_IC][MAX_IFS][MAX_IFS];
	std::vector<pix_vec_t> ifmap1_vec(1024);
	std::vector<pix_vec_t> ifmap2_vec(1024);
	std::vector<c_fft_op_vec_t> ifmap_fft_vec(1024);
	std::vector<pix_vec_t> tmp_in(2);
	std::vector<c_fft_op_vec_t> tmp_out(1);
	ctrl1_t ctrl1_reg;
	ctrl2_t ctrl2_reg;
	layer1_t layer1_reg;
	layer2_t layer2_reg;
	/*Configuration settings for VGG16 first layer */
	ctrl1_reg.ls = 14;
	ctrl1_reg.os = 2;
	ctrl2_reg.pn = 4;
	ctrl1_reg.ps = 16;
	ctrl1_reg.psl = 4;
	layer1_reg.ic = 1;
	layer1_reg.oc = 8;
	layer2_reg.ifs = 56;
	/*Form the ifmap patch */
	fp1=fopen("test_data/ifmap1.dat","r");
	fp2=fopen("test_data/ifmap2.dat","r");
	if (fp1 == NULL)
	{
		printf("Not a valid file for ifmap1");
		return 0;
	}
	if (fp2 == NULL)
	{
		printf("Not a valid file for ifmap2");
		return 0;
	}
	for(ic=0;ic<layer1_reg.ic;ic++)
	{
		for(y=0;y<layer2_reg.ifs;y++)
		{
			for(x=0;x<layer2_reg.ifs;x++)
			{
				//fscanf(fp1, "%f", &ifmap1[ic][y][x]);
				//fscanf(fp2, "%f", &ifmap2[ic][y][x]);
				ifmap1[ic][y][x] = 1;
				ifmap2[ic][y][x] = 1;

			}
		}
	}
	fclose(fp1);
	fclose(fp2);
	m = 0;
	m = 0;
	for(ic=0;ic<layer1_reg.ic;ic++)
	{
		for(y=0;y<layer2_reg.ifs;y++)
		{
			for(x=0;x<layer2_reg.ifs;x=x+8)
			{
				for(i=0;i<8;i++)
				{
					tmp_in[0][i] = ifmap1[ic][y][x+i];
					tmp_in[1][i] = ifmap2[ic][y][x+i];
				}
				ifmap1_vec[m] = tmp_in[0];
				ifmap2_vec[m] = tmp_in[1];
				m++;
			}
		}
	}
	fwd_fft(ifmap1_vec.data(),ifmap2_vec.data(),ifmap_fft_vec.data(),
			&ctrl1_reg,&ctrl2_reg,&layer1_reg,&layer2_reg);
	/*Read the FFT output*/
	m = 0;
	for (ic=0;ic<1;ic++)
	{
		for(p_y=0;p_y < ctrl2_reg.pn;p_y++)
		{
			for(p_x=0;p_x < ctrl2_reg.pn;p_x++)
			{
				for(y=0;y<ctrl1_reg.ps;y++)
				{
					for(x=0;x<ctrl1_reg.ps;x=x+4)
					{
						tmp_out[0] = ifmap_fft_vec[m++];
						for(i=0;i<4;i++)
						{
							std::cout<< "p_y "<< p_y<<"p_x "<< p_x<<"y "<<y<<"x "<<(x+i)<<std::endl;
							data = (float)tmp_out[0][i].real();
							std::cout<< data <<std::endl;
							data = (float)tmp_out[0][i].imag();
							std::cout<< data <<std::endl;
						}
					}
				}
			}
		}
	}
	std::cout<< "completed" << std::endl;
}
