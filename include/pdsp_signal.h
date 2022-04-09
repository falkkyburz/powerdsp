/** @file pdsp_signal.h
 *
 * @brief Signal processing functions.
 * @author Falk Kyburz
 */

#ifndef PDSP_SIGNAL_H
#define PDSP_SIGNAL_H

#include "pdsp_types.h"
#include <math.h>

#define PDSP_GAIN_1X (1.0f / 1.0f)
#define PDSP_GAIN_2X (1.0f / 2.0f)
#define PDSP_GAIN_3X (1.0f / 3.0f)
#define PDSP_GAIN_4X (1.0f / 4.0f)
#define PDSP_GAIN_5X (1.0f / 5.0f)
#define PDSP_GAIN_6X (1.0f / 6.0f)
#define PDSP_GAIN_7X (1.0f / 7.0f)
#define PDSP_GAIN_8X (1.0f / 8.0f)

/**
 * @brief Apply gain / offset to raw signal.
 * @param ps_param Signal parameter struct.
 * @param f32_raw Raw input signal.
 * @returns pdsp_f32_t Result = (raw * gain + offset) * enable + override.
 */
static inline pdsp_f32_t pdsp_raw_run(
    const pdsp_raw_param_t *ps_param,
    const pdsp_override_t *ps_ovr,
    pdsp_f32_t f32_raw)
{
    pdsp_u32_t ret[2] = {((f32_raw * ps_param->f32_gain) + ps_param->f32_offset), ps_ovr->f32_value};
    return ret[ps_ovr->u32_enable];
}

/**
 * @brief Calculate simplple exponential averaging filter.
 * @param ps_param Filter parameter.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_expavg_run(
    pdsp_expavg_t *ps_state,
    const pdsp_expavg_param_t *pf32_param,
    pdsp_f32_t f32_in)
{
    *ps_state = *ps_state + *pf32_param * (f32_in - *ps_state);
    return *ps_state;
}

/**
 * @brief Calculate DF22 biquad filter.
 * @param ps_state Filter state memory struct.
 * @param ps_param Filter parameter struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
static inline pdsp_f32_t pdsp_df22_run(
    pdsp_df22_t *ps_state,
    const pdsp_df22_param_t *ps_param,
    pdsp_f32_t f32_in)
{
    pdsp_f32_t f32_out = (f32_in * ps_param->f32_b0) + ps_state->f32_x1;
    ps_state->f32_x1 = (f32_in * ps_param->f32_b1) + (f32_out * ps_param->f32_a1) + ps_state->f32_x2;
    ps_state->f32_x2 = (f32_in * ps_param->f32_b2) + (f32_out * ps_param->f32_a2);
    return f32_out;
}

/**
 * @brief Calculate median filter with kernel size 3.
 * @param ps_state Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
static inline pdsp_f32_t pdsp_med3_run(
    pdsp_med3_t *ps_state,
    pdsp_f32_t f32_in)
{
    /* calculate median3 filter */
    ps_state->f32_x0 = ((ps_state->f32_x1 + ps_state->f32_x2 + f32_in) -
                        fminf(ps_state->f32_x1, fminf(ps_state->f32_x2, f32_in)) -
                        fmaxf(ps_state->f32_x1, fmaxf(ps_state->f32_x2, f32_in)));
    /* store history x[k-2] = x[k-1] */
    ps_state->f32_x2 = ps_state->f32_x1;
    /* store history x[k-1] = new */
    ps_state->f32_x1 = ps_state->f32_x0;
    return ps_state->f32_x0;
}

/**
 * @brief Calculate rolling averaging filter.
 * @param ps_state Filter state memory struct.
 * @param af32_history Filter history array.
 * @param u32_size History size.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_rolling_avg_run(
    pdsp_rolling_avg_t *ps_state,
    pdsp_f32_t af32_history[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_in)
{
    return 0.0f;
}

/**
 * @brief Calculate rolling Root Mean Square filter.
 * @param ps_state Filter state memory struct.
 * @param af32_history Filter history array.
 * @param u32_size History size.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_rolling_rms_run(
    pdsp_rolling_rms_t *ps_state,
    pdsp_f32_t af32_history[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_in)
{
    pdsp_u32_t u32_tail = 0U;
    pdsp_f32_t f32_out = 0.0f;
    /* Place new scaled value to head position. */
    af32_history[ps_state->u32_head] = (f32_in * f32_in) * (1.0f / (pdsp_f32_t)u32_size);
    /* Add the head value to the sum of squares state variable. */
    ps_state->f32_sumsq += af32_history[ps_state->u32_head];
    /* Calculate square root for the output */
    f32_out = sqrtf(ps_state->f32_sumsq);
    /* compute the new tail index by using bitmask */
    // tail = (r->rms_head + 1U) & (size_pow2 - 1U)
    u32_tail = (ps_state->u32_head < (u32_size - 1U)) ? (ps_state->u32_head + 1U) : (0U);
    /* Set the head to tail for the next iteration. */
    ps_state->u32_head = u32_tail;
    /* Subtract the tail value from the state variable for the next iteration. */
    ps_state->f32_sumsq -= af32_history[u32_tail];
    return f32_out;
}

#endif /* PDSP_SIGNAL_H */