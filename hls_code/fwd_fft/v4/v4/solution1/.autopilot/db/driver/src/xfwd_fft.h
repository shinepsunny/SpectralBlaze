// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFWD_FFT_H
#define XFWD_FFT_H

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
#include "xfwd_fft_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XFwd_fft_Config;
#endif

typedef struct {
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XFwd_fft;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFwd_fft_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFwd_fft_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFwd_fft_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFwd_fft_ReadReg(BaseAddress, RegOffset) \
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
int XFwd_fft_Initialize(XFwd_fft *InstancePtr, u16 DeviceId);
XFwd_fft_Config* XFwd_fft_LookupConfig(u16 DeviceId);
int XFwd_fft_CfgInitialize(XFwd_fft *InstancePtr, XFwd_fft_Config *ConfigPtr);
#else
int XFwd_fft_Initialize(XFwd_fft *InstancePtr, const char* InstanceName);
int XFwd_fft_Release(XFwd_fft *InstancePtr);
#endif

void XFwd_fft_Start(XFwd_fft *InstancePtr);
u32 XFwd_fft_IsDone(XFwd_fft *InstancePtr);
u32 XFwd_fft_IsIdle(XFwd_fft *InstancePtr);
u32 XFwd_fft_IsReady(XFwd_fft *InstancePtr);
void XFwd_fft_EnableAutoRestart(XFwd_fft *InstancePtr);
void XFwd_fft_DisableAutoRestart(XFwd_fft *InstancePtr);

void XFwd_fft_Set_in1(XFwd_fft *InstancePtr, u64 Data);
u64 XFwd_fft_Get_in1(XFwd_fft *InstancePtr);
void XFwd_fft_Set_in2(XFwd_fft *InstancePtr, u64 Data);
u64 XFwd_fft_Get_in2(XFwd_fft *InstancePtr);
void XFwd_fft_Set_out_r(XFwd_fft *InstancePtr, u64 Data);
u64 XFwd_fft_Get_out_r(XFwd_fft *InstancePtr);
void XFwd_fft_Set_ctrl1_reg(XFwd_fft *InstancePtr, u32 Data);
u32 XFwd_fft_Get_ctrl1_reg(XFwd_fft *InstancePtr);
void XFwd_fft_Set_ctrl2_reg(XFwd_fft *InstancePtr, u32 Data);
u32 XFwd_fft_Get_ctrl2_reg(XFwd_fft *InstancePtr);
void XFwd_fft_Set_layer1_reg(XFwd_fft *InstancePtr, u32 Data);
u32 XFwd_fft_Get_layer1_reg(XFwd_fft *InstancePtr);
void XFwd_fft_Set_layer2_reg(XFwd_fft *InstancePtr, u32 Data);
u32 XFwd_fft_Get_layer2_reg(XFwd_fft *InstancePtr);

void XFwd_fft_InterruptGlobalEnable(XFwd_fft *InstancePtr);
void XFwd_fft_InterruptGlobalDisable(XFwd_fft *InstancePtr);
void XFwd_fft_InterruptEnable(XFwd_fft *InstancePtr, u32 Mask);
void XFwd_fft_InterruptDisable(XFwd_fft *InstancePtr, u32 Mask);
void XFwd_fft_InterruptClear(XFwd_fft *InstancePtr, u32 Mask);
u32 XFwd_fft_InterruptGetEnabled(XFwd_fft *InstancePtr);
u32 XFwd_fft_InterruptGetStatus(XFwd_fft *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
