/** @file pdsp_util.h
 *
 * @brief Utils functions.
 * @author Falk Kyburz
 *
 */

#ifndef PDSP_UTIL_H
#define PDSP_UTIL_H

#include "pdsp_types.h"
#include <math.h>

/**
 * @brief Resets internal abc_dq data to zero.
 * @param ps_state Pointer to abc_dq structure.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_abc_dq_reset(
    pdsp_abc_dq_t *ps_state)
{
    ps_state->f32_alpha = 0;
    ps_state->f32_beta = 0;
    ps_state->f32_d = 0;
    ps_state->f32_q = 0;
    ps_state->f32_zero = 0;
    return PDSP_OK;
}

/**
 * @brief Runs abc-dq pos routine
 *
 * @param ps_state Pointer to abc_dq structure.
 * @param a Phase a value.
 * @param b Phase b value.
 * @param c Phase c value.
 * @param sin_val Sine value of the grid angle.
 * @param cos_val Cosine value of the grid angle.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_abc_dq_pos_run(
    pdsp_abc_dq_t *ps_state,
    pdsp_f32_t a,
    pdsp_f32_t b,
    pdsp_f32_t c,
    pdsp_f32_t sin_val,
    pdsp_f32_t cos_val)
{
    ps_state->f32_alpha = 0.66666666677f * (a - 0.5f * (b + c));
    ps_state->f32_beta = 0.57735026913f * (b - c);
    ps_state->f32_zero = 0.57735026913f * (a + b + c);
    ps_state->f32_d = ps_state->f32_alpha * cos_val + ps_state->f32_beta * sin_val;
    ps_state->f32_q = -ps_state->f32_alpha * sin_val + ps_state->f32_beta * cos_val;
    return PDSP_OK;
}

/**
 * @brief Runs abc-dq neg routine
 * @param ps_state Pointer to abc_dq structure.
 * @param a Phase a value.
 * @param b Phase b value.
 * @param c Phase c value.
 * @param sin_val Sine value of the grid angle.
 * @param cos_val Cosine value of the grid angle.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_abc_dq_neg_run(
    pdsp_abc_dq_t *ps_state,
    pdsp_f32_t a,
    pdsp_f32_t b,
    pdsp_f32_t c,
    pdsp_f32_t sin_val,
    pdsp_f32_t cos_val)
{
    ps_state->f32_alpha = 0.66666666677f * (a - 0.5f * (b + c));
    ps_state->f32_beta = 0.57735026913f * (b - c);
    ps_state->f32_zero = 0.57735026913f * (a + b + c);
    ps_state->f32_d = ps_state->f32_alpha * cos_val - ps_state->f32_beta * sin_val;
    ps_state->f32_q = ps_state->f32_alpha * sin_val + ps_state->f32_beta * cos_val;
    return PDSP_OK;
}

/**
 * @brief Resets internal dq-abc data to zero.
 * @param ps_state Pointer to dq-abc structure.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_dq0_abc_reset(
    pdsp_dq_abc_t *ps_state)
{
    ps_state->f32_alpha = 0;
    ps_state->f32_beta = 0;
    ps_state->f32_a = 0;
    ps_state->f32_b = 0;
    ps_state->f32_c = 0;
    return PDSP_OK;
}

/**
 * @brief Runs dq-abc routine.
 * @param ps_state Pointer to dq_abc structure.
 * @param d d ref value
 * @param q q ref value
 * @param z z ref value
 * @param sin_val Sine value of the grid angle.
 * @param cos_val Cosine value of the grid angle
 * @return pdsp_status_t 
 */
static inline pdsp_status_t pdsp_dq0_abc_run(
    pdsp_dq_abc_t *ps_state,
    pdsp_f32_t d, 
    pdsp_f32_t q,
    pdsp_f32_t z,
    pdsp_f32_t sin_val, 
    pdsp_f32_t cos_val)
{
    ps_state->f32_alpha = d * cos_val  - q * sin_val;
    ps_state->f32_beta  = d * sin_val    + q * cos_val;
    ps_state->f32_a     =  ps_state->f32_alpha     + 0.5f * z;
    ps_state->f32_b     = -0.5f * ps_state->f32_alpha + 0.8660254f * ps_state->f32_beta + 0.5f * z;
    ps_state->f32_c     = -0.5f * ps_state->f32_alpha - 0.8660254f * ps_state->f32_beta + 0.5f * z;
    return PDSP_OK;
}


/**
 * @brief 2D Interpollation (X->input, Y->Output)
 * @details See: https://en.wikipedia.org/wiki/Linear_interpolation
 * @param x_arr X axis array. Size must be 2 or higher. Values must be monotonically increasing.
 * @param y_arr Y axis array. Size must be 2 or higher and must be the same as x_arr.
 * @param size    Site of the x and y array.
 * @param x_in    Interpollation input.
 * @returns       Interpollated value.
 */
static inline pdsp_f32_t pdsp_interpollate_2d(
    pdsp_f32_t x_arr[],
    pdsp_f32_t y_arr[],
    pdsp_u32_t size,
    pdsp_f32_t x_in)
{
    /* Index of higher array element */
    pdsp_u32_t idx_hi = 1U;
    /* Index of lower array element. */
    pdsp_u32_t idx_lo = 0U;
    /* Maximum index */
    pdsp_u32_t idx_max = size - 1U;
    /* Find the higher array index >= 1 (value dependent duration, linear time) */
    while ((x_arr[idx_hi] < x_in) && (idx_hi < idx_max))
    {
        idx_hi++;
    }
    /* Calculate the lower array index (can be 0). */
    idx_lo = idx_hi - 1U;
    /* Calculate the output (uses division) */
    return (y_arr[idx_lo] + (x_in - x_arr[idx_lo]) * (y_arr[idx_hi] - y_arr[idx_lo]) / (x_arr[idx_hi] - x_arr[idx_lo]));
}

#endif /* PDSP_UTIL_H */