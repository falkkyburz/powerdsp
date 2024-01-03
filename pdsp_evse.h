/** @file pdsp_relay.h
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

/**
 * @details
 * EVSE Communication Interface:
 *   Input Message EVSE_RX0:
 *   - EVSE_EvseStandard [8, 1, 0=IEC, 1=SAE, 2=GBT]
 *   - EVSE_EvseStatus [8, 1, 0=EVSE_OFF, 1=EVSE_NOT_READY, 2=EVSE_READY, 3=EVSE_ERROR]
 *   - EVSE_CpCapacitance [8, pF, 0:1:100]
 *   - EVSE_PpResistance [16, Ohm, 0:1:10000]
 *   Input Message EVSE_RX1:
 *   - EVSE_CpFrequency [IQ12.4, Hz, 0.0:1/16:1200.0]
 *   - EVSE_CpDutyCycle [IQ8.8, 1, 0.0:1/255:1.0]
 *   - EVSE_CpVoltagePos [IQ8.8, V, 0.0:1/255:15.0]
 *   - EVSE_CpVoltageNeg [IQ8.8, V, 0.0:1/255:15.0]
 *   Input Message EVSE_RX2:
 *   - EVSE_CpFrequency [IQ12.4, Hz, 0.0:1/16:1200.0]
 *   - EVSE_CpCurrentMax [IQ8.8, A, 0.0:1/255:100.0]
 *   - EVSE_CpVoltagePos [IQ8.8, V, 0.0:1/255:15.0]
 *   - EVSE_CpVoltageNeg [IQ8.8, V, 0.0:1/255:15.0]
 *   Output Message EVSE_TX0:
 *   - EVSE_EvStatus [8, 1, 0=EV_NOT_READY, 1=EV_READY, 2=EV_ERROR]
 *   - EVSE_CpDutyCycleMeas [IQ8.8, 1, 0.0:1/255:1.0]
 *   Output Message EVSE_TX1:
 *   - EVSE_CpFrequencyMeas [IQ12.4, Hz, 0.0:1/16:1200.0]
 *   - EVSE_CpCurrentMaxMeas [IQ8.8, A, 0.0:1/255:100.0]
 *   - EVSE_CpVoltagePosMeas [IQ8.8, V, 0.0:1/255:15.0]
 *   - EVSE_CpVoltageNegMeas [IQ8.8, V, 0.0:1/255:15.0]
 * EVSE Public Functions:
 *   - EVSE_init(ps_Data)
 *   - EVSE_receive(ps_Data, ps_RxData)
 *   - EVSE_transmit(ps_Data, ps_TxData)
 *   - EVSE_updateActors(ps_Data, ps_RxData)
 *   - EVSE_updateSensors(ps_Data, ps_TxData)
 * EVSE Port:
 *   - EVSE_Port_CAN_Available()
 *   - EVSE_Port_CAN_Read()
 *   - EVSE_Port_CAN_Write()
 *   - EVSE_Port_PWM_Enable()
 *   - EVSE_Port_PWM_SetDutyCycle()
 *   - EVSE_Port_PWM_SetFrequency()
 *   - EVSE_Port_DAC_SetVoltagePos()
 *   - EVSE_Port_DAC_SetVoltageNeg()
 *   - EVSE_Port_DO_SetCapacitance()
 *   - EVSE_Port_DO_SetResistance()
 *   - EVSE_Port_ADC_GetRaw()
 * 
 */


#ifndef PDSP_RELAY_H
#define PDSP_RELAY_H

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include "pdsp_types.h"


#endif /* PDSP_RELAY_H */
