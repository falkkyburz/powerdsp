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


/*==============================================================================
 COMMAND REGISTER
 =============================================================================*/


/*==============================================================================
 MEASURMENTS FAULT CODES (4 BIT)
 =============================================================================*/

/*==============================================================================
 MACROS: MASK FOR REMOTE ROUTINE CALL COMMAND / BUSY REGISTER
 =============================================================================*/


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