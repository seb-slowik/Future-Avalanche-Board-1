//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Feb 27 16:55:15 2023
// Version: 2022.2 2022.2.0.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// BaseDesign
module BaseDesign(
    // Inputs
    PUSH_BTN_1,
    PUSH_BTN_2,
    RX,
    TCK,
    TDI,
    TMS,
    TRSTB,
    USER_RST,
    // Outputs
    LED_1,
    LED_2,
    LED_3,
    LED_4,
    TDO,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  PUSH_BTN_1;
input  PUSH_BTN_2;
input  RX;
input  TCK;
input  TDI;
input  TMS;
input  TRSTB;
input  USER_RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output LED_1;
output LED_2;
output LED_3;
output LED_4;
output TDO;
output TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CoreJTAGDebug_0_TGT_TCK_0;
wire          CoreJTAGDebug_0_TGT_TDI_0;
wire          CoreJTAGDebug_0_TGT_TMS_0;
wire          CoreJTAGDebug_0_TGT_TRSTN_0;
wire          CoreRESET_PF_0_FABRIC_RESET_N;
wire          CoreTimer_0_TIMINT;
wire          CoreTimer_1_TIMINT;
wire   [0:0]  LED_1_net_0;
wire   [1:1]  LED_2_net_0;
wire   [2:2]  LED_3_net_0;
wire   [3:3]  LED_4_net_0;
wire          MIV_ESS_0_APB_3_mTARGET_PENABLE;
wire   [31:0] MIV_ESS_0_APB_3_mTARGET_PRDATA;
wire          MIV_ESS_0_APB_3_mTARGET_PSELx;
wire   [31:0] MIV_ESS_0_APB_3_mTARGET_PWDATA;
wire          MIV_ESS_0_APB_3_mTARGET_PWRITE;
wire          MIV_ESS_0_APB_4_mTARGET_PENABLE;
wire   [31:0] MIV_ESS_0_APB_4_mTARGET_PRDATA;
wire          MIV_ESS_0_APB_4_mTARGET_PSELx;
wire   [31:0] MIV_ESS_0_APB_4_mTARGET_PWDATA;
wire          MIV_ESS_0_APB_4_mTARGET_PWRITE;
wire   [31:0] MIV_RV32_CFG1_0_AHBL_M_SLV_HADDR;
wire   [2:0]  MIV_RV32_CFG1_0_AHBL_M_SLV_HBURST;
wire          MIV_RV32_CFG1_0_AHBL_M_SLV_HMASTLOCK;
wire   [3:0]  MIV_RV32_CFG1_0_AHBL_M_SLV_HPROT;
wire   [31:0] MIV_RV32_CFG1_0_AHBL_M_SLV_HRDATA;
wire          MIV_RV32_CFG1_0_AHBL_M_SLV_HREADYOUT;
wire          MIV_RV32_CFG1_0_AHBL_M_SLV_HSELx;
wire   [2:0]  MIV_RV32_CFG1_0_AHBL_M_SLV_HSIZE;
wire   [1:0]  MIV_RV32_CFG1_0_AHBL_M_SLV_HTRANS;
wire   [31:0] MIV_RV32_CFG1_0_AHBL_M_SLV_HWDATA;
wire          MIV_RV32_CFG1_0_AHBL_M_SLV_HWRITE;
wire   [31:0] MIV_RV32_CFG1_0_APB_MSTR_PADDR;
wire          MIV_RV32_CFG1_0_APB_MSTR_PENABLE;
wire   [31:0] MIV_RV32_CFG1_0_APB_MSTR_PRDATA;
wire          MIV_RV32_CFG1_0_APB_MSTR_PREADY;
wire          MIV_RV32_CFG1_0_APB_MSTR_PSELx;
wire          MIV_RV32_CFG1_0_APB_MSTR_PSLVERR;
wire   [31:0] MIV_RV32_CFG1_0_APB_MSTR_PWDATA;
wire          MIV_RV32_CFG1_0_APB_MSTR_PWRITE;
wire          MIV_RV32_CFG1_0_JTAG_TDO;
wire          PF_CCC_0_OUT0_FABCLK_0;
wire          PF_CCC_0_PLL_LOCK_0;
wire          PF_INIT_MONITOR_0_DEVICE_INIT_DONE;
wire          PF_INIT_MONITOR_0_FABRIC_POR_N;
wire          PF_OSC_0_RCOSC_160MHZ_GL;
wire          PUSH_BTN_1;
wire          PUSH_BTN_2;
wire          RX;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          USER_RST;
wire          TDO_net_1;
wire          TX_net_1;
wire          LED_1_net_1;
wire          LED_2_net_1;
wire          LED_3_net_1;
wire          LED_4_net_1;
wire   [3:0]  GPIO_IN_net_0;
wire   [3:0]  GPIO_OUT_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [3:2]  GPIO_IN_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] MIV_ESS_0_APB_3_mTARGET_PADDR;
wire   [4:2]  MIV_ESS_0_APB_3_mTARGET_PADDR_0;
wire   [4:2]  MIV_ESS_0_APB_3_mTARGET_PADDR_0_4to2;
wire   [31:0] MIV_ESS_0_APB_4_mTARGET_PADDR;
wire   [4:2]  MIV_ESS_0_APB_4_mTARGET_PADDR_0;
wire   [4:2]  MIV_ESS_0_APB_4_mTARGET_PADDR_0_4to2;
wire   [1:0]  MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP;
wire          MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP_0;
wire   [0:0]  MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP_0_0to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net             = 1'b1;
assign GND_net             = 1'b0;
assign GPIO_IN_const_net_0 = 2'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1   = TDO_net_0;
assign TDO         = TDO_net_1;
assign TX_net_1    = TX_net_0;
assign TX          = TX_net_1;
assign LED_1_net_1 = LED_1_net_0[0];
assign LED_1       = LED_1_net_1;
assign LED_2_net_1 = LED_2_net_0[1];
assign LED_2       = LED_2_net_1;
assign LED_3_net_1 = LED_3_net_0[2];
assign LED_3       = LED_3_net_1;
assign LED_4_net_1 = LED_4_net_0[3];
assign LED_4       = LED_4_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign LED_1_net_0[0] = GPIO_OUT_net_0[0:0];
assign LED_2_net_0[1] = GPIO_OUT_net_0[1:1];
assign LED_3_net_0[2] = GPIO_OUT_net_0[2:2];
assign LED_4_net_0[3] = GPIO_OUT_net_0[3:3];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign GPIO_IN_net_0 = { 2'h0 , PUSH_BTN_2 , PUSH_BTN_1 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign MIV_ESS_0_APB_3_mTARGET_PADDR_0 = { MIV_ESS_0_APB_3_mTARGET_PADDR_0_4to2 };
assign MIV_ESS_0_APB_3_mTARGET_PADDR_0_4to2 = MIV_ESS_0_APB_3_mTARGET_PADDR[4:2];

assign MIV_ESS_0_APB_4_mTARGET_PADDR_0 = { MIV_ESS_0_APB_4_mTARGET_PADDR_0_4to2 };
assign MIV_ESS_0_APB_4_mTARGET_PADDR_0_4to2 = MIV_ESS_0_APB_4_mTARGET_PADDR[4:2];

assign MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP_0 = { MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP_0_0to0 };
assign MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP_0_0to0 = MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP[0:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreJTAGDebug_0
CoreJTAGDebug_0 CoreJTAGDebug_0_inst_0(
        // Inputs
        .TRSTB       ( TRSTB ),
        .TCK         ( TCK ),
        .TMS         ( TMS ),
        .TDI         ( TDI ),
        .TGT_TDO_0   ( MIV_RV32_CFG1_0_JTAG_TDO ),
        // Outputs
        .TDO         ( TDO_net_0 ),
        .TGT_TCK_0   ( CoreJTAGDebug_0_TGT_TCK_0 ),
        .TGT_TMS_0   ( CoreJTAGDebug_0_TGT_TMS_0 ),
        .TGT_TDI_0   ( CoreJTAGDebug_0_TGT_TDI_0 ),
        .TGT_TRSTN_0 ( CoreJTAGDebug_0_TGT_TRSTN_0 ) 
        );

//--------CoreRESET_PF_0
CoreRESET_PF_0 CoreRESET_PF_0_inst_0(
        // Inputs
        .CLK                ( PF_CCC_0_OUT0_FABCLK_0 ),
        .EXT_RST_N          ( USER_RST ),
        .BANK_x_VDDI_STATUS ( VCC_net ),
        .BANK_y_VDDI_STATUS ( VCC_net ),
        .PLL_LOCK           ( PF_CCC_0_PLL_LOCK_0 ),
        .SS_BUSY            ( GND_net ),
        .INIT_DONE          ( PF_INIT_MONITOR_0_DEVICE_INIT_DONE ),
        .FF_US_RESTORE      ( GND_net ),
        .FPGA_POR_N         ( PF_INIT_MONITOR_0_FABRIC_POR_N ),
        // Outputs
        .PLL_POWERDOWN_B    (  ),
        .FABRIC_RESET_N     ( CoreRESET_PF_0_FABRIC_RESET_N ) 
        );

//--------CoreTimer_0
CoreTimer_0 CoreTimer_0_inst_0(
        // Inputs
        .PCLK    ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETn ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .PSEL    ( MIV_ESS_0_APB_3_mTARGET_PSELx ),
        .PENABLE ( MIV_ESS_0_APB_3_mTARGET_PENABLE ),
        .PADDR   ( MIV_ESS_0_APB_3_mTARGET_PADDR_0 ),
        .PWRITE  ( MIV_ESS_0_APB_3_mTARGET_PWRITE ),
        .PWDATA  ( MIV_ESS_0_APB_3_mTARGET_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_0_TIMINT ),
        .PRDATA  ( MIV_ESS_0_APB_3_mTARGET_PRDATA ) 
        );

//--------CoreTimer_1
CoreTimer_1 CoreTimer_1_inst_0(
        // Inputs
        .PCLK    ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETn ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .PSEL    ( MIV_ESS_0_APB_4_mTARGET_PSELx ),
        .PENABLE ( MIV_ESS_0_APB_4_mTARGET_PENABLE ),
        .PADDR   ( MIV_ESS_0_APB_4_mTARGET_PADDR_0 ),
        .PWRITE  ( MIV_ESS_0_APB_4_mTARGET_PWRITE ),
        .PWDATA  ( MIV_ESS_0_APB_4_mTARGET_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_1_TIMINT ),
        .PRDATA  ( MIV_ESS_0_APB_4_mTARGET_PRDATA ) 
        );

//--------MIV_ESS_0
MIV_ESS_0 MIV_ESS_0_inst_0(
        // Inputs
        .PCLK           ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETN        ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .GPIO_IN        ( GPIO_IN_net_0 ),
        .UART_RX        ( RX ),
        .APB_T0_PADDR   ( MIV_RV32_CFG1_0_APB_MSTR_PADDR ),
        .APB_T0_PENABLE ( MIV_RV32_CFG1_0_APB_MSTR_PENABLE ),
        .APB_T0_PWRITE  ( MIV_RV32_CFG1_0_APB_MSTR_PWRITE ),
        .APB_T0_PWDATA  ( MIV_RV32_CFG1_0_APB_MSTR_PWDATA ),
        .APB_T0_PSEL    ( MIV_RV32_CFG1_0_APB_MSTR_PSELx ),
        .APB_I3_PRDATA  ( MIV_ESS_0_APB_3_mTARGET_PRDATA ),
        .APB_I3_PREADY  ( VCC_net ), // tied to 1'b1 from definition
        .APB_I3_PSLVERR ( GND_net ), // tied to 1'b0 from definition
        .APB_I4_PRDATA  ( MIV_ESS_0_APB_4_mTARGET_PRDATA ),
        .APB_I4_PREADY  ( VCC_net ), // tied to 1'b1 from definition
        .APB_I4_PSLVERR ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .GPIO_OUT       ( GPIO_OUT_net_0 ),
        .GPIO_INT       (  ),
        .UART_TX        ( TX_net_0 ),
        .APB_T0_PRDATA  ( MIV_RV32_CFG1_0_APB_MSTR_PRDATA ),
        .APB_T0_PREADY  ( MIV_RV32_CFG1_0_APB_MSTR_PREADY ),
        .APB_T0_PSLVERR ( MIV_RV32_CFG1_0_APB_MSTR_PSLVERR ),
        .APB_I3_PADDR   ( MIV_ESS_0_APB_3_mTARGET_PADDR ),
        .APB_I3_PENABLE ( MIV_ESS_0_APB_3_mTARGET_PENABLE ),
        .APB_I3_PWRITE  ( MIV_ESS_0_APB_3_mTARGET_PWRITE ),
        .APB_I3_PWDATA  ( MIV_ESS_0_APB_3_mTARGET_PWDATA ),
        .APB_I3_PSEL    ( MIV_ESS_0_APB_3_mTARGET_PSELx ),
        .APB_I4_PADDR   ( MIV_ESS_0_APB_4_mTARGET_PADDR ),
        .APB_I4_PENABLE ( MIV_ESS_0_APB_4_mTARGET_PENABLE ),
        .APB_I4_PWRITE  ( MIV_ESS_0_APB_4_mTARGET_PWRITE ),
        .APB_I4_PWDATA  ( MIV_ESS_0_APB_4_mTARGET_PWDATA ),
        .APB_I4_PSEL    ( MIV_ESS_0_APB_4_mTARGET_PSELx ) 
        );

//--------MIV_RV32_CFG1_0
MIV_RV32_CFG1_0 MIV_RV32_CFG1_0_inst_0(
        // Inputs
        .CLK                ( PF_CCC_0_OUT0_FABCLK_0 ),
        .RESETN             ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .APB_MSTR_PRDATA    ( MIV_RV32_CFG1_0_APB_MSTR_PRDATA ),
        .APB_MSTR_PREADY    ( MIV_RV32_CFG1_0_APB_MSTR_PREADY ),
        .APB_MSTR_PSLVERR   ( MIV_RV32_CFG1_0_APB_MSTR_PSLVERR ),
        .AHB_MSTR_HRDATA    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HRDATA ),
        .AHB_MSTR_HRESP     ( MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP_0 ),
        .AHB_MSTR_HREADY    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HREADYOUT ),
        .JTAG_TRSTN         ( CoreJTAGDebug_0_TGT_TRSTN_0 ),
        .JTAG_TCK           ( CoreJTAGDebug_0_TGT_TCK_0 ),
        .JTAG_TDI           ( CoreJTAGDebug_0_TGT_TDI_0 ),
        .JTAG_TMS           ( CoreJTAGDebug_0_TGT_TMS_0 ),
        .EXT_IRQ            ( CoreTimer_1_TIMINT ),
        .MSYS_EI            ( CoreTimer_0_TIMINT ),
        // Outputs
        .TIME_COUNT_OUT     (  ),
        .APB_MSTR_PADDR     ( MIV_RV32_CFG1_0_APB_MSTR_PADDR ),
        .APB_MSTR_PENABLE   ( MIV_RV32_CFG1_0_APB_MSTR_PENABLE ),
        .APB_MSTR_PWRITE    ( MIV_RV32_CFG1_0_APB_MSTR_PWRITE ),
        .APB_MSTR_PWDATA    ( MIV_RV32_CFG1_0_APB_MSTR_PWDATA ),
        .APB_MSTR_PSEL      ( MIV_RV32_CFG1_0_APB_MSTR_PSELx ),
        .AHB_MSTR_HADDR     ( MIV_RV32_CFG1_0_AHBL_M_SLV_HADDR ),
        .AHB_MSTR_HTRANS    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HTRANS ),
        .AHB_MSTR_HWRITE    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HWRITE ),
        .AHB_MSTR_HSIZE     ( MIV_RV32_CFG1_0_AHBL_M_SLV_HSIZE ),
        .AHB_MSTR_HBURST    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HBURST ),
        .AHB_MSTR_HPROT     ( MIV_RV32_CFG1_0_AHBL_M_SLV_HPROT ),
        .AHB_MSTR_HWDATA    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HWDATA ),
        .AHB_MSTR_HMASTLOCK ( MIV_RV32_CFG1_0_AHBL_M_SLV_HMASTLOCK ),
        .AHB_MSTR_HSEL      ( MIV_RV32_CFG1_0_AHBL_M_SLV_HSELx ),
        .JTAG_TDO           ( MIV_RV32_CFG1_0_JTAG_TDO ),
        .JTAG_TDO_DR        (  ),
        .EXT_RESETN         (  ) 
        );

//--------PF_CCC_0
PF_CCC_0 PF_CCC_0_inst_0(
        // Inputs
        .REF_CLK_0     ( PF_OSC_0_RCOSC_160MHZ_GL ),
        // Outputs
        .OUT0_FABCLK_0 ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0    ( PF_CCC_0_PLL_LOCK_0 ) 
        );

//--------PF_INIT_MONITOR_0
PF_INIT_MONITOR_0 PF_INIT_MONITOR_0_inst_0(
        // Outputs
        .FABRIC_POR_N               ( PF_INIT_MONITOR_0_FABRIC_POR_N ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           ( PF_INIT_MONITOR_0_DEVICE_INIT_DONE ),
        .XCVR_INIT_DONE             (  ),
        .USRAM_INIT_FROM_SNVM_DONE  (  ),
        .USRAM_INIT_FROM_UPROM_DONE (  ),
        .USRAM_INIT_FROM_SPI_DONE   (  ),
        .SRAM_INIT_FROM_SNVM_DONE   (  ),
        .SRAM_INIT_FROM_UPROM_DONE  (  ),
        .SRAM_INIT_FROM_SPI_DONE    (  ),
        .AUTOCALIB_DONE             (  ) 
        );

//--------PF_OSC_0
PF_OSC_0 PF_OSC_0_inst_0(
        // Outputs
        .RCOSC_160MHZ_GL ( PF_OSC_0_RCOSC_160MHZ_GL ) 
        );

//--------PF_SRAM_0
PF_SRAM_0 PF_SRAM_0_inst_0(
        // Inputs
        .HCLK      ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN   ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .HADDR     ( MIV_RV32_CFG1_0_AHBL_M_SLV_HADDR ),
        .HTRANS    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HTRANS ),
        .HWRITE    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HWRITE ),
        .HSIZE     ( MIV_RV32_CFG1_0_AHBL_M_SLV_HSIZE ),
        .HBURST    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HBURST ),
        .HWDATA    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HWDATA ),
        .HSEL      ( MIV_RV32_CFG1_0_AHBL_M_SLV_HSELx ),
        .HREADYIN  ( VCC_net ), // tied to 1'b1 from definition
        // Outputs
        .HRDATA    ( MIV_RV32_CFG1_0_AHBL_M_SLV_HRDATA ),
        .HREADYOUT ( MIV_RV32_CFG1_0_AHBL_M_SLV_HREADYOUT ),
        .HRESP     ( MIV_RV32_CFG1_0_AHBL_M_SLV_HRESP ) 
        );


endmodule
