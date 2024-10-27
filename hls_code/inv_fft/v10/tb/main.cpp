#include "../src/globals.hpp"
#include <vector>


using namespace std;
#define TEST_SIZE 1

int main(int argc, char *argv[])
{
	int i,j,k,t,err_cnt;
	ctrl1_t ctrl1_reg;
	ctrl2_t ctrl2_reg;
	layer1_t layer1_reg;
	layer2_t layer2_reg;
	layer1_reg.oc = 1;
	ctrl2_reg.pn = 1;
	ctrl1_reg.ps = 16;
	ctrl1_reg.psl = 4;
	actp_t actp_reg;
	actp_reg.enable = 1;
	actp_reg.pool_size = 2;
	actp_reg.type = RELU;
	//std::vector<c_fft_op_vec_t> in(((ctrl1_reg.ps*ctrl1_reg.ps)/4)*TEST_SIZE);
	//std::vector<c_fft_op_vec_t> out(((ctrl1_reg.ps*ctrl1_reg.ps)/4)*TEST_SIZE);
	std::vector<c_fft_op_vec_t> in(1024);
	std::vector<fft_op_vec8_t> out1(1024);
	std::vector<fft_op_vec8_t> out2(1024);
	std::vector<c_fft_op_vec_t> tmp(1);
	std::vector<fft_op_vec8_t> tmp2(1);
	int m =0;
	for(t=0;t<TEST_SIZE;t++)
	{

		for(i=0;i<ctrl1_reg.ps;i++)
		{
			for(j=0;j<ctrl1_reg.ps;j=j+4)
			{

				tmp[0][0] = c_fft_op_t(1,1);
				tmp[0][1] = c_fft_op_t(1,1);
				tmp[0][2] = c_fft_op_t(1,1);
				tmp[0][3] = c_fft_op_t(1,1);
				if(i ==  (ctrl1_reg.ps-1) && j== (ctrl1_reg.ps-4))
				{
					tmp[0][3] = c_fft_op_t(100,100);
				}
				in[m++] =  tmp[0];
			}
		}
	}
	for(t=0;t<TEST_SIZE;t++)
	{
		IFFT_AP(in.data(), out1.data(), out2.data(), &ctrl1_reg, &ctrl2_reg, &layer1_reg, &layer2_reg, &actp_reg);

	}
	i=0;
	m = 0;
	for(t=0;t<TEST_SIZE;t++)
	{

		for(i=0;i<ctrl1_reg.ls/2;i++)
		{
			for(j=0;j<ctrl1_reg.ls/2;j = j+8)
			{
				tmp2[0] = out1[m++] ;
				//			if(tmp_out.real() != 0 || tmp_out.imag() != 0)
				//			{
				printf("\n The current i is %d and j is %d and t is %d",i,j,t);
				cout << "\n FFT output is " << tmp2[0][0]<< tmp2[0][1]<< tmp2[0][2]<< tmp2[0][3] <<endl;
				cout << "\n FFT output is " << tmp2[0][4]<< tmp2[0][5]<< tmp2[0][6]<< tmp2[0][7] <<endl;
				tmp2[0] = out2[m++] ;
				//			if(tmp_out.real() != 0 || tmp_out.imag() != 0)
				//			{
				printf("\n The current i is %d and j is %d and t is %d",i,j,t);
				cout << "\n FFT output is " << tmp2[0][0]<< tmp2[0][1]<< tmp2[0][2]<< tmp2[0][3] <<endl;
				cout << "\n FFT output is " << tmp2[0][4]<< tmp2[0][5]<< tmp2[0][6]<< tmp2[0][7] <<endl;
				//			}
			}
		}
	}
	err_cnt = 0;
	if (err_cnt) {
		cout << "!!! ERROR: " << err_cnt << " mismatches detected !!!";
		cout << endl << endl;
	} else {
		cout << "*** Test passes ***" << endl << endl;
	}

	if (err_cnt)
		return 1;
	else
		return 0;


}
