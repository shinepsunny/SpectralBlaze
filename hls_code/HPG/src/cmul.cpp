#include "globals.hpp"

static	s_patch_t Tile[40000];

extern "C"

void cmul(hls::stream<s_patch_t> &ifmap_in_top,hls::stream<s_patch_t> &wt_in_top,
		hls::stream<s_patch_t> &psum_in_top,hls::stream<patch_axi_t> &psum_out_top,
		tc_t tc_reg,ctrl_t ctrl_reg)
{
#pragma HLS INTERFACE mode=axis port=ifmap_in_top
#pragma HLS INTERFACE mode=axis port=wt_in_top
#pragma HLS INTERFACE mode=axis port=psum_in_top
#pragma HLS INTERFACE mode=axis port=psum_out_top
#pragma HLS INTERFACE mode=s_axilite port=tc_reg bundle=ctrl_bus
#pragma HLS INTERFACE mode=s_axilite port=ctrl_reg bundle=ctrl_bus
#pragma HLS INTERFACE ap_ctrl_chain port=return
#pragma HLS INTERFACE mode=s_axilite port=return bundle=ctrl_bus



#pragma HLS AGGREGATE variable=Tile compact=bit
#pragma HLS BIND_STORAGE variable=Tile type=ram_2p impl=uram
	s_patch_t temp_psum_out ;
	s_patch_t temp_psum_in ;
	s_patch_t temp_ifmap ;
	s_patch_t temp_wt ;

	int ic,oc,pn,pxy,ifmap_index,psum_index,wt_index,xy;
	patch_axi_t tmp_out;
//Input the stream and populate the TILE
	ACROSS_IC1:		for(ic=0;ic<tc_reg.ic_tile;ic++)
	{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=3
		ACROSS_PN1:		for(pn=0;pn<tc_reg.pn_tile;pn++)
		{
#pragma HLS LOOP_TRIPCOUNT max=16
#pragma HLS pipeline off
			ACROSS_PXY1:			for(pxy=0;pxy<(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE);pxy++)
			{
#pragma HLS LOOP_TRIPCOUNT max=110
#pragma HLS pipeline II=1
				ifmap_index =ic*tc_reg.pn_tile*pn*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pn*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pxy+tc_reg.ifmap_offset;
				if(tc_reg.ifmap_update )
				{
					Tile[ifmap_index] = ifmap_in_top.read();
				}


			}
		}
	}
	ACROSS_OC2:	for(oc=0;oc<tc_reg.oc_tile;oc++)
	{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=16
		ACROSS_IC2:		for(ic=0;ic<tc_reg.ic_tile;ic++)
		{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=3
			ACROSS_PXY2:			for(pxy=0;pxy<(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE);pxy++)
			{
#pragma HLS LOOP_TRIPCOUNT max=110
#pragma HLS pipeline II=1

				wt_index = oc*tc_reg.ic_tile*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+ic*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pxy;

				if(tc_reg.wt_update)
				{
					Tile[wt_index] = wt_in_top.read();
				}



			}
		}
	}
	ACROSS_OC3:	for(oc=0;oc<tc_reg.oc_tile;oc++)
	{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=16
		ACROSS_PN3:		for(pn=0;pn<tc_reg.pn_tile;pn++)
		{
#pragma HLS LOOP_TRIPCOUNT max=3
#pragma HLS pipeline off
			ACROSS_PXY3:			for(pxy=0;pxy<(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE);pxy++)
			{
#pragma HLS LOOP_TRIPCOUNT max=110
#pragma HLS pipeline II=1

				psum_index = oc*tc_reg.pn_tile*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pn*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pxy+tc_reg.psum_offset;
				if(tc_reg.psum_update)
				{
					Tile[psum_index] = psum_in_top.read();
				}


			}
		}
	}
//MAC on the TILE
	ACROSS_OC_MAC:	for(oc=0;oc<tc_reg.oc_tile;oc++)
	{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=16
		ACROSS_IC_MAC:		for(ic=0;ic<tc_reg.ic_tile;ic++)
		{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=3
			ACROSS_PN_MAC:		for(pn=0;pn<tc_reg.pn_tile;pn++)
			{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=110
				ACROSS_PXY_MAC:			for(pxy=0;pxy<(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE);pxy++)
				{
#pragma HLS LOOP_TRIPCOUNT max=16
#pragma HLS pipeline II=3
					ifmap_index =ic*tc_reg.pn_tile*pn*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pn*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pxy+tc_reg.ifmap_offset;
					wt_index = oc*tc_reg.ic_tile*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+ic*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pxy;
					psum_index = oc*tc_reg.pn_tile*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pn*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pxy+tc_reg.psum_offset;
					temp_psum_in = Tile[psum_index];
					temp_wt = Tile[wt_index];
					temp_ifmap = Tile[ifmap_index];
					for(xy=0;xy<VEC_SIZE;xy++)
					{
						temp_psum_out[xy].real = temp_psum_in[xy].real+(temp_ifmap[xy].real*temp_wt[xy].real)-(temp_ifmap[xy].imag*temp_wt[xy].imag);
						temp_psum_out[xy].imag = temp_psum_in[xy].imag+(temp_ifmap[xy].imag*temp_wt[xy].real)+(temp_ifmap[xy].real*temp_wt[xy].imag);
					}
					Tile[psum_index] = temp_psum_out;
				}
			}
		}

	}

//Output the psum stream 
	ACROSS_OC_OUT:	for(oc=0;oc<tc_reg.oc_tile;oc++)
	{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=16
		ACROSS_PN_OUT:		for(pn=0;pn<tc_reg.pn_tile;pn++)
		{
#pragma HLS pipeline off
#pragma HLS LOOP_TRIPCOUNT max=110
			ACROSS_PXY_OUT:			for(pxy=0;pxy<(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE);pxy++)
			{

#pragma HLS LOOP_TRIPCOUNT max=16
#pragma HLS pipeline II=8
				psum_index = oc*tc_reg.pn_tile*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pn*(ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)+pxy+tc_reg.psum_offset;
				tmp_out.data = Tile[psum_index];
				if(oc == (tc_reg.oc_tile-1) && pn==(tc_reg.pn_tile-1) && pxy==((ctrl_reg.ps*ctrl_reg.ps/VEC_SIZE)-1) )
				{
					tmp_out.last = 1;
				}
				else
				{
					tmp_out.last = 0;
				}
				psum_out_top.write(tmp_out);

			}
		}
	}

}







