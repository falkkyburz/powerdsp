/** @file pdspm.h
 *
 * @author Falk Kyburz
 * @brief Power electronics digital signal processing module.
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

#ifndef PDSP_MACRO_H
#define PDSP_MACRO_H

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include "pdsp_math.h"
#include "pdsp_types.h"
#include <math.h>

/*==============================================================================
 PUBLIC TYPEDEFS
 =============================================================================*/
/** @addtogroup util Util
 *  @{
 */

/** Stopwatch struct. */
typedef struct pdsp_macro_stopwatch_tag
{
    /** Time state variable, stores start time. */
    pdsp_u32_t u32_time_mem;
    /** Hardware timer maximum value (overflow). */
    pdsp_u32_t u32_hw_max;
} pdsp_macro_stopwatch_t;

/** Hysteresis value struct. */
typedef struct pdsp_macro_hyst_tag
{
    /** Hysteresis state variable. */
    pdsp_bool_t b_state;
    /** Lower hysteresis threshold. */
    pdsp_f32_t f32_low;
    /** Higher hysteresis threshold. */
    pdsp_f32_t f32_high;
} pdsp_macro_hyst_t;

/** (macro) Char queue parameters. */
typedef struct pdsp_macro_queue_tag
{
    /** Head index of the queue. */
    pdsp_i16_t i16_head;
    /** Tail index of the queue. */
    pdsp_i16_t i16_tail;
    /** Number of items in the queue. */
    pdsp_i16_t i16_count;
    /** Size of the data array. */
    pdsp_i16_t i16_size;
} pdsp_macro_queue_t;

/** @} util */
/* ------------------------------------------------------------------------ */
/** @addtogroup signal Signal
 *  @{
 */

/** DAQ processing variable struct. */
typedef struct pdsp_macro_ain_var_tag
{
    /** Override value. */
    pdsp_f32_t f32_ovr_value;
    /** Override disable. Set to 1.0f to disable override. */
    pdsp_f32_t f32_ovr_dis;
    /** DAQ conversion gain. */
    pdsp_f32_t f32_gain;
    /** DAQ conversion offset. */
    pdsp_f32_t f32_offset;
} pdsp_macro_ain_var_t;

/** Min-max state variable struct. */
typedef struct pdsp_macro_minmax_var_tag
{
    /** Minimum value since last clear. */
    pdsp_f32_t f32_min;
    /** Maximum value sincce last clear. */
    pdsp_f32_t f32_max;
    /** Delta (max-min) value since last clear. */
    pdsp_f32_t f32_delta;
} pdsp_macro_minmax_var_t;

/** Exponential average state memory. */
typedef struct pdsp_macro_expavg_var_tag
{
    /** Exponential average state variable. */
    pdsp_f32_t f32_x1;
    /** Exponential average factor. */
    pdsp_f32_t f32_tau;
} pdsp_macro_expavg_var_t;

/** 1P1Z filter state memory struct. */
typedef struct pdsp_macro_1p1z_inv_tag
{
    /** 1P1Z filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** 1P1Z filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** 1P1Z filter a1 coefficient. */
    pdsp_f32_t f32_a1;
    /** 1P1Z filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** 1P1Z filter output */
    pdsp_f32_t f32_out;
} pdsp_macro_1p1z_inv_t;

/** 2P2Z filter state memory struct. */
typedef struct pdsp_macro_2p2z_inv_tag
{
    /** 2P2Z filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** 2P2Z filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** 2P2Z filter b2 coefficient. */
    pdsp_f32_t f32_b2;
    /** 2P2Z filter a1 coefficient. */
    pdsp_f32_t f32_a1;
    /** 2P2Z filter a2 coefficient. */
    pdsp_f32_t f32_a2;
    /** 2P2Z filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** 2P2Z filter x1 state variable */
    pdsp_f32_t f32_x2;
    /** 2P2Z filter output */
    pdsp_f32_t f32_out;
} pdsp_macro_2p2z_inv_t;

/** 3P3Z filter state memory struct. */
typedef struct pdsp_macro_3p3z_inv_tag
{
    /** 3P3Z filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** 3P3Z filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** 3P3Z filter b2 coefficient. */
    pdsp_f32_t f32_b2;
    /** 3P3Z filter b3 coefficient. */
    pdsp_f32_t f32_b3;
    /** 3P3Z filter a1 coefficient. */
    pdsp_f32_t f32_a1;
    /** 3P3Z filter a2 coefficient. */
    pdsp_f32_t f32_a2;
    /** 3P3Z filter a2 coefficient. */
    pdsp_f32_t f32_a3;
    /** 3P3Z filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** 3P3Z filter x1 state variable */
    pdsp_f32_t f32_x2;
    /** 3P3Z filter x1 state variable */
    pdsp_f32_t f32_x3;
    /** 3P3Z filter output */
    pdsp_f32_t f32_out;
} pdsp_macro_3p3z_inv_t;

/** Median memory struct. */
typedef struct pdsp_macro_med3_var_tag
{
    /** Median of 3 last value. */
    pdsp_f32_t f32_x1;
    /** Median of 3 before last value. */
    pdsp_f32_t f32_x2;
    /** Median of 3 output. */
    pdsp_f32_t f32_out;
} pdsp_macro_med3_var_t;

/** Rolling sum variable struct. */
typedef struct pdsp_macro_rollavg_tag
{
    /** Queue struct */
    pdsp_macro_queue_t s_queue;
    /** Sum of history array (divided by size) */
    pdsp_f32_t f32_sum;
    /** Inverse window length. */
    pdsp_f32_t f32_win_size_inv;
} pdsp_macro_rollavg_t;

/** Rolling sum variable struct. */
typedef struct pdsp_macro_rollavg3_tag
{
    /** Queue struct */
    pdsp_macro_queue_t s_queue;
    /** Sum of history array (divided by size) */
    pdsp_f32_t f32_sum0;
    /** Sum of history array (divided by size) */
    pdsp_f32_t f32_sum1;
    /** Sum of history array (divided by size) */
    pdsp_f32_t f32_sum2;
    /** Inverse window length. */
    pdsp_f32_t f32_win_size_inv;
} pdsp_macro_rollavg3_t;

/** @} signal */

/*==============================================================================
 GLOBAL MACROS
 =============================================================================*/

/** @addtogroup util
 *  @{
 */

/**
 * @brief (macro) Start the stopwatch with 32bit HW counter.
 * @param s_data Stopwatch struct pdsp_macto_stopwatch_t.
 * @param u32_hw_now Current time from the hardware timer.
 */
#define pdsp_macro_stopwatch_start(s_data, u32_hw_now)                         \
    (s_data).u32_time_mem = (u32_hw_now)

/**
 * @brief (macro) Calculate the time elapsed since the start.
 * Alternative with signed int min(max(0, now-mem), now-mem+max)
 * @param s_data Stopwatch parameter struct pdsp_macto_stopwatch_t.
 * @param u32_hw_now Current time from the hardware timer.
 */
#define pdsp_macro_stopwatch_stop(s_data, u32_hw_now)                          \
    ((s_data).u32_time_mem < (u32_hw_now))                                     \
        ? ((u32_hw_now) - (s_data).u32_time_mem)                               \
        : ((u32_hw_now) - (s_data).u32_time_mem + (s_data).u32_hw_max)

/**
 * @brief (macro) Map a value from one range to another (Uses division).
 * @details It uses the formula y = (y1 - y0) / (x1 - x0) * (x - x0) + y0 to
 * to implement the mapping (interpollation). The output for (x1 - x0) == 0 is y
 * = (y1 - y0) * 0.5.
 * @param f32_in Input value.
 * @param f32_in_lo Input range low value.
 * @param f32_in_hi Input range high value.
 * @param f32_out_lo Output range low value.
 * @param f32_out_hi Output range high value.
 */
#define pdsp_macro_map(f32_in, f32_in_lo, f32_in_hi, f32_out_lo, f32_out_hi)   \
    (((f32_in_hi) - (f32_in_lo)) == 0.0f)                                      \
        ? (((f32_out_hi) + (f32_out_lo)) * 0.5f)                               \
        : ((pdsp_divf(((f32_out_hi) - (f32_out_lo)),                           \
                      ((f32_in_hi) - (f32_in_lo))) *                           \
                ((f32_in) - (f32_in_lo)) +                                     \
            (f32_out_lo)))

/**
 * @brief (macro) Value hysteresis function.
 * @param s_data Data struct pdsp_macro_hyst_t.
 * @param f32_in Value input.
 */
#define pdsp_macro_hysteresis_value_run(s_data, f32_in)                        \
    if ((f32_in) > (s_data).f32_high)                                          \
    {                                                                          \
        (s_data).b_state = PDSP_TRUE;                                          \
    }                                                                          \
    else if ((f32_in) < (s_data).f32_low)                                      \
    {                                                                          \
        (s_data).b_state = PDSP_FALSE;                                         \
    }

/**
 * @brief (Macro) Write bit.
 * @param v Variable.
 * @param bit Bit position.
 * @param val Value to write.
 */
#define pdsp_macro_bit_write(v, bit, val)                                      \
    (v) &= ~(1 << (bit));                                                      \
    (v) |= (((val)&1U) << (bit))

/**
 * @brief (Macro) Read bit.
 * @param v Variable.
 * @param bit Bit position.
 */
#define pdsp_macro_bit_read(v, bit) (((v) >> (bit)) & 1U)

/**
 * @brief (Macro) Mask set.
 * @param v Variable.
 * @param mask Mask.
 */
#define pdsp_macro_mask_set(v, mask) (v) |= (mask)

/**
 * @brief (Macro) Mask clear.
 * @param v Variable.
 * @param mask Mask.
 */
#define pdsp_macro_mask_clear(v, mask) (v) &= ~(mask)

/**
 * @brief (Macro) Mask get true and false.
 * @param v Variable.
 * @param mtrue Mask for true values.
 * @param mfalse Mask for false values.
 */
#define pdsp_macro_mask_get(v, mtrue, mfalse)                                  \
    ((v) & (mtrue)) | ((~(v)) & (mfalse))

/**
 * @brief (macro) Weighted mean from two values.
 * @param f32_in0 First sample.
 * @param f32_in1 Second sample.
 * @param f32_weight0 Weight of first sample [0, 1]. Second sample weight is
 * (1-f32_weight0).
 */
#define pdsp_macro_mean2w_f32(f32_in0, f32_in1, f32_weight0)                   \
    ((f32_in0) * (f32_weight0)) + ((f32_in1) * (1.0f - (f32_weight0)))

/**
 * @brief (macro) Mean from four 16bit values. Use to average 4 ADC values.
 * @param u16_in0 Sample 0.
 * @param u16_in1 Sample 1.
 * @param u16_in2 Sample 2.
 * @param u16_in3 Sample 3.
 */
#define pdsp_macro_mean4_u16(u16_in0, u16_in1, u16_in2, u16_in3)               \
    0.25f * (pdsp_f32_t)((pdsp_u32_t)(u16_in0) + (pdsp_u32_t)(u16_in1) +       \
                         (pdsp_u32_t)(u16_in2) + (pdsp_u32_t)(u16_in3))

/**
 * @brief (macro) Mean from eight 16bit values. Use to average 4 ADC values.
 * @param u16_in0 Sample 0.
 * @param u16_in1 Sample 1.
 * @param u16_in2 Sample 2.
 * @param u16_in3 Sample 3.
 * @param u16_in4 Sample 4.
 * @param u16_in5 Sample 5.
 * @param u16_in6 Sample 6.
 * @param u16_in7 Sample 7.
 */
#define pdsp_macro_mean8_u16(u16_in0, u16_in1, u16_in2, u16_in3, u16_in4,      \
                             u16_in5, u16_in6, u16_in7)                        \
    0.125f * (pdsp_f32_t)((pdsp_u32_t)(u16_in0) + (pdsp_u32_t)(u16_in1) +      \
                          (pdsp_u32_t)(u16_in2) + (pdsp_u32_t)(u16_in3) +      \
                          (pdsp_u32_t)(u16_in4) + (pdsp_u32_t)(u16_in5) +      \
                          (pdsp_u32_t)(u16_in6) + (pdsp_u32_t)(u16_in7))

/**
 * @brief (define )Initialize queue.
 * @param s_data Queue data struct pdsp_macro_queue_t.
 * @param size Size of the array.
 */
#define pdsp_macro_queue_init(s_data, size)                                    \
    (s_data).i16_size = (size);                                                \
    (s_data).i16_count = 0;                                                    \
    (s_data).i16_head = (s_data).i16_size - 1;                                 \
    (s_data).i16_tail = 0

/**
 * @brief (macro) Check if queue is empty.
 * @param s_data Queue data struct pdsp_macro_queue_t.
 * @return pdsp_bool_t PDSP_TRUE if queue is not empty, PDSP_FALSE otherwise.
 */
#define pdsp_macro_queue_is_not_empty(s_data) ((s_data).i16_count > 0)
/**
 * @brief (macro) Check if queue is not full.
 * @param s_data Queue data struct pdsp_macro_queue_t.
 * @return pdsp_bool_t PDSP_TRUE if queue is not full, PDSP_FALSE otherwise.
 */
#define pdsp_macro_queue_is_not_full(s_data)                                   \
    ((s_data).i16_count < (s_data).i16_size)

/**
 * @brief (macro) Advance the head of the queue.
 * @param s_data Queue data struct pdsp_macro_queue_t.
 */
#define pdsp_macro_queue_advance_head(s_data)                                  \
    (s_data).i16_head++;                                                       \
    if ((s_data).i16_head >= (s_data).i16_size)                                \
    {                                                                          \
        (s_data).i16_head = 0;                                                 \
    }                                                                          \
    (s_data).i16_count++

/**
 * @brief (macro) Advance the tail of the queue.
 * @param s_data Queue data struct pdsp_macro_queue_t.
 */
#define pdsp_macro_queue_advance_tail(s_data)                                  \
    (s_data).i16_tail++;                                                       \
    if ((s_data).i16_tail >= (s_data).i16_size)                                \
    {                                                                          \
        (s_data).i16_tail = 0;                                                 \
    }                                                                          \
    (s_data).i16_count--

/**
 * @brief (macro) Push data to the queue.
 * @param s_data Pointer to the queue struct pdsp_macro_queue_t.
 * @param a_data Queue data array.
 * @param in Data to push to the queue.
 */
#define pdsp_macro_queue_push(s_data, a_data, in)                              \
    (s_data).i16_head++;                                                       \
    if ((s_data).i16_head >= (s_data).i16_size)                                \
    {                                                                          \
        (s_data).i16_head = 0;                                                 \
    }                                                                          \
    (s_data).i16_count++;                                                      \
    (a_data)[(s_data).i16_head] = (in)

/**
 * @brief (macro) Pop data from the queue.
 * @param s_data Pointer to the queue struct pdsp_macro_queue_t.
 * @param a_data Queue data array.
 */
#define pdsp_macro_queue_pop(s_data, a_data)                                   \
    (a_data)[(s_data).i16_tail];                                               \
    (s_data).i16_tail++;                                                       \
    if ((s_data).i16_tail >= (s_data).i16_size)                                \
    {                                                                          \
        (s_data).i16_tail = 0;                                                 \
    }                                                                          \
    (s_data).i16_count--

/** @} util */
/* ------------------------------------------------------------------------ */
/** @addtogroup signal Signal
 *  @{
 */

/**
 * @brief (Macro) Apply gain / offset to raw signal.
 * @param s_data Signal data struct pdsp_macro_ain_t.
 * @param raw Raw input signal.
 */
#define pdsp_macro_ain(s_data, raw)                                            \
    (((((raw) * (s_data).f32_gain) + (s_data).f32_offset) *                    \
      (s_data).f32_ovr_dis) +                                                  \
     (s_data).f32_ovr_value)

/**
 * @brief (Macro) Apply gain / offset to raw signal with 2x oversampling.
 * @param s_data Signal data struct pdsp_macro_ain_t.
 * @param raw0 Raw input signal.
 * @param raw1 Raw input signal.
 */
#define pdsp_macro_ain2(s_data, raw0, raw1)                                    \
    ((((((raw0) + (raw1)) * (s_data).f32_gain) + (s_data).f32_offset) *        \
      (s_data).f32_ovr_dis) +                                                  \
     (s_data).f32_ovr_value)

/**
 * @brief (Macro) Apply gain / offset to raw signal with 4x oversampling.
 * @param s_data Signal data struct pdsp_macro_ain_t.
 * @param raw0 Raw input signal.
 * @param raw1 Raw input signal.
 * @param raw2 Raw input signal.
 * @param raw3 Raw input signal.
 */
#define pdsp_macro_ain4(s_data, raw0, raw1, raw2, raw3)                        \
    ((((((raw0) + (raw1) + (raw2) + (raw3)) * (s_data).f32_gain) +             \
       (s_data).f32_offset) *                                                  \
      (s_data).f32_ovr_dis) +                                                  \
     (s_data).f32_ovr_value)

/**
 * @brief (Macro) Enable override.
 * @param s_data Signal data struct pdsp_macro_ain_t.
 */
#define pdsp_macro_ain_ovr_enable(s_data) (s_data).f32_ovr_dis = 0.0f

/**
 * @brief (Macro) Disable override.
 * @param s_data Signal data struct pdsp_macro_ain_t.
 */
#define pdsp_macro_ain_ovr_disable(s_data) (s_data).f32_ovr_dis = 1.0f

/**
 * @brief (Macro) Set injection value.
 * @param s_data Signal data struct pdsp_macro_ain_var_t.
 * @param inj Injection signal.
 */
#define pdsp_macro_ain_inject(s_data, inj) (s_data).f32_ovr_value = (inj)

/**
 * @brief (macro) Initialize / Clear min-max struct.
 * @param s_data Min-max state variable struct pdsp_macro_minmax_var_t.
 */
#define pdsp_macro_minmax_clear(s_data)                                        \
    (s_data).f32_min = PDSP_POS_INF;                                           \
    (s_data).f32_max = PDSP_NEG_INF;                                           \
    (s_data).f32_delta = 0.0f

/**
 * @brief (macro) Process min-max.
 * @param s_data Min-max state variable struct pdsp_macro_minmax_var_t.
 * @param f32_in Filter input.
 */
#define pdsp_macro_minmax(s_data, f32_in)                                      \
    (s_data).f32_min = pdsp_minf((s_data).f32_min, (f32_in));                  \
    (s_data).f32_max = pdsp_maxf((s_data).f32_max, (f32_in));                  \
    (s_data).f32_delta = (s_data).f32_max - (s_data).f32_min

/**
 * @brief (macro) Initialize / Clear simple exponential average struct.
 * @param s_data Filter state variable struct pdsp_macro_expavg_var_t.
 */
#define pdsp_macro_expavg_clear(s_data) (s_data).f32_x1 = 0.0f

/**
 * @brief (macro) Calculate simplple exponential averaging filter.
 * @param s_data Filter state variable struct pdsp_macro_expavg_var_t.
 * @param in Filter input.
 */
#define pdsp_macro_expavg_calc(s_data, in)                                     \
    (s_data).f32_x1 += (s_data).f32_tau * ((in) - (s_data).f32_x1)

/**
 * @brief (macro) Initialize / Clear DF21 filter struct.
 * @param s_var Filter state variable struct pdsp_macro_1p1z_inv_t.
 */
#define pdsp_macro_df21_clear(s_var) (s_var).f32_x1 = 0.0f

/**
 * @brief (macro) Calculate DF21 filter.
 * @param s_data Filter data memory struct pdsp_macro_1p1z_inv_t.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
#define pdsp_macro_df21(s_data, f32_in)                                        \
    (s_data).f32_out = ((f32_in) * (s_data).f32_b0) + (s_data).f32_x1;         \
    (s_data).f32_x1 =                                                          \
        ((f32_in) * (s_data).f32_b1) + ((s_data).f32_out * (s_data).f32_a1)

/**
 * @brief (macro) Pre-calculate DF21 filter. Must be used in combination with
 * pdsp_df21_post.
 * @param s_data Filter data memory struct pdsp_macro_1p1z_inv_t.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
#define pdsp_macro_df21_pre(s_data, f32_in)                                    \
    (s_data).f32_out = ((f32_in) * (s_data).f32_b0) + (s_data).f32_x1

/**
 * @brief (macro) Post-calculate DF21 filter. Must be used in combination with
 * pdsp_df21_pre.
 * @param s_data Filter data memory struct pdsp_macro_1p1z_inv_t.
 * @param f32_in Filter input signal.
 */
#define pdsp_macro_df21_post(s_data, f32_in)                                   \
    (s_data).f32_x1 =                                                          \
        ((f32_in) * (s_data).f32_b1) + ((s_data).f32_out * (s_data).f32_a1)

/**
 * @brief (macro) Initialize / Clear DF22 biquad filter struct.
 * @param s_data Filter state variable struct pdsp_macro_2p2z_inv_t.
 */
#define pdsp_macro_df22_clear(s_data)                                          \
    (s_data).f32_x1 = 0.0f;                                                    \
    (s_data).f32_x2 = 0.0f

/**
 * @brief (macro) Calculate DF22 biquad filter.
 * @param s_data Filter data memory struct pdsp_macro_2p2z_inv_t.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
#define pdsp_macro_df22(s_data, f32_in)                                        \
    (s_data).f32_out = ((f32_in) * (s_data).f32_b0) + (s_data).f32_x1;         \
    (s_data).f32_x1 = ((f32_in) * (s_data).f32_b1) +                           \
                      ((s_data).f32_out * (s_data).f32_a1) + (s_data).f32_x2;  \
    (s_data).f32_x2 =                                                          \
        ((f32_in) * (s_data).f32_b2) + ((s_data).f32_out * (s_data).f32_a2)

/**
 * @brief (macro) Pre-calculate DF22 biquad filter. Must be used in combination
 * with pdsp_df22_post.
 * @param s_data Filter data memory struct pdsp_macro_2p2z_inv_t.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
#define pdsp_macro_df22_pre(s_data, f32_in)                                    \
    (s_data).f32_out = ((f32_in) * (s_data).f32_b0) + (s_data).f32_x1

/**
 * @brief (macro) Post-calculate DF22 biquad filter. Must be used in combination
 * with pdsp_df22_pre.
 * @param s_data Filter data memory struct pdsp_macro_2p2z_inv_t.
 * @param f32_in Filter input signal.
 */
#define pdsp_macro_df22_post(s_data, f32_in)                                   \
    (s_data).f32_x1 = ((f32_in) * (s_data).f32_b1) +                           \
                      ((s_data).f32_out * (s_data).f32_a1) + (s_data).f32_x2;  \
    (s_data).f32_x2 =                                                          \
        ((f32_in) * (s_data).f32_b2) + ((s_data).f32_out * (s_data).f32_a2)

/**
 * @brief (macro) Initialize / Clear DF23 filter struct.
 * @param s_data Filter state variable struct pdsp_macro_3p3z_inv_t.
 */
#define pdsp_macro_df23_clear(s_data)                                          \
    (s_data).f32_x1 = 0.0f;                                                    \
    (s_data).f32_x2 = 0.0f;                                                    \
    (s_data).f32_x3 = 0.0f

/**
 * @brief (macro) Calculate DF23 filter.
 * @param s_data Filter data memory struct pdsp_macro_3p3z_inv_t.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
#define pdsp_macro_df23(s_data, f32_in)                                        \
    (s_data).f32_out = ((f32_in) * (s_data).f32_b0) + (s_data).f32_x1;         \
    (s_data).f32_x1 = ((f32_in) * (s_data).f32_b1) +                           \
                      ((s_data).f32_out * (s_data).f32_a1) + (s_data).f32_x2;  \
    (s_data).f32_x2 = ((f32_in) * (s_data).f32_b2) +                           \
                      ((s_data).f32_out * (s_data).f32_a2) + (s_data).f32_x3;  \
    (s_data).f32_x3 =                                                          \
        ((f32_in) * (s_data).f32_b3) + ((s_data).f32_out * (s_data).f32_a3)

/**
 * @brief (macro) Pre-calculate DF23 filter. Must be used in combination with
 * pdsp_df23_post.
 * @param s_data Filter data memory struct pdsp_macro_3p3z_inv_t.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
#define pdsp_macro_df23_pre(s_data, f32_in)                                    \
    (s_data).f32_out = ((f32_in) * (s_data).f32_b0) + (s_data).f32_x1

/**
 * @brief (macro) Post-calculate DF23 biquad filter. Must be used in combination
 * with pdsp_df23_pre.
 * @param s_data Filter data memory struct pdsp_macro_3p3z_inv_t.
 * @param f32_in Filter input signal.
 */
#define pdsp_macro_df23_post(s_data, f32_in)                                   \
    (s_data).f32_x1 = ((f32_in) * (s_data).f32_b1) +                           \
                      ((s_data).f32_out * (s_data).f32_a1) + (s_data).f32_x2;  \
    (s_data).f32_x2 = ((f32_in) * (s_data).f32_b2) +                           \
                      ((s_data).f32_out * (s_data).f32_a2) + (s_data).f32_x3;  \
    (s_data).f32_x3 =                                                          \
        ((f32_in) * (s_data).f32_b3) + ((s_data).f32_out * (s_data).f32_a3)

/**
 * @brief (macro) Initialize / Clear median filter struct.
 * @param s_data Filter state variable struct pdsp_macro_med3_var_t.
 */
#define pdsp_macro_med3_clear(s_data)                                          \
    (s_data).f32_x1 = 0.0f;                                                    \
    (s_data).f32_x2 = 0.0f

/**
 * @brief (macro) Calculate median filter with kernel size 3.
 * @param s_data Filter state memory struct pdsp_macro_med3_var_t.
 * @param f32_in Filter input signal.
 */
#define pdsp_macro_med3(s_data, f32_in)                                        \
    (s_data).f32_out =                                                         \
        (((s_data).f32_x2 + (s_data).f32_x1 + (f32_in)) -                      \
         pdsp_minf((s_data).f32_x2, pdsp_minf((s_data).f32_x1, (f32_in))) -    \
         pdsp_maxf((s_data).f32_x2, pdsp_maxf((s_data).f32_x1, (f32_in))));    \
    (s_data).f32_x2 = (s_data).f32_x1;                                         \
    (s_data).f32_x1 = (f32_in)

/**
 * @brief (macro) Initialize / Clear rolling average struct.
 * @param s_data Filter state variable struct pdsp_macro_rollavg_t.
 * @param size Size of the array.
 * @param i16_win_size Number of samples in the window. i16_win_size <=
 * queue size.
 */
#define pdsp_macro_rollavg_init(s_data, size, i16_win_size)                    \
    (s_data).f32_sum = 0.0f;                                                   \
    (s_data).s_queue.i16_size = (size);                                        \
    (s_data).s_queue.i16_count = (s_data).s_queue.i16_size;                    \
    (s_data).s_queue.i16_head = (s_data).s_queue.i16_size - 1;                 \
    (s_data).s_queue.i16_tail = (s_data).s_queue.i16_size - (i16_win_size);    \
    (s_data).f32_win_size_inv = pdsp_divf(1.0f, (pdsp_f32_t)(i16_win_size))

/**
 * @brief (macro) Calculate rolling average.
 * @param s_data Filter state memory struct pdsp_macro_rollavg_t.
 * @param a_data Filter data array.
 * @param f32_in Rolling sum input signal.
 */
#define pdsp_macro_rollavg(s_data, a_data, f32_in)                             \
    (s_data).f32_sum -= (a_data)[(s_data).s_queue.i16_tail];                   \
    (s_data).s_queue.i16_tail++;                                               \
    if ((s_data).s_queue.i16_tail >= (s_data).s_queue.i16_size)                \
    {                                                                          \
        (s_data).s_queue.i16_tail = 0;                                         \
    }                                                                          \
    (s_data).f32_sum += (f32_in) * (s_data).f32_win_size_inv;                  \
    (s_data).s_queue.i16_head++;                                               \
    if ((s_data).s_queue.i16_head >= (s_data).s_queue.i16_size)                \
    {                                                                          \
        (s_data).s_queue.i16_head = 0;                                         \
    }                                                                          \
    (a_data)[(s_data).s_queue.i16_head] = (f32_in) * (s_data).f32_win_size_inv

/**
 * @brief (macro) Initialize / Clear rolling sum 6 struct for 3 phase power.
 * @param s_data Filter state variable struct pdsp_macro_rollavg3_t.
 * @param size Size of the array.
 * @param i16_win_size Number of samples in the window. i16_win_size <=
 * queue size.
 */
#define pdsp_macro_rollavg3_init(s_data, size, i16_win_size)                   \
    (s_data).f32_sum0 = 0.0f;                                                  \
    (s_data).f32_sum1 = 0.0f;                                                  \
    (s_data).f32_sum2 = 0.0f;                                                  \
    (s_data).s_queue.i16_size = (size);                                        \
    (s_data).s_queue.i16_count = (s_data).s_queue.i16_size;                    \
    (s_data).s_queue.i16_head = (s_data).s_queue.i16_size - 1;                 \
    (s_data).s_queue.i16_tail = (s_data).s_queue.i16_size - (i16_win_size);    \
    (s_data).f32_win_size_inv = pdsp_divf(1.0f, (pdsp_f32_t)(i16_win_size))

/**
 * @brief (macro) Calculate rolling sum 6 for 3 phase power.
 * @param s_data Filter state memory struct pdsp_macro_rollsum_t.
 * @param a_data Filter data array.
 * @param f32_in Rolling sum input signal.
 */
#define pdsp_macro_rollavg3(s_data, a_data, f32_in0, f32_in1, f32_in2)         \
    (s_data).f32_sum0 -= (a_data)[(s_data).s_queue.i16_tail][0];               \
    (s_data).f32_sum1 -= (a_data)[(s_data).s_queue.i16_tail][1];               \
    (s_data).f32_sum2 -= (a_data)[(s_data).s_queue.i16_tail][2];               \
    (s_data).s_queue.i16_tail++;                                               \
    if ((s_data).s_queue.i16_tail >= (s_data).s_queue.i16_size)                \
    {                                                                          \
        (s_data).s_queue.i16_tail = 0;                                         \
    }                                                                          \
    (s_data).f32_sum0 += (f32_in0) * (s_data).f32_win_size_inv;                \
    (s_data).f32_sum1 += (f32_in1) * (s_data).f32_win_size_inv;                \
    (s_data).f32_sum2 += (f32_in2) * (s_data).f32_win_size_inv;                \
    (s_data).s_queue.i16_head++;                                               \
    if ((s_data).s_queue.i16_head >= (s_data).s_queue.i16_size)                \
    {                                                                          \
        (s_data).s_queue.i16_head = 0;                                         \
    }                                                                          \
    (a_data)[(s_data).s_queue.i16_head][0] =                                   \
        (f32_in0) * (s_data).f32_win_size_inv;                                 \
    (a_data)[(s_data).s_queue.i16_head][1] =                                   \
        (f32_in1) * (s_data).f32_win_size_inv;                                 \
    (a_data)[(s_data).s_queue.i16_head][2] =                                   \
        (f32_in2) * (s_data).f32_win_size_inv

/**
 * @brief (macro) Initialize rolling voltage, current, power monitor.
 * @param s_data Filter state variable struct pdsp_macro_rollavg3_t.
 * @param size Size of the array.
 * @param i16_win_size Number of samples in the window. i16_win_size <=
 * queue size.
 */
#define pdsp_macro_rollvap_init(s_data, size, i16_win_size)                    \
    (s_data).f32_sum0 = 0.0f;                                                  \
    (s_data).f32_sum1 = 0.0f;                                                  \
    (s_data).f32_sum2 = 0.0f;                                                  \
    (s_data).s_queue.i16_size = (size);                                        \
    (s_data).s_queue.i16_count = (s_data).s_queue.i16_size;                    \
    (s_data).s_queue.i16_head = (s_data).s_queue.i16_size - 1;                 \
    (s_data).s_queue.i16_tail = (s_data).s_queue.i16_size - (i16_win_size);    \
    (s_data).f32_win_size_inv = pdsp_divf(1.0f, (pdsp_f32_t)(i16_win_size))

/**
 * @brief (macro) Calculate rolling voltage, current, power meter.
 * @details sum0 = volt_rmssq, sum1 = current_rmssq, sum2 = power_avg
 * @param s_data Filter state memory struct pdsp_macro_rollavg3_t.
 * @param a_data Filter data array [size][3] .
 * @param f32_in Rolling sum input signal.
 */
#define pdsp_macro_rollvap(s_data, a_data, f32_volt, f32_curr)                 \
    (s_data).f32_sum0 -= (a_data)[(s_data).s_queue.i16_tail][0];               \
    (s_data).f32_sum1 -= (a_data)[(s_data).s_queue.i16_tail][1];               \
    (s_data).f32_sum2 -= (a_data)[(s_data).s_queue.i16_tail][2];               \
    (s_data).s_queue.i16_tail++;                                               \
    if ((s_data).s_queue.i16_tail >= (s_data).s_queue.i16_size)                \
    {                                                                          \
        (s_data).s_queue.i16_tail = 0;                                         \
    }                                                                          \
    (s_data).f32_sum0 += (f32_volt) * (f32_volt) * (s_data).f32_win_size_inv;  \
    (s_data).f32_sum1 += (f32_curr) * (f32_curr) * (s_data).f32_win_size_inv;  \
    (s_data).f32_sum2 += (f32_volt) * (f32_curr) * (s_data).f32_win_size_inv;  \
    (s_data).s_queue.i16_head++;                                               \
    if ((s_data).s_queue.i16_head >= (s_data).s_queue.i16_size)                \
    {                                                                          \
        (s_data).s_queue.i16_head = 0;                                         \
    }                                                                          \
    (a_data)[(s_data).s_queue.i16_head][0] =                                   \
        (f32_volt) * (f32_volt) * (s_data).f32_win_size_inv;                   \
    (a_data)[(s_data).s_queue.i16_head][1] =                                   \
        (f32_curr) * (f32_curr) * (s_data).f32_win_size_inv;                   \
    (a_data)[(s_data).s_queue.i16_head][2] =                                   \
        (f32_volt) * (f32_curr) * (s_data).f32_win_size_inv

/** @} signal */

/*==============================================================================
 ENF OF FILE
 =============================================================================*/
#endif /* PDSP_MACRO_H */
