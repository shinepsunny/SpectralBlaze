// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of in1
//        bit 31~0 - in1[31:0] (Read/Write)
// 0x14 : Data signal of in1
//        bit 31~0 - in1[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of in2
//        bit 31~0 - in2[31:0] (Read/Write)
// 0x20 : Data signal of in2
//        bit 31~0 - in2[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x2c : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of ctrl1_reg
//        bit 31~0 - ctrl1_reg[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of ctrl2_reg
//        bit 31~0 - ctrl2_reg[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of layer1_reg
//        bit 31~0 - layer1_reg[31:0] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of layer2_reg
//        bit 31~0 - layer2_reg[31:0] (Read/Write)
// 0x50 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CTRL_BUS_ADDR_AP_CTRL         0x00
#define CTRL_BUS_ADDR_GIE             0x04
#define CTRL_BUS_ADDR_IER             0x08
#define CTRL_BUS_ADDR_ISR             0x0c
#define CTRL_BUS_ADDR_IN1_DATA        0x10
#define CTRL_BUS_BITS_IN1_DATA        64
#define CTRL_BUS_ADDR_IN2_DATA        0x1c
#define CTRL_BUS_BITS_IN2_DATA        64
#define CTRL_BUS_ADDR_OUT_R_DATA      0x28
#define CTRL_BUS_BITS_OUT_R_DATA      64
#define CTRL_BUS_ADDR_CTRL1_REG_DATA  0x34
#define CTRL_BUS_BITS_CTRL1_REG_DATA  32
#define CTRL_BUS_ADDR_CTRL2_REG_DATA  0x3c
#define CTRL_BUS_BITS_CTRL2_REG_DATA  32
#define CTRL_BUS_ADDR_LAYER1_REG_DATA 0x44
#define CTRL_BUS_BITS_LAYER1_REG_DATA 32
#define CTRL_BUS_ADDR_LAYER2_REG_DATA 0x4c
#define CTRL_BUS_BITS_LAYER2_REG_DATA 32
