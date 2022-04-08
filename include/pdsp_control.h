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
 * @param ps_error_param Controller error parameter struct.
 * @param u32_idx_param Controller parameter index.
 * @param f32_error Controller error signal input.
 * @returns Controller output.
 */
static inline pdsp_f32_t pdsp_pi_run_1x(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    const pdsp_pi_err_param_t ps_error_param[],
    pdsp_f32_t f32_error)
{
    return 0.0f;
}

/**
 * @brief Calculate dual PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller global parameter struct.
 * @param as_error0_param Controller parameter struct array (size==2).
 * @param f32_error0 Controller error signal input.
 * @param as_error1_param Controller parameter struct array (size==2).
 * @param f32_error1 Controller error signal input.
 * @returns Controller output.
 */
static inline pdsp_f32_t pdsp_pi_run_2x(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    const pdsp_pi_err_param_t as_error0_param[],
    pdsp_f32_t f32_error0,
    const pdsp_pi_err_param_t as_error1_param[],
    pdsp_f32_t f32_error1)
{
    return 0.0f;
}

/**
 * @brief Calculate hexa PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller parameter struct.
 * @param as_error0_param Controller parameter struct array (size==6).
 * @param f32_error0 Controller error signal input.
 * @param as_error1_param Controller parameter struct array (size==6).
 * @param f32_error1 Controller error signal input.
 * @param as_error2_param Controller parameter struct array (size==6).
 * @param f32_error2 Controller error signal input.
 * @param as_error3_param Controller parameter struct array (size==6).
 * @param f32_error3 Controller error signal input.
 * @param as_error4_param Controller parameter struct array (size==6).
 * @param f32_error4 Controller error signal input.
 * @param as_error5_param Controller parameter struct array (size==6).
 * @param f32_error5 Controller error signal input.
 * @returns Controller output.
 */
static inline pdsp_f32_t pdsp_pi_run_6x(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    const pdsp_pi_err_param_t as_error0_param[],
    pdsp_f32_t f32_error0,
    const pdsp_pi_err_param_t as_error1_param[],
    pdsp_f32_t f32_error1,
    const pdsp_pi_err_param_t as_error2_param[],
    pdsp_f32_t f32_error2,
    const pdsp_pi_err_param_t as_error3_param[],
    pdsp_f32_t f32_error3,
    const pdsp_pi_err_param_t as_error4_param[],
    pdsp_f32_t f32_error4,
    const pdsp_pi_err_param_t as_error5_param[],
    pdsp_f32_t f32_error5)
{
    return 0.0f;
}

/**
 * @brief Reset PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller parameter struct.
 * @param f32_out_value Set controller output value.
 * @returns Controller output.
 */
static inline pdsp_status_t pdsp_pi_reset(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    pdsp_f32_t f32_out_value)
{
    return PDSP_OK;
}

/**
 * @brief Calculate simple set point processor.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns Set point output.
 */
static inline pdsp_f32_t pdsp_setp_run(
    pdsp_setp_t *ps_state,
    const pdsp_setp_param_t *ps_param)
{
    return 0.0f;
}

/**
 * @brief Set destination of simple set point processor.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_destination Set point destination.
 * @returns Status PDSP_OK.
 */
static inline pdsp_status_t pdsp_setp_set_destination(
    pdsp_setp_t *ps_state,
    const pdsp_setp_param_t *ps_param,
    pdsp_f32_t f32_destination)
{
    return PDSP_OK;
}

/**
 * @brief Set the state to the destination.
 * @param ps_state Set point state memory struct.
 * @returns Set point output.
 */
static inline pdsp_f32_t pdsp_setp_step(
    pdsp_setp_t *ps_state)
{
    return 0.0f;
}

/**
 * @brief Set the state to a defined value.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_value Set point value to step to.
 * @returns Set point output.
 */
static inline pdsp_f32_t pdsp_setp_reset(
    pdsp_setp_t *ps_state,
    const pdsp_setp_param_t *ps_param,
    pdsp_f32_t f32_value)
{
    return 0.0f;
}

/**
 * @brief Set point reached.
 * @param ps_state Set point state memory struct.
 * @returns Status PDSP_OK.
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
 * @returns Status PDSP_OK.
 */
static inline pdsp_f32_t pdsp_saw_run(
    pdsp_saw_t *ps_state,
    const pdsp_saw_param_t *ps_param)
{
    return 0.0f;
}

#endif /* PDSP_CONTROL_H */