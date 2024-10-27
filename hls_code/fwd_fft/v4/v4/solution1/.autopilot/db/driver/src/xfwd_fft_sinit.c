// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfwd_fft.h"

extern XFwd_fft_Config XFwd_fft_ConfigTable[];

XFwd_fft_Config *XFwd_fft_LookupConfig(u16 DeviceId) {
	XFwd_fft_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFWD_FFT_NUM_INSTANCES; Index++) {
		if (XFwd_fft_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFwd_fft_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFwd_fft_Initialize(XFwd_fft *InstancePtr, u16 DeviceId) {
	XFwd_fft_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFwd_fft_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFwd_fft_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

