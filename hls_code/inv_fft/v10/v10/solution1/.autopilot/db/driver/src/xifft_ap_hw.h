// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// ctrl_bus
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of in_r
//        bit 31~0 - in_r[31:0] (Read/Write)
// 0x14 : Data signal of in_r
//        bit 31~0 - in_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out1
//        bit 31~0 - out1[31:0] (Read/Write)
// 0x20 : Data signal of out1
//        bit 31~0 - out1[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of out2
//        bit 31~0 - out2[31:0] (Read/Write)
// 0x2c : Data signal of out2
//        bit 31~0 - out2[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of ctrl1_regp
//        bit 31~0 - ctrl1_regp[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of ctrl2_regp
//        bit 31~0 - ctrl2_regp[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of layer1_regp
//        bit 31~0 - layer1_regp[31:0] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of layer2_regp
//        bit 31~0 - layer2_regp[31:0] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of actp_regp
//        bit 31~0 - actp_regp[31:0] (Read/Write)
// 0x58 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XIFFT_AP_CTRL_BUS_ADDR_AP_CTRL          0x00
#define XIFFT_AP_CTRL_BUS_ADDR_GIE              0x04
#define XIFFT_AP_CTRL_BUS_ADDR_IER              0x08
#define XIFFT_AP_CTRL_BUS_ADDR_ISR              0x0c
#define XIFFT_AP_CTRL_BUS_ADDR_IN_R_DATA        0x10
#define XIFFT_AP_CTRL_BUS_BITS_IN_R_DATA        64
#define XIFFT_AP_CTRL_BUS_ADDR_OUT1_DATA        0x1c
#define XIFFT_AP_CTRL_BUS_BITS_OUT1_DATA        64
#define XIFFT_AP_CTRL_BUS_ADDR_OUT2_DATA        0x28
#define XIFFT_AP_CTRL_BUS_BITS_OUT2_DATA        64
#define XIFFT_AP_CTRL_BUS_ADDR_CTRL1_REGP_DATA  0x34
#define XIFFT_AP_CTRL_BUS_BITS_CTRL1_REGP_DATA  32
#define XIFFT_AP_CTRL_BUS_ADDR_CTRL2_REGP_DATA  0x3c
#define XIFFT_AP_CTRL_BUS_BITS_CTRL2_REGP_DATA  32
#define XIFFT_AP_CTRL_BUS_ADDR_LAYER1_REGP_DATA 0x44
#define XIFFT_AP_CTRL_BUS_BITS_LAYER1_REGP_DATA 32
#define XIFFT_AP_CTRL_BUS_ADDR_LAYER2_REGP_DATA 0x4c
#define XIFFT_AP_CTRL_BUS_BITS_LAYER2_REGP_DATA 32
#define XIFFT_AP_CTRL_BUS_ADDR_ACTP_REGP_DATA   0x54
#define XIFFT_AP_CTRL_BUS_BITS_ACTP_REGP_DATA   32

