/** @file pdsp_control.h
 *
 * @brief Control functions.
 * @author Falk Kyburz
 */

#ifndef PDSP_CONTROL_H
#define PDSP_CONTROL_H

#include "pdsp_types.h"
#include <math.h>

/**
 * @brief Calculate PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller global parameter struct.
 * @param as_error_param Controller error parameter struct.
 * @param u32_idx_param Controller parameter index.
 * @param f32_error Controller error signal input.
 * @returns pdsp_f32_t Controller output.
 */
static inline pdsp_f32_t pdsp_pi_run_1x(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    const pdsp_pi_err_param_t as_error_param[],
    pdsp_f32_t f32_error)
{
    pdsp_f32_t f32_out = 0.0f;
    pdsp_f32_t f32_sum = 0.0f;
    /* Calculate integral path, including saturation delta. */
    ps_state->f32_x0 = ps_state->f32_x0 +
                       f32_error * as_error_param[ps_state->u32_idx].f32_ki +
                       ps_state->f32_x1 * as_error_param[ps_state->u32_idx].f32_ks;
    /* Calculate the sum of integral and proportional part. */
    f32_sum = f32_error * as_error_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
    /* Apply saturation. */
    f32_out = fmaxf(ps_param->f32_min, fminf(ps_param->f32_max, f32_sum));
    /* Store saturation delta. */
    ps_state->f32_x1 = f32_out - f32_sum;
    return f32_out;
}

/**
 * @brief Calculate dual PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller global parameter struct.
 * @param as_error0_param Controller parameter struct array.
 * @param f32_error0 Controller error signal input.
 * @param as_error1_param Controller parameter struct array.
 * @param f32_error1 Controller error signal input.
 * @returns pdsp_f32_t Controller output.
 */
static inline pdsp_f32_t pdsp_pi_run_2x(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    const pdsp_pi_err_param_t as_error0_param[],
    pdsp_f32_t f32_error0,
    const pdsp_pi_err_param_t as_error1_param[],
    pdsp_f32_t f32_error1)
{
    pdsp_f32_t f32_out = 0.0f;
    pdsp_f32_t f32_sum = 0.0f;
    if ((f32_error0 * as_error0_param[ps_state->u32_idx].f32_ka) <
        (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    {
        ps_state->u32_active = 0U;
        /* Calculate integral path, including saturation delta. */
        ps_state->f32_x0 = ps_state->f32_x0 +
                           f32_error0 * as_error0_param[ps_state->u32_idx].f32_ki +
                           ps_state->f32_x1 * as_error0_param[ps_state->u32_idx].f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error0 * as_error0_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
    }
    else
    {
        /* Calculate integral path, including saturation delta. */
        ps_state->f32_x0 = ps_state->f32_x0 +
                           f32_error1 * as_error1_param[ps_state->u32_idx].f32_ki +
                           ps_state->f32_x1 * as_error1_param[ps_state->u32_idx].f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error1 * as_error1_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
    }
    /* Apply saturation. */
    f32_out = fmaxf(ps_param->f32_min, fminf(ps_param->f32_max, f32_sum));
    /* Store saturation delta. */
    ps_state->f32_x1 = f32_out - f32_sum;
    return f32_out;
}

/**
 * @brief Calculate quad PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller parameter struct.
 * @param as_error0_param Controller parameter struct array.
 * @param f32_error0 Controller error signal input.
 * @param as_error1_param Controller parameter struct array.
 * @param f32_error1 Controller error signal input.
 * @param as_error2_param Controller parameter struct array.
 * @param f32_error2 Controller error signal input.
 * @param as_error3_param Controller parameter struct array.
 * @param f32_error3 Controller error signal input.
 * @returns pdsp_f32_t Controller output.
 */
static inline pdsp_f32_t pdsp_pi_run_4x(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    const pdsp_pi_err_param_t as_error0_param[],
    pdsp_f32_t f32_error0,
    const pdsp_pi_err_param_t as_error1_param[],
    pdsp_f32_t f32_error1,
    const pdsp_pi_err_param_t as_error2_param[],
    pdsp_f32_t f32_error2,
    const pdsp_pi_err_param_t as_error3_param[],
    pdsp_f32_t f32_error3)
{
    pdsp_f32_t f32_out = 0.0f;
    pdsp_f32_t f32_sum = 0.0f;
    /* under construction */
    // if ((f32_error0 * as_error0_param[ps_state->u32_idx].f32_ka) < (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error0 * as_error0_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 * as_error0_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error0 * as_error0_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
    // }
    // else if ((f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka) < (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error1 * ps_error1_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 * as_error1_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error1 * as_error1_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
    // }
    // else if ((f32_error2 * as_error2_param[ps_state->u32_idx].f32_ka) < (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error2 * ps_error2_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 * as_error2_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error2 * as_error2_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
    // }
    // else ((f32_error0 * as_error0_param->f32_ka) < (f32_error1 * as_error1_param->f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error3 * ps_error3_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 * as_error3_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error3 * as_error3_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
    // }
    /* apply saturation */
    f32_out = fmaxf(ps_param->f32_min, fminf(ps_param->f32_max, f32_sum));
    /* store saturation delta */
    ps_state->f32_x1 = f32_out - f32_sum;
    return f32_out;
}

/**
 * @brief Reset PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller parameter struct.
 * @param f32_out_value Set controller output value.
 * @returns pdsp_f32_t Controller output.
 */
static inline pdsp_status_t pdsp_pi_reset(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    pdsp_f32_t f32_out_value)
{
    /* Set integral value to out_value. */
    ps_state->f32_x0 = fmaxf(ps_param->f32_min, fminf(ps_param->f32_max, f32_out_value));
    /* Set saturation memory to 0. */
    ps_state->f32_x1 = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Calculate simple set point processor.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Set point output.
 */
static inline pdsp_f32_t pdsp_setp_run(
    pdsp_setp_t *ps_state,
    const pdsp_setp_param_t *ps_param)
{
    ps_state->f32_x1 = ps_state->f32_x1 +
                       fmaxf(fminf(ps_state->f32_destination - ps_state->f32_x1,
                                   ps_param->f32_step),
                             -ps_param->f32_step);
    return ps_state->f32_x1;
}

/**
 * @brief Set destination of simple set point processor.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_destination Set point destination.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_setp_set_destination(
    pdsp_setp_t *ps_state,
    const pdsp_setp_param_t *ps_param,
    pdsp_f32_t f32_destination)
{
    ps_state->f32_destination = fmaxf(fminf(f32_destination, ps_param->f32_max), ps_param->f32_min);
    return PDSP_OK;
}

/**
 * @brief Set the state to the destination.
 * @param ps_state Set point state memory struct.
 * @returns pdsp_f32_t Set point output.
 */
static inline pdsp_f32_t pdsp_setp_step(
    pdsp_setp_t *ps_state)
{
    ps_state->f32_x1 = ps_state->f32_destination;
    return ps_state->f32_x1;
}

/**
 * @brief Set the state to a defined value.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_value Set point value to step to.
 * @returns pdsp_f32_t Set point output.
 */
static inline pdsp_f32_t pdsp_setp_reset(
    pdsp_setp_t *ps_state,
    const pdsp_setp_param_t *ps_param,
    pdsp_f32_t f32_value)
{
    ps_state->f32_x1 = fmaxf(fminf(f32_value, ps_param->f32_max), ps_param->f32_min);
    return ps_state->f32_x1;
}

/**
 * @brief Set point reached.
 * @param ps_state Set point state memory struct.
 * @returns pdsp_bool_t
 */
static inline pdsp_bool_t pdsp_setp_reached(
    pdsp_setp_t *ps_state,
    const pdsp_setp_param_t *ps_param,
    pdsp_f32_t f32_tolarance)
{
    return PDSP_FALSE;
}

/**
 * @brief Saw wave generator.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Waveform output.
 */
static inline pdsp_f32_t pdsp_saw_run(
    pdsp_saw_t *ps_state,
    const pdsp_saw_param_t *ps_param)
{
    pdsp_f32_t af32_out[2] = {ps_state->f32_x0 + ps_param->f32_step, ps_param->f32_out_low};
    /* result of comparison operation is 0 or 1 */
    ps_state->f32_x0 = af32_out[( af32_out[0] > ps_param->f32_out_high )];
    return ps_state->f32_x0;
}

/**
 * @brief Saw wave shifter.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_phase Phase shift in the same unit as out_high / out_low.
 * @returns pdsp_f32_t Waveform output.
 */
static inline pdsp_f32_t pdsp_saw_shift(
    pdsp_saw_t *ps_state,
    const pdsp_saw_param_t *ps_param, 
    pdsp_f32_t f32_phase)
{
    pdsp_f32_t af32_out[2] = {ps_state->f32_x0 + f32_phase, ps_param->f32_out_low + f32_phase};
    /* result of comparison operation is 0 or 1 */
    ps_state->f32_x0 = af32_out[( af32_out[0] > ps_param->f32_out_high )];
    return ps_state->f32_x0;
}

#endif /* PDSP_CONTROL_H */