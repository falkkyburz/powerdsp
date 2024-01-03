/** @file pdsp_relay_model.c
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

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_relay_model.h"
#include "pdsp_assert.h"
#include "pdsp_cfg.h"
#include "pdsp_types.h"

#define PDSP_RELAY_PLUNGER_MOVE_THR 0.5f
#define PDSP_RELAY_PLUNGER_FDBK_THR 0.8f
#define PDSP_RELAY_PLUNGER_MOVE_MAX 1.0f
#define PDSP_RELAY_PLUNGER_MOVE_MIN 0.0f

pdsp_extern void pdsp_relay_model_init(pdsp_relay_model_t *ps_data)
{
    PDSP_ASSERT(ps_data != NULL);
    ps_data->ps_var->f32_coil_current = 0.0f;
    ps_data->ps_var->f32_plunger_position = 0.0f;
    ps_data->ps_var->e_fail = PDSP_RELAY_MODEL_FAIL_NONE;
    if (ps_data->e_fdbk_type == PDSP_RELAY_MODEL_FDBK_TYPE_NO)
    {
        ps_data->ps_var->b_fdbk = PDSP_FALSE;
    }
    else
    {
        ps_data->ps_var->b_fdbk = PDSP_TRUE;
    }
}

pdsp_extern void pdsp_relay_model_set_fail(pdsp_relay_model_t *ps_data,
                                           pdsp_relay_model_fail_e e_fail)
{
    ps_data->ps_var->e_fail = e_fail;
}

pdsp_extern void pdsp_relay_model_set_currfactor(pdsp_relay_model_t *ps_data,
                                           pdsp_f32_t f32_currfactor)
                                           {

                                           }

pdsp_extern void pdsp_relay_model_step(pdsp_relay_model_t *ps_data,
                                  pdsp_f32_t f32_coil_voltage)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    pdsp_bool_t b_fdbk_int = PDSP_FALSE;
    pdsp_f32_t f32_hold_current = 
    if (ps_data->e_drive_type == PDSP_RELAY_MODEL_COIL_TYPE_PWM)
    {
        /* LC first order model for the PWM coil. */
        /* Impl todo */
        ps_data->ps_var->f32_coil_current += f32_coil_voltage /
                                             ps_data->f32_coil_voltage *
                                             ps_data->f32_coil_time;
    }
    else /* PDSP_RELAY_MODEL_COIL_TYPE_DC */
    {
        /* LC first order model for the DC coil. */
        /* Impl todo */
    }

    /* Plunger moves towards closed position if it is not stuck open. */
    if ((ps_data->ps_var->f32_plunger_position < PDSP_RELAY_PLUNGER_MOVE_MAX) &&
        (ps_data->ps_var->e_fail != PDSP_RELAY_MODEL_FAIL_OPEN))
    {
        /* Impl todo */
    }
    /* Plunger moves towards open position if it is not stuck closed. */
    if ((ps_data->ps_var->f32_plunger_position < PDSP_RELAY_PLUNGER_MOVE_MIN) &&
        (ps_data->ps_var->e_fail != PDSP_RELAY_MODEL_FAIL_CLOSED))
    {
        /* Impl todo */
    }

    /* Feedback contact threshold check. */
    if (ps_data->ps_var->f32_plunger_position > PDSP_RELAY_PLUNGER_FDBK_THR)
    {
        b_fdbk_int = PDSP_TRUE;
    }
    else
    {
        b_fdbk_int = PDSP_FALSE;
    }
    /* Invert for NC feedback*/
    if (ps_data->e_fdbk_type == PDSP_RELAY_MODEL_FDBK_TYPE_NO)
    {
        ps_data->ps_var->b_fdbk = b_fdbk_int;
    }
    else
    {
        ps_data->ps_var->b_fdbk = !b_fdbk_int;
    }
}
