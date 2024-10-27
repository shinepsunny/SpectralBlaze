// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfwd_fft.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFwd_fft_CfgInitialize(XFwd_fft *InstancePtr, XFwd_fft_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFwd_fft_Start(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFwd_fft_IsDone(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFwd_fft_IsIdle(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFwd_fft_IsReady(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFwd_fft_EnableAutoRestart(XFwd_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XFwd_fft_DisableAutoRestart(XFwd_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XFwd_fft_Set_in1(XFwd_fft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN1_DATA, (u32)(Data));
    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN1_DATA + 4, (u32)(Data >> 32));
}

u64 XFwd_fft_Get_in1(XFwd_fft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN1_DATA);
    Data += (u64)XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN1_DATA + 4) << 32;
    return Data;
}

void XFwd_fft_Set_in2(XFwd_fft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN2_DATA, (u32)(Data));
    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN2_DATA + 4, (u32)(Data >> 32));
}

u64 XFwd_fft_Get_in2(XFwd_fft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN2_DATA);
    Data += (u64)XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IN2_DATA + 4) << 32;
    return Data;
}

void XFwd_fft_Set_out_r(XFwd_fft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_OUT_R_DATA, (u32)(Data));
    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFwd_fft_Get_out_r(XFwd_fft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_OUT_R_DATA);
    Data += (u64)XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XFwd_fft_Set_ctrl1_reg(XFwd_fft *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_CTRL1_REG_DATA, Data);
}

u32 XFwd_fft_Get_ctrl1_reg(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_CTRL1_REG_DATA);
    return Data;
}

void XFwd_fft_Set_ctrl2_reg(XFwd_fft *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_CTRL2_REG_DATA, Data);
}

u32 XFwd_fft_Get_ctrl2_reg(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_CTRL2_REG_DATA);
    return Data;
}

void XFwd_fft_Set_layer1_reg(XFwd_fft *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_LAYER1_REG_DATA, Data);
}

u32 XFwd_fft_Get_layer1_reg(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_LAYER1_REG_DATA);
    return Data;
}

void XFwd_fft_Set_layer2_reg(XFwd_fft *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_LAYER2_REG_DATA, Data);
}

u32 XFwd_fft_Get_layer2_reg(XFwd_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_LAYER2_REG_DATA);
    return Data;
}

void XFwd_fft_InterruptGlobalEnable(XFwd_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_GIE, 1);
}

void XFwd_fft_InterruptGlobalDisable(XFwd_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_GIE, 0);
}

void XFwd_fft_InterruptEnable(XFwd_fft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IER);
    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XFwd_fft_InterruptDisable(XFwd_fft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IER);
    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XFwd_fft_InterruptClear(XFwd_fft *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFwd_fft_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XFwd_fft_InterruptGetEnabled(XFwd_fft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_IER);
}

u32 XFwd_fft_InterruptGetStatus(XFwd_fft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFwd_fft_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFWD_FFT_CTRL_BUS_ADDR_ISR);
}

