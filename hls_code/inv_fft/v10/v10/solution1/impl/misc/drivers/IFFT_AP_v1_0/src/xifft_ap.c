// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xifft_ap.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XIfft_ap_CfgInitialize(XIfft_ap *InstancePtr, XIfft_ap_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XIfft_ap_Start(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XIfft_ap_IsDone(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XIfft_ap_IsIdle(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XIfft_ap_IsReady(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XIfft_ap_Continue(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL, Data | 0x10);
}

void XIfft_ap_EnableAutoRestart(XIfft_ap *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XIfft_ap_DisableAutoRestart(XIfft_ap *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XIfft_ap_Set_in_r(XIfft_ap *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IN_R_DATA, (u32)(Data));
    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XIfft_ap_Get_in_r(XIfft_ap *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IN_R_DATA);
    Data += (u64)XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XIfft_ap_Set_out1(XIfft_ap *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT1_DATA, (u32)(Data));
    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT1_DATA + 4, (u32)(Data >> 32));
}

u64 XIfft_ap_Get_out1(XIfft_ap *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT1_DATA);
    Data += (u64)XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT1_DATA + 4) << 32;
    return Data;
}

void XIfft_ap_Set_out2(XIfft_ap *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT2_DATA, (u32)(Data));
    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT2_DATA + 4, (u32)(Data >> 32));
}

u64 XIfft_ap_Get_out2(XIfft_ap *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT2_DATA);
    Data += (u64)XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_OUT2_DATA + 4) << 32;
    return Data;
}

void XIfft_ap_Set_ctrl1_regp(XIfft_ap *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_CTRL1_REGP_DATA, Data);
}

u32 XIfft_ap_Get_ctrl1_regp(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_CTRL1_REGP_DATA);
    return Data;
}

void XIfft_ap_Set_ctrl2_regp(XIfft_ap *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_CTRL2_REGP_DATA, Data);
}

u32 XIfft_ap_Get_ctrl2_regp(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_CTRL2_REGP_DATA);
    return Data;
}

void XIfft_ap_Set_layer1_regp(XIfft_ap *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_LAYER1_REGP_DATA, Data);
}

u32 XIfft_ap_Get_layer1_regp(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_LAYER1_REGP_DATA);
    return Data;
}

void XIfft_ap_Set_layer2_regp(XIfft_ap *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_LAYER2_REGP_DATA, Data);
}

u32 XIfft_ap_Get_layer2_regp(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_LAYER2_REGP_DATA);
    return Data;
}

void XIfft_ap_Set_actp_regp(XIfft_ap *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_ACTP_REGP_DATA, Data);
}

u32 XIfft_ap_Get_actp_regp(XIfft_ap *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_ACTP_REGP_DATA);
    return Data;
}

void XIfft_ap_InterruptGlobalEnable(XIfft_ap *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_GIE, 1);
}

void XIfft_ap_InterruptGlobalDisable(XIfft_ap *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_GIE, 0);
}

void XIfft_ap_InterruptEnable(XIfft_ap *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IER);
    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XIfft_ap_InterruptDisable(XIfft_ap *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IER);
    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XIfft_ap_InterruptClear(XIfft_ap *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_ap_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XIfft_ap_InterruptGetEnabled(XIfft_ap *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_IER);
}

u32 XIfft_ap_InterruptGetStatus(XIfft_ap *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XIfft_ap_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIFFT_AP_CTRL_BUS_ADDR_ISR);
}

