/** @file pdsp_signal.h
 *
 * @brief Signal processing functions.
 * @author Falk Kyburz
 */

#ifndef PDSP_SIGNAL_H
#define PDSP_SIGNAL_H

#include "pdsp_types.h"
#include <math.h>

/**
 * @brief Apply gain / offset to raw signal (no oversampling).
 * @param ps_param Signal parameter struct.
 * @param f32_raw0 Raw input signal.
 * @returns pdsp_f32_t Result = (raw * gain + offset) * enable + override.
 */
static inline pdsp_f32_t pdsp_raw_run_1x(
    const pdsp_raw_param_t *ps_param,
    pdsp_f32_t f32_raw0)
{
    return 0.0f;
}

/**
 * @brief Apply gain / offset to raw signal (2x oversampling).
 * @param ps_param Signal parameter struct.
 * @param f32_raw0 Raw input signal.
 * @param f32_raw1 Raw input signal.
 * @returns pdsp_f32_t Result = (raw * gain + offset) * enable + override.
 */
static inline pdsp_f32_t pdsp_raw_run_2x(
    const pdsp_raw_param_t *ps_param,
    pdsp_f32_t f32_raw0,
    pdsp_f32_t f32_raw1)
{
    return 0.0f;
}

/**
 * @brief Apply gain / offset to raw signal (4x oversampling).
 * @param ps_param Signal parameter struct.
 * @param f32_raw0 Raw input signal.
 * @param f32_raw1 Raw input signal.
 * @param f32_raw2 Raw input signal.
 * @param f32_raw3 Raw input signal.
 * @returns pdsp_f32_t Result = (raw * gain + offset) * enable + override.
 */
static inline pdsp_f32_t pdsp_raw_run_4x(
    const pdsp_raw_param_t *ps_param,
    pdsp_f32_t f32_raw0,
    pdsp_f32_t f32_raw1,
    pdsp_f32_t f32_raw2,
    pdsp_f32_t f32_raw3)
{
    return 0.0f;
}

/**
 * @brief Calculate simplple averaging filter.
 * @param ps_param Filter parameter.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_avg_run(
    const pdsp_avg_param_t *pf32_param,
    pdsp_f32_t f32_in)
{
    return 0.0f;
}

/**
 * @brief Calculate DF22 biquad filter.
 * @param ps_state Filter state memory struct.
 * @param ps_param Filter parameter struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
static inline pdsp_f32_t pdsp_df22_run(
    const pdsp_df22_t *ps_state,
    const pdsp_df22_param_t *ps_param,
    pdsp_f32_t f32_in)
{
    return 0.0f;
}

/**
 * @brief Calculate median filter with kernel size 3.
 * @param ps_state Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
static inline pdsp_f32_t pdsp_med3_run(
    const pdsp_med3_t *ps_state,
    pdsp_f32_t f32_in)
{
    return 0.0f;
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
    return 0.0f;
}

#endif /* PDSP_SIGNAL_H */