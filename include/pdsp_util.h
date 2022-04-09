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
 * @brief Map a value from one range to another (Uses division).
 * @param f32_in Input value.
 * @param f32_in_lo Input range low value.
 * @param f32_in_hi Input range high value.
 * @param f32_out_lo Output range low value.
 * @param f32_out_hi Output range high value.
 * @return pdsp_f32_t Ouput value.
 */
static inline pdsp_f32_t pdsp_map(
    pdsp_f32_t f32_in,
    pdsp_f32_t f32_in_lo,
    pdsp_f32_t f32_in_hi,
    pdsp_f32_t f32_out_lo,
    pdsp_f32_t f32_out_hi)
{
    return ((f32_out_lo * (f32_in_hi - f32_in) + f32_out_hi * (f32_in - f32_in_lo)) /
            (f32_in_hi - f32_in_lo));
}

/**
 * @brief Apply a given function to each element.
 * @param af32_in Inpurt array.
 * @param af32_out Out array.
 * @param u32_size Size of input / output array.
 * @param p_func Function to apply to the elements.
 */
static inline void pdsp_apply(
    pdsp_f32_t af32_in[],
    pdsp_f32_t af32_out[],
    pdsp_u32_t u32_size,
    pdsp_u32_t p_func(pdsp_u32_t))
{
    pdsp_u32_t u32_idx = 0;
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = p_func(af32_in[u32_idx]);
    }
}

/**
 * @brief Create linerarly spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start value.
 * @param f32_end End Value.
 */
static inline void pdsp_linspace(
    pdsp_f32_t af32_out[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_start,
    pdsp_f32_t f32_end)
{
    pdsp_u32_t u32_idx = 0;
    pdsp_f32_t f32_idx_max = (pdsp_f32_t)u32_size - 1.0f;
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = pdsp_map((pdsp_f32_t)u32_idx,
                                     0.0f,
                                     f32_idx_max,
                                     f32_start,
                                     f32_end);
    }
}

/**
 * @brief Create logarithmically spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start exponent.
 * @param f32_end End exponent.
 */
static inline void pdsp_logspace(
    pdsp_f32_t af32_out[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_start,
    pdsp_f32_t f32_end)
{
    pdsp_u32_t u32_idx = 0;
    pdsp_f32_t u32_idx_max = (pdsp_f32_t)u32_size - 1.0f;
    pdsp_f32_t u32_exp = 0.0f;
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        u32_exp = pdsp_map((pdsp_f32_t)u32_idx,
                           0.0f,
                           u32_idx_max,
                           f32_start,
                           f32_end);
        af32_out[u32_idx] = powf(10.0f, u32_exp);
    }
}

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
    pdsp_f32_t f32_a,
    pdsp_f32_t f32_b,
    pdsp_f32_t f32_c,
    pdsp_f32_t f32_sin_val,
    pdsp_f32_t f32_cos_val)
{
    ps_state->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
    ps_state->f32_beta = 0.57735026913f * (f32_b - f32_c);
    ps_state->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
    ps_state->f32_d = ps_state->f32_alpha * f32_cos_val + ps_state->f32_beta * f32_sin_val;
    ps_state->f32_q = -ps_state->f32_alpha * f32_sin_val + ps_state->f32_beta * f32_cos_val;
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
    pdsp_f32_t f32_a,
    pdsp_f32_t f32_b,
    pdsp_f32_t f32_c,
    pdsp_f32_t f32_sin_val,
    pdsp_f32_t f32_cos_val)
{
    ps_state->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
    ps_state->f32_beta = 0.57735026913f * (f32_b - f32_c);
    ps_state->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
    ps_state->f32_d = ps_state->f32_alpha * f32_cos_val - ps_state->f32_beta * f32_sin_val;
    ps_state->f32_q = ps_state->f32_alpha * f32_sin_val + ps_state->f32_beta * f32_cos_val;
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
 * @param f32_d d ref value
 * @param f32_q q ref value
 * @param f32_z z ref value
 * @param f32_sin_val Sine value of the grid angle.
 * @param f32_cos_val Cosine value of the grid angle
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_dq0_abc_run(
    pdsp_dq_abc_t *ps_state,
    pdsp_f32_t f32_d,
    pdsp_f32_t f32_q,
    pdsp_f32_t f32_z,
    pdsp_f32_t f32_sin_val,
    pdsp_f32_t f32_cos_val)
{
    ps_state->f32_alpha = f32_d * f32_cos_val - f32_q * f32_sin_val;
    ps_state->f32_beta = f32_d * f32_sin_val + f32_q * f32_cos_val;
    ps_state->f32_a = ps_state->f32_alpha + 0.5f * f32_z;
    ps_state->f32_b = -0.5f * ps_state->f32_alpha + 0.8660254f * ps_state->f32_beta + 0.5f * f32_z;
    ps_state->f32_c = -0.5f * ps_state->f32_alpha - 0.8660254f * ps_state->f32_beta + 0.5f * f32_z;
    return PDSP_OK;
}

/**
 * @brief 2D Interpollation (X->input, Y->Output)
 * @details See: https://en.wikipedia.org/wiki/Linear_interpolation. Requiers division.
 * @param af32_x X axis array. Size must be 2 or higher. Values must be monotonically increasing.
 * @param af32_y Y axis array. Size must be 2 or higher and must be the same as x_arr.
 * @param u32_size Site of the x and y array.
 * @param f32_x_in Interpollation input.
 * @returns pdsp_f32_t Interpollated value.
 */
static inline pdsp_f32_t pdsp_interpollate_2d(
    pdsp_f32_t af32_x[],
    pdsp_f32_t af32_y[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_x_in)
{
    /* Index of higher array element */
    pdsp_u32_t u32_idx_hi = 1U;
    /* Index of lower array element. */
    pdsp_u32_t u32_idx_lo = 0U;
    /* Maximum index */
    pdsp_u32_t u32_idx_max = u32_size - 1U;
    /* Find the higher array index >= 1 (value dependent duration, linear time) */
    while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < u32_idx_max))
    {
        u32_idx_hi++;
    }
    /* Calculate the lower array index (can be 0). */
    u32_idx_lo = u32_idx_hi - 1U;
    /* Calculate the output (uses division) */
    return (af32_y[u32_idx_lo] +
            (f32_x_in - af32_x[u32_idx_lo]) *
                (af32_y[u32_idx_hi] - af32_y[u32_idx_lo]) /
                (af32_x[u32_idx_hi] - af32_x[u32_idx_lo]));
}

#endif /* PDSP_UTIL_H */