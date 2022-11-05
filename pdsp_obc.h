/** @file pdsp_obc.h
 *
 * @author Falk Kyburz
 * @brief On board charger power train control module.
 *
 * @copyright
 * This is free and unencumbered software released into the public domain.
 *
 * Anyone is free to copy, modify, publish, use, compile, sell, or
 * distribute this software, either in source code form or as a compiled
 * binary, for any purpose, commercial or non-commercial, and by any
 * means.
 *
 * In jurisdictions that recognize copyright laws, the author or authors
 * of this software dedicate any and all copyright interest in the
 * software to the public domain. We make this dedication for the benefit
 * of the public at large and to the detriment of our heirs and
 * successors. We intend this dedication to be an overt act of
 * relinquishment in perpetuity of all present and future rights to this
 * software under copyright law.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * For more information, please refer to <https://unlicense.org>
 */

#ifndef PDSP_OBC_H
#define PDSP_OBC_H

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include "pdsp.h"
#include <math.h>
#include <stdbool.h>
#include <stddef.h>

/*==============================================================================
 CONFIGURATION
 =============================================================================*/

//#define BOARD_HW_3PH    // Board configured for EU, 3ph 6SW or 2ph TP
#define BOARD_HW_1PH    // Board configured for US, 3ph interleaved TP
//#define BOARD_HW_800    // 800V output
#define BOARD_HW_400    // 400V output

/*==============================================================================
 DERATING TABLES
 =============================================================================*/

// AC current derating based on AC voltage (linear interpollation)
#ifdef BOARD_HW_3PH
#define DERATE_IAC_VAC_VAC  {80.0f, 175.0f, 277.0f, 285.0f}
#define DERATE_IAC_VAC_IAC { 0.0f,  32.0f,  32.0f,   0.0f}
#endif //BOARD_HW_3PH
#ifdef BOARD_HW_1PH
#define DERATE_IAC_VAC_VAC  {80.0f, 175.0f, 277.0f, 285.0f}
#define DERATE_IAC_VAC_IAC { 0.0f,  80.0f,  80.0f,   0.0f}
#endif //BOARD_HW_1PH

// DC current derating based on DC voltage (precalculate IDC, linear interpollation)
#ifdef BOARD_HW_800
#define DERATE_IDC_VDC_VDC  {450.0f, 470.0f, 860.0f, 890.0f}
#define DERATE_IDC_VDC_IMAX {  0.0f,  36.0f,  36.0f,   0.0f}
#define DERATE_IDC_VDC_PDC  { 22.0f,  22.0f,  22.0f,  22.0f}
#endif //BOARD_HW_800
#ifdef BOARD_HW_400
#define DERATE_IDC_VDC_VDC  {200.0f, 250.0f, 460.0f, 490.0f}
#define DERATE_IDC_VDC_IMAX {  0.0f,  72.0f,  72.0f,   0.0f}
#define DERATE_IDC_VDC_PDC  { 19.2f,  19.2f,  19.2f,  19.2f}
#endif //BOARD_HW_400

// DC current derating based on maximum MOSFET1 temperature (linear interpollation)
#define DERATE_IDC_TMOS1_T     {-40.0f, -30.0f, 120.0f, 150.0f}
#define DERATE_IDC_TMOS1_IDC_K {  1.0f,   1.0f,   1.0f,   0.0f}

// DC current derating based on maximum MOSFET2 temperature (linear interpollation)
#define DERATE_IDC_TMOS2_T     {-40.0f, -30.0f, 120.0f, 150.0f}
#define DERATE_IDC_TMOS2_IDC_K {  1.0f,   1.0f,   1.0f,   0.0f}

// DC current derating based on maximum magnetics temperature (linear interpollation)
#define DERATE_IDC_TMAG_T     {-40.0f, -30.0f, 100.0f, 120.0f}
#define DERATE_IDC_TMAG_IDC_K {  1.0f,   1.0f,   1.0f,   0.0f}

// DC current derating based on coolant temperature (linear interpollation)
#define DERATE_IDC_TCOOL_T     {-40.0f, -30.0f, 75.0f, 85.0f}
#define DERATE_IDC_TCOOL_IDC_K {  0.0f,   1.0f,  1.0f,  0.0f}

// DC current derating based on grid frequency (linear interpollation)
#define DERATE_IDC_FREQ_T     {45.0f, 48.0f, 62.0f, 65.0f}
#define DERATE_IDC_FREQ_IDC_K { 0.0f,  1.0f,  1.0f,  0.0f}

/*==============================================================================
 STATUS REGISTER 
 =============================================================================*/

#define PDSP_STATUS_VOLT_PHASE_A    (1U<<0)    // Phase A available (VA > 60V)
#define PDSP_STATUS_VOLT_PHASE_B    (1U<<1)    // Phase B available (VB > 60V)
#define PDSP_STATUS_VOLT_PHASE_C    (1U<<2)    // Phase C available (VC > 60V)
#define PDSP_STATUS_VOLT_BUS        (1U<<3)    // DC bus available (VBUS > 60V)
#define PDSP_STATUS_VOLT_DC         (1U<<4)    // DC available (VDC > 60V)
#define PDSP_STATUS_RELAY_A         (1U<<5)    // Precharge relay A on
#define PDSP_STATUS_RELAY_B         (1U<<6)    // Precharge relay B on
#define PDSP_STATUS_RELAY_C         (1U<<7)    // Precharge relay B on
#define PDSP_STATUS_RELAY_AB        (1U<<8)    // Relay AB on
#define PDSP_STATUS_RELAY_N         (1U<<9)    // Relay N on
#define PDSP_STATUS_PFC_RUN         (1U<<10)   // PFC running indication
#define PDSP_STATUS_TOPO_MASK       (7U<<11)   // 3 bit mask for topology 
#define PDSP_STATUS_TOPO_1PH_2SW_TP (0U<<11)   // 1 phase grid 2 switch totem pole
#define PDSP_STATUS_TOPO_1PH_6SW_TP (1U<<11)   // 1 phase grid 6 switch totem pole (US)
#define PDSP_STATUS_TOPO_2PH_4SW    (2U<<11)   // 2 phase grid 4 switch
#define PDSP_STATUS_TOPO_3PH_6SW    (3U<<11)   // 3 phase grid 6 switch
#define PDSP_STATUS_LLC_RUN         (1U<<14)   // LLC running indication
#define PDSP_STATUS_LLC_MODE_MASK   (3U<<15)   // 3 bit mask for llc control mode
#define PDSP_STATUS_LLC_MODE_CC     (0U<<15)   // current control mode
#define PDSP_STATUS_LLC_MODE_CV     (1U<<15)   // voltage control mode
#define PDSP_STATUS_LLC_MODE_PFM    (2U<<15)   // pulse frequency control mode
#define PDSP_STATUS_DERATING_VAC    (1U<<16)   // derating due to AC voltage active
#define PDSP_STATUS_DERATING_VDC    (1U<<17)   // derating due to DC voltage active
#define PDSP_STATUS_DERATING_TEMP   (1U<<18)   // derating due to MOS temperature
#define PDSP_STATUS_DERATING_COOL   (1U<<19)   // derating due to coolant temperature
#define PDSP_STATUS_DERATING_FREQ   (1U<<20)   // derating due to AC frequency
#define PDSP_STATUS_SELFTEST_AC_OK  (1U<<21)   // AC selftest status, precharge, set points ok
#define PDSP_STATUS_SELFTEST_DC_OK  (1U<<22)   // DC selftest status, precharge, set points ok
#define PDSP_STATUS_INIT_DONE       (1U<<23)   
#define PDSP_STATUS_UNUSED2         (1U<<24)
#define PDSP_STATUS_UNUSED3         (1U<<25)
#define PDSP_STATUS_UNUSED4         (1U<<26)
#define PDSP_STATUS_UNUSED5         (1U<<27)
#define PDSP_STATUS_UNUSED6         (1U<<28)
#define PDSP_STATUS_UNUSED7         (1U<<29)
#define PDSP_STATUS_UNUSED8         (1U<<30)
#define PDSP_STATUS_FAULT           (1U<<31)   // OR of all faults

/*==============================================================================
 COMMAND REGISTER
 =============================================================================*/

#define PDSP_CMD_DATA_MASK     (0xFFFF<<0)
#define PDSP_CMD_DATA_SHIFT    (0U)
#define PDSP_CMD_ADDR_MASK     (0xFF<<8)
#define PDSP_CMD_ADDR_SHIFT    (8U)
#define PDSP_CMD_MASK          (0xFF<<16)
#define PDSP_CMD_SHIFT         (16U)
#define PDSP_CMD_SELFTEST_INIT (0U)
#define PDSP_CMD_SELFTEST_AC   (1U)
#define PDSP_CMD_SELFTEST_DC   (2U)
#define PDSP_CMD_PFC_LLC_ON    (3U)
#define PDSP_CMD_PFC_LLC_OFF   (4U)
#define PDSP_CMD_WRITE_DATA    (5U)
#define PDSP_CMD_READ_DATA     (6U)

/*==============================================================================
 MEASURMENTS FAULT CODES (4 BIT)
 =============================================================================*/

// #define PDSP_FAULT_MEAS_NO_FAULT   (0U)
// #define PDSP_FAULT_MEAS_OVER       (1U)
// #define PDSP_FAULT_MEAS_UNDER      (2U)
// #define PDSP_FAULT_MEAS_RMS_OVER   (3U)
// #define PDSP_FAULT_MEAS_RMS_UNDER  (4U)
// #define PDSP_FAULT_MEAS_AVG_OVER   (5U)
// #define PDSP_FAULT_MEAS_AVG_UNDER  (6U)
// #define PDSP_FAULT_MEAS_RANGE_HIGH (7U)
// #define PDSP_FAULT_MEAS_RANGE_LOW  (8U)
// #define PDSP_FAULT_MEAS_STUCK_HIGH (9U)
// #define PDSP_FAULT_MEAS_STUCK_LOW  (10U)
// #define PDSP_FAULT_MEAS_ERRATIC    (11U)
// #define PDSP_FAULT_MEAS_QUALITY    (12U)

/** Fault 1 register mask for phase a over voltage. */
#define PDSP_FAULT1_A_VOLT_OVER        (1<<0)
#define PDSP_FAULT1_A_VOLT_UNDER       (1<<1)
#define PDSP_FAULT1_A_VOLT_RMS_OVER    (1<<2)
#define PDSP_FAULT1_A_VOLT_RMS_UNDER   (1<<3)
#define PDSP_FAULT1_A_VOLT_RANGE_HIGH  (1<<4)
#define PDSP_FAULT1_A_VOLT_RANGE_LOW   (1<<5)
#define PDSP_FAULT1_A_VOLT_STUCK_HIGH  (1<<6)
#define PDSP_FAULT1_A_VOLT_STUCK_LOW   (1<<7)
#define PDSP_FAULT1_A_VOLT_ERRATIC     (1<<8)
#define PDSP_FAULT1_A_VOLT_QUALITY     (1<<9)
#define PDSP_FAULT1_A_CURR_OVER        (1<<10)
#define PDSP_FAULT1_A_CURR_UNDER       (1<<11)
#define PDSP_FAULT1_A_CURR_RMS_OVER    (1<<12)
#define PDSP_FAULT1_A_CURR_RMS_UNDER   (1<<13)
#define PDSP_FAULT1_A_CURR_RANGE_HIGH  (1<<14)
#define PDSP_FAULT1_A_CURR_RANGE_LOW   (1<<15)
#define PDSP_FAULT1_A_CURR_STUCK_HIGH  (1<<16)
#define PDSP_FAULT1_A_CURR_STUCK_LOW   (1<<17)
#define PDSP_FAULT1_A_CURR_ERRATIC     (1<<18)
#define PDSP_FAULT1_A_VOLT_QUALITY     (1<<19)
#define PDSP_FAULT1_A_FREQ_OVER        (1<<20)
#define PDSP_FAULT1_A_FREQ_UNDER       (1<<21)
#define PDSP_FAULT1_A_FREQ_ERRATIC     (1<<22)
#define PDSP_FAULT1_A_MOS_HIGH_SHORT   (1<<23)
#define PDSP_FAULT1_A_MOS_LOW_SHORT    (1<<24)
#define PDSP_FAULT1_A_PHASE_LOST       (1<<25)


/** Fault 2 register mask for phase b voltage / current. */
#define PDSP_FAULT2_B_VOLT_OVER        (1<<0)
#define PDSP_FAULT2_B_VOLT_UNDER       (1<<1)
#define PDSP_FAULT2_B_VOLT_RMS_OVER    (1<<2)
#define PDSP_FAULT2_B_VOLT_RMS_UNDER   (1<<3)
#define PDSP_FAULT2_B_VOLT_RANGE_HIGH  (1<<4)
#define PDSP_FAULT2_B_VOLT_RANGE_LOW   (1<<5)
#define PDSP_FAULT2_B_VOLT_STUCK_HIGH  (1<<6)
#define PDSP_FAULT2_B_VOLT_STUCK_LOW   (1<<7)
#define PDSP_FAULT2_B_VOLT_ERRATIC     (1<<8)
#define PDSP_FAULT2_B_VOLT_QUALITY     (1<<9)
#define PDSP_FAULT2_B_CURR_OVER        (1<<10)
#define PDSP_FAULT2_B_CURR_UNDER       (1<<11)
#define PDSP_FAULT2_B_CURR_RMS_OVER    (1<<12)
#define PDSP_FAULT2_B_CURR_RMS_UNDER   (1<<13)
#define PDSP_FAULT2_B_CURR_RANGE_HIGH  (1<<14)
#define PDSP_FAULT2_B_CURR_RANGE_LOW   (1<<15)
#define PDSP_FAULT2_B_CURR_STUCK_HIGH  (1<<16)
#define PDSP_FAULT2_B_CURR_STUCK_LOW   (1<<17)
#define PDSP_FAULT2_B_CURR_ERRATIC     (1<<18)
#define PDSP_FAULT2_B_CURR_QUALITY     (1<<19)
#define PDSP_FAULT2_B_FREQ_OVER        (1<<20)
#define PDSP_FAULT2_B_FREQ_UNDER       (1<<21)
#define PDSP_FAULT2_B_FREQ_ERRATIC     (1<<22)
#define PDSP_FAULT2_B_MOS_HIGH_SHORT   (1<<23)
#define PDSP_FAULT2_B_MOS_LOW_SHORT    (1<<24)
#define PDSP_FAULT2_B_PHASE_LOST       (1<<25)

/** Fault 3 register mask for phase c voltage / current. */
#define PDSP_FAULT3_C_VOLT_OVER        (1<<0)
#define PDSP_FAULT3_C_VOLT_UNDER       (1<<1)
#define PDSP_FAULT3_C_VOLT_RMS_OVER    (1<<2)
#define PDSP_FAULT3_C_VOLT_RMS_UNDER   (1<<3)
#define PDSP_FAULT3_C_VOLT_RANGE_HIGH  (1<<4)
#define PDSP_FAULT3_C_VOLT_RANGE_LOW   (1<<5)
#define PDSP_FAULT3_C_VOLT_STUCK_HIGH  (1<<6)
#define PDSP_FAULT3_C_VOLT_STUCK_LOW   (1<<7)
#define PDSP_FAULT3_C_VOLT_ERRATIC     (1<<8)
#define PDSP_FAULT3_C_VOLT_QUALITY     (1<<9)
#define PDSP_FAULT3_C_CURR_OVER        (1<<10)
#define PDSP_FAULT3_C_CURR_UNDER       (1<<11)
#define PDSP_FAULT3_C_CURR_RMS_OVER    (1<<12)
#define PDSP_FAULT3_C_CURR_RMS_UNDER   (1<<13)
#define PDSP_FAULT3_C_CURR_RANGE_HIGH  (1<<14)
#define PDSP_FAULT3_C_CURR_RANGE_LOW   (1<<15)
#define PDSP_FAULT3_C_CURR_STUCK_HIGH  (1<<16)
#define PDSP_FAULT3_C_CURR_STUCK_LOW   (1<<17)
#define PDSP_FAULT3_C_CURR_ERRATIC     (1<<18)
#define PDSP_FAULT3_C_CURR_QUALITY     (1<<19)
#define PDSP_FAULT3_C_FREQ_OVER        (1<<20)
#define PDSP_FAULT3_C_FREQ_UNDER       (1<<21)
#define PDSP_FAULT3_C_FREQ_ERRATIC     (1<<22)
#define PDSP_FAULT3_C_MOS_HIGH_SHORT   (1<<23)
#define PDSP_FAULT3_C_MOS_LOW_SHORT    (1<<24)
#define PDSP_FAULT3_C_PHASE_LOST       (1<<25)

/** Fault 4 register mask for DC voltage / current. */
#define PDSP_FAULT4_BUS_VOLT_OVER        (1<<0)
#define PDSP_FAULT4_BUS_VOLT_UNDER       (1<<1)
#define PDSP_FAULT4_BUS_VOLT_RANGE_HIGH  (1<<3)
#define PDSP_FAULT4_BUS_VOLT_RANGE_LOW   (1<<4)
#define PDSP_FAULT4_BUS_VOLT_STUCK_HIGH  (1<<5)
#define PDSP_FAULT4_BUS_VOLT_STUCK_LOW   (1<<6)
#define PDSP_FAULT4_BUS_VOLT_ERRATIC     (1<<7)
#define PDSP_FAULT4_BUS2_VOLT_OVER       (1<<0)
#define PDSP_FAULT4_BUS2_VOLT_UNDER      (1<<1)
#define PDSP_FAULT4_BUS2_VOLT_RANGE_HIGH (1<<3)
#define PDSP_FAULT4_BUS2_VOLT_RANGE_LOW  (1<<4)
#define PDSP_FAULT4_BUS2_VOLT_STUCK_HIGH (1<<5)
#define PDSP_FAULT4_BUS2_VOLT_STUCK_LOW  (1<<6)
#define PDSP_FAULT4_BUS2_VOLT_ERRATIC    (1<<7)
#define PDSP_FAULT4_DC_VOLT_OVER         (1<<8)
#define PDSP_FAULT4_DC_VOLT_UNDER        (1<<9)
#define PDSP_FAULT4_DC_VOLT_RANGE_HIGH   (1<<10)
#define PDSP_FAULT4_DC_VOLT_RANGE_LOW    (1<<11)
#define PDSP_FAULT4_DC_VOLT_STUCK_HIGH   (1<<12)
#define PDSP_FAULT4_DC_VOLT_STUCK_LOW    (1<<13)
#define PDSP_FAULT4_DC_VOLT_ERRATIC      (1<<14)
#define PDSP_FAULT4_DC_CURR_OVER         (1<<15)
#define PDSP_FAULT4_DC_CURR_UNDER        (1<<16)
#define PDSP_FAULT4_DC_CURR_RANGE_HIGH   (1<<17)
#define PDSP_FAULT4_DC_CURR_RANGE_LOW    (1<<18)
#define PDSP_FAULT4_DC_CURR_STUCK_HIGH   (1<<19)
#define PDSP_FAULT4_DC_CURR_STUCK_LOW    (1<<20)
#define PDSP_FAULT4_DC_CURR_ERRATIC      (1<<21)

/** Fault 5 register mask for temperatures. */
#define PDSP_FAULT4_AUX_VOLT_OVER        (1<<22)
#define PDSP_FAULT4_AUX_VOLT_UNDER       (1<<23)
#define PDSP_FAULT4_AUX_VOLT_RANGE_HIGH  (1<<24)
#define PDSP_FAULT4_AUX_VOLT_RANGE_LOW   (1<<25)
#define PDSP_FAULT4_AUX_VOLT_STUCK_HIGH  (1<<26)
#define PDSP_FAULT4_AUX_VOLT_STUCK_LOW   (1<<27)
#define PDSP_FAULT4_AUX_VOLT_ERRATIC     (1<<28)
#define PDSP_FAULT4_AUX_VOLT_DELTA       (1<<29)
#define PDSP_FAULT5_PFC_TEMP_OVER        (1<<0)
#define PDSP_FAULT5_PFC_TEMP_UNDER       (1<<1)
#define PDSP_FAULT5_PFC_TEMP_RANGE_HIGH  (1<<2)
#define PDSP_FAULT5_PFC_TEMP_RANGE_LOW   (1<<3)
#define PDSP_FAULT5_PFC_TEMP_STUCK_HIGH  (1<<4)
#define PDSP_FAULT5_PFC_TEMP_STUCK_LOW   (1<<5)
#define PDSP_FAULT5_PFC_TEMP_ERRATIC     (1<<6)
#define PDSP_FAULT5_LLC_TEMP_OVER        (1<<7)
#define PDSP_FAULT5_LLC_TEMP_UNDER       (1<<8)
#define PDSP_FAULT5_LLC_TEMP_RANGE_HIGH  (1<<9)
#define PDSP_FAULT5_LLC_TEMP_RANGE_LOW   (1<<10)
#define PDSP_FAULT5_LLC_TEMP_STUCK_HIGH  (1<<11)
#define PDSP_FAULT5_LLC_TEMP_STUCK_LOW   (1<<12)
#define PDSP_FAULT5_LLC_TEMP_ERRATIC     (1<<13)
#define PDSP_FAULT5_AUX_TEMP_OVER        (1<<14)
#define PDSP_FAULT5_AUX_TEMP_UNDER       (1<<15)
#define PDSP_FAULT5_AUX_TEMP_RANGE_HIGH  (1<<16)
#define PDSP_FAULT5_AUX_TEMP_RANGE_LOW   (1<<17)
#define PDSP_FAULT5_AUX_TEMP_STUCK_HIGH  (1<<18)
#define PDSP_FAULT5_AUX_TEMP_STUCK_LOW   (1<<19)
#define PDSP_FAULT5_AUX_TEMP_ERRATIC     (1<<20)

/** Fault 6 register mask for temperatures. */
#define PDSP_FAULT6_A_CURR_CONTOL        (1<<26)
#define PDSP_FAULT6_B_CURR_CONTOL        (1<<26)
#define PDSP_FAULT6_C_CURR_CONTOL        (1<<26)
#define PDSP_FAULT6_DC_CURR_CONTOL       (1<<26)
#define PDSP_FAULT6_DC_VOLT_CONTOL       (1<<26)
#define PDSP_FAULT6_BUS_VOLT_CONTOL      (1<<26)
#define PDSP_FAULT6_AC_TEST_FAIL         (1<<0)
#define PDSP_FAULT6_DC_TEST_FAIL         (1<<0)
#define PDSP_FAULT6_BUS_TEST_FAIL        (1<<0)

/*==============================================================================
 MACROS: MASK FOR REMOTE ROUTINE CALL COMMAND / BUSY REGISTER
 =============================================================================*/

/* CAN message request: 16bits command, 16bits parameter, 32bits parameter */
/* CAN message response: 16bits command, 16bits response, 32bits response */

#define PDSP_R_AC_SELF_TEST (1<<0)
#define PDSP_R_DC_SELF_TEST (1<<0)
#define PDSP_R_START_PFC (1<<0)
#define PDSP_R_START_LLC (1<<0)
#define PDSP_R_STOP_PFC (1<<0)
#define PDSP_R_STOP_LLC (1<<0)
#define PDSP_R_RESET (1<<0)
#define PDSP_R_WRITE_PARAMETER (1<<0)
#define PDSP_R_READ_PARAMETER (1<<0)


/*==============================================================================
 TYPES
 =============================================================================*/




/*==============================================================================
 CONFIGURATION
 =============================================================================*/




 /*==============================================================================
 ENF OF FILE
 =============================================================================*/
#endif /* PDSP_OBC_H */