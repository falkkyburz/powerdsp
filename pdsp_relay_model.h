/** @file pdsp_relay_model.h
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

#ifndef PDSP_RELAY_MODEL_H
#define PDSP_RELAY_MODEL_H

/**
 * @details
 * REQ000:
 * The relay model shall model the coil, the plunger, the main contact and the
 * auxiliary contact of a relay.
 * -----------------------------------------------------------------------------
 * REQ001:
 * The relay model run function shall take the relay coil driver voltage as an
 * input and provide the internal status of the relay as an output. A positive
 * coil voltage shall engage the main contact, zero or a negative coil voltage
 * shall open the main contact.
 * -----------------------------------------------------------------------------
 * REQ002:
 * The relay model status
 * consists of the coil current, the plunger position, the main contact state
 * and the auxiliary contact state.
 * -----------------------------------------------------------------------------
 * REQ003:
 * The relay model shall model a burnt coil when the coil is driven for too
 * long or with too high voltage.
 * -----------------------------------------------------------------------------
 * REQ004:
 * The relay model shall not close if the coil is not driven long enough.
 * -----------------------------------------------------------------------------
 * REQ005:
 * The relay model shall allow the simulation of the following plunger failures:
 * plunger stuck open, plunger stuck closed.
 * -----------------------------------------------------------------------------
 * REQ006:
 * The relay model shall allow the simulation of the following coil failures:
 * coil open, coil shorted.
 * -----------------------------------------------------------------------------
 * REQ007:
 * The relay model shall allow the simulation of modified coil resistance to
 * model coil at high / low temperature and partial short circuit.
 * -----------------------------------------------------------------------------
 * REQ008:
 * --
 * -----------------------------------------------------------------------------
 * REQ009:
 * --
 * -----------------------------------------------------------------------------
 * REQ010:
 * --
 * -----------------------------------------------------------------------------
 */

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include "pdsp_types.h"

/** Relay model feedback contact type. */
typedef enum pdsp_relay_model_fdbk_e
{
    /** Feedback contact is normally open. Use this option when there is no
       feedback contact. */
    PDSP_RELAY_MODEL_FDBK_TYPE_NO,
    /** Feedback contact is normally closed. */
    PDSP_RELAY_MODEL_FDBK_TYPE_NC
} pdsp_relay_model_fdbk_e;

/** Relay model coil drive type. */
typedef enum pdsp_relay_model_drive_e
{
    /** Coil is external pwm drive. */
    PDSP_RELAY_MODEL_COIL_TYPE_PWM,
    /** Coil is DC drive (DC coil, stepped coil or internal PWM). */
    PDSP_RELAY_MODEL_COIL_TYPE_DC,
} pdsp_relay_model_drive_e;

/** Relay model fail type. */
typedef enum pdsp_relay_model_fail_e
{
    /** Normal operation. */
    PDSP_RELAY_MODEL_FAIL_NONE,
    /** Plunger is stuck open, does not close. */
    PDSP_RELAY_MODEL_FAIL_STUCK_OPEN,
    /** Plunger is stuck closed, does not open. */
    PDSP_RELAY_MODEL_FAIL_STUCK_CLOSED,
    /** Coil is open circuit. */
    PDSP_RELAY_MODEL_FAIL_COIL_OPEN,
    /** Coil is short circuit. */
    PDSP_RELAY_MODEL_FAIL_COIL_SHORT,
} pdsp_relay_model_fail_e;

/** Relay model structure */
typedef struct pdsp_relay_model_var_tag
{
    /** Coil current . */
    pdsp_f32_t f32_coil_current;
    /** Coil position (relative). */
    pdsp_f32_t f32_plunger_position;
    /** Failure mode. */
    pdsp_relay_model_fail_e e_fail;
    /** Coil current modifier to simulate over-current. */
    pdsp_f32_t f32_currfactor;
    /** Feedback contact status (out). */
    pdsp_bool_t b_fdbk;
} pdsp_relay_model_var_t;

/** Relay model initialization structure */
typedef struct pdsp_relay_model_tag
{
    /** Pointer to variable struct. */
    pdsp_relay_model_var_t *ps_var;
    /** Nominal coil voltage. */
    pdsp_f32_t f32_coil_voltage;
    /** Nominal coil hold voltage. Set to nominal voltage for DC coils. */
    pdsp_f32_t f32_coil_hold_voltage;
    /** Nominal coil resistance. */
    pdsp_f32_t f32_coil_resistance;
    /** Nominal coil time constant to reach full coil current. */
    pdsp_f32_t f32_coil_time;
    /** Nominal plunger time for full travel at full coil current. */
    pdsp_f32_t f32_plunger_time;
    /** Drive type. */
    pdsp_relay_model_drive_e e_drive_type;
    /** Feedback type. */
    pdsp_relay_model_fdbk_e e_fdbk_type;
    /** Model sampling time. */
    pdsp_f32_t f32_ts;
} pdsp_relay_model_t;

/** Initialization struct for model XXXX. */
#define PDSP_RELAY_MODEL_SIMPLE                                                \
    .f32_coil_voltage = 12.0f, .f32_coil_hold_voltage = 12.0f,                 \
    .f32_coil_resistance = 2.0f, .f32_coil_time = 0.001f,                      \
    .f32_plunger_time = 0.1f, .e_drive_type = PDSP_RELAY_MODEL_COIL_TYPE_DC,   \
    .e_fdbk_type = PDSP_RELAY_MODEL_FDBK_TYPE_NO

/**
 * @brief Relay model initialisation.
 * @param ps_data Pointer to relay model struct.
 */
pdsp_extern void pdsp_relay_model_init(pdsp_relay_model_t *ps_data);

/**
 * @brief Set relay fail type.
 * @param ps_data Pointer to relay model struct.
 * @param pdsp_relay_model_fail_e Fail type.
 */
pdsp_extern void pdsp_relay_model_set_fail(pdsp_relay_model_t *ps_data,
                                           pdsp_relay_model_fail_e e_fail);

/**
 * @brief Set coil resistance modifier.
 * @param ps_data Pointer to relay model struct.
 * @param pdsp_f32_t Resistance modifying factor.
 */
pdsp_extern void pdsp_relay_model_set_currfactor(pdsp_relay_model_t *ps_data,
                                                 pdsp_f32_t f32_currfactor);

/**
 * @brief Relay model step/run function.
 * @param ps_data Pointer to relay model struct.
 * @param f32_coil_voltage Coil voltage from driver.
 */
pdsp_extern void pdsp_relay_model_step(pdsp_relay_model_t *ps_data,
                                       pdsp_f32_t f32_coil_voltage);

#endif /* PDSP_RELAY_MODEL_H */
