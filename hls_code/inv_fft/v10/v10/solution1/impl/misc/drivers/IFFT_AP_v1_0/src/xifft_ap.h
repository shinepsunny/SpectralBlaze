// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XIFFT_AP_H
#define XIFFT_AP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xifft_ap_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Ctrl_bus_BaseAddress;
} XIfft_ap_Config;
#endif

typedef struct {
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XIfft_ap;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XIfft_ap_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XIfft_ap_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XIfft_ap_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XIfft_ap_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XIfft_ap_Initialize(XIfft_ap *InstancePtr, u16 DeviceId);
XIfft_ap_Config* XIfft_ap_LookupConfig(u16 DeviceId);
int XIfft_ap_CfgInitialize(XIfft_ap *InstancePtr, XIfft_ap_Config *ConfigPtr);
#else
int XIfft_ap_Initialize(XIfft_ap *InstancePtr, const char* InstanceName);
int XIfft_ap_Release(XIfft_ap *InstancePtr);
#endif

void XIfft_ap_Start(XIfft_ap *InstancePtr);
u32 XIfft_ap_IsDone(XIfft_ap *InstancePtr);
u32 XIfft_ap_IsIdle(XIfft_ap *InstancePtr);
u32 XIfft_ap_IsReady(XIfft_ap *InstancePtr);
void XIfft_ap_Continue(XIfft_ap *InstancePtr);
void XIfft_ap_EnableAutoRestart(XIfft_ap *InstancePtr);
void XIfft_ap_DisableAutoRestart(XIfft_ap *InstancePtr);

void XIfft_ap_Set_in_r(XIfft_ap *InstancePtr, u64 Data);
u64 XIfft_ap_Get_in_r(XIfft_ap *InstancePtr);
void XIfft_ap_Set_out1(XIfft_ap *InstancePtr, u64 Data);
u64 XIfft_ap_Get_out1(XIfft_ap *InstancePtr);
void XIfft_ap_Set_out2(XIfft_ap *InstancePtr, u64 Data);
u64 XIfft_ap_Get_out2(XIfft_ap *InstancePtr);
void XIfft_ap_Set_ctrl1_regp(XIfft_ap *InstancePtr, u32 Data);
u32 XIfft_ap_Get_ctrl1_regp(XIfft_ap *InstancePtr);
void XIfft_ap_Set_ctrl2_regp(XIfft_ap *InstancePtr, u32 Data);
u32 XIfft_ap_Get_ctrl2_regp(XIfft_ap *InstancePtr);
void XIfft_ap_Set_layer1_regp(XIfft_ap *InstancePtr, u32 Data);
u32 XIfft_ap_Get_layer1_regp(XIfft_ap *InstancePtr);
void XIfft_ap_Set_layer2_regp(XIfft_ap *InstancePtr, u32 Data);
u32 XIfft_ap_Get_layer2_regp(XIfft_ap *InstancePtr);
void XIfft_ap_Set_actp_regp(XIfft_ap *InstancePtr, u32 Data);
u32 XIfft_ap_Get_actp_regp(XIfft_ap *InstancePtr);

void XIfft_ap_InterruptGlobalEnable(XIfft_ap *InstancePtr);
void XIfft_ap_InterruptGlobalDisable(XIfft_ap *InstancePtr);
void XIfft_ap_InterruptEnable(XIfft_ap *InstancePtr, u32 Mask);
void XIfft_ap_InterruptDisable(XIfft_ap *InstancePtr, u32 Mask);
void XIfft_ap_InterruptClear(XIfft_ap *InstancePtr, u32 Mask);
u32 XIfft_ap_InterruptGetEnabled(XIfft_ap *InstancePtr);
u32 XIfft_ap_InterruptGetStatus(XIfft_ap *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
