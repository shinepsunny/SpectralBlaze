// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xifft_ap.h"

extern XIfft_ap_Config XIfft_ap_ConfigTable[];

XIfft_ap_Config *XIfft_ap_LookupConfig(u16 DeviceId) {
	XIfft_ap_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XIFFT_AP_NUM_INSTANCES; Index++) {
		if (XIfft_ap_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XIfft_ap_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIfft_ap_Initialize(XIfft_ap *InstancePtr, u16 DeviceId) {
	XIfft_ap_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIfft_ap_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIfft_ap_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

