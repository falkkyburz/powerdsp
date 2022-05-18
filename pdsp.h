/** @file pdsp.h
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

#ifndef PDSP_H
#define PDSP_H

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include <math.h>
#include <stdbool.h>
#include <stddef.h>

/*==============================================================================
 CONFIGURATION
 =============================================================================*/

#ifdef PDSP_DISABLE_ASSERT
/** Empty assert macro in case assert is disabled. */
#define PDSP_ASSERT(x)
#else
/** Assert macro */
#define PDSP_ASSERT(x) pdsp_assert(x)
#endif

#ifdef PDSP_STATIC_FUNCTIONS
/** All functions have storage class static */
#define pdsp_extern static
#else
/** All functions have storage class extern */
#define pdsp_extern extern
#endif

/*==============================================================================
 PUBLIC DEFINES
 =============================================================================*/

/** @addtogroup math Math
 *  @{
 */

/** True value. */
#define PDSP_TRUE 1
/** False value. */
#define PDSP_FALSE 0

/** Float literal holding PI. */
#define PDSP_PI_F (3.14159265358f)
/** Float literal holding PI/2. */
#define PDSP_PI_2_F (1.57079632679f)
/** Float literal holding PI/4. */
#define PDSP_PI_4_F (0.78539816339f)
/** Float literal holding 2*PI. */
#define PDSP_2_PI_F (6.28318530718f)
/** Float literal holding 1/(2*PI). */
#define PDSP_2_PI_INV_F (1.0f / 6.28318530718f)
/** Float literal holding 2*PI/3. */
#define PDSP_2_PI_3_F (2.09439510239f)
/** Float literal holding 4*PI/3. */
#define PDSP_4_PI_3_F (4.18879020478f)
/** Float literal holding sqrt(2). */
#define PDSP_SQRT2_F (1.41421356237f)
/** Float literal holding sqrt(1/2). */
#define PDSP_SQRT1_2_F (0.70710678118f)
/** Float literal holding absolute zero Kelvin in degrees. */
#define PDSP_ABS_ZERO_F (-273.15f)
/** Null pointer. */
#define PDSP_NULL ((void *)0)
/** Floating point not a number. (0.0 / 0.0) */
#define PDSP_NAN NAN
/** Floating point positive infinity. */
#define PDSP_POS_INF INFINITY
/** Floating point negative infinity. */
#define PDSP_NEG_INF (-INFINITY)
/** Gain to convert a value to DAC voltage (corresponding integer). */
#define PDSP_3V3_12BIT_F (3.3f / 4096.0f)

/* Floating point functions with intrinsics on MCU. */
#if defined(_WIN64)
/** Floating point minimum function macro */
#define pdsp_minf(x, y) fminf((x), (y))
/** Floating point maximum function macro */
#define pdsp_maxf(x, y) fmaxf((x), (y))
/** Floating point division */
#define pdsp_divf(x, y) ((x) / (y))
/** Sine function macro */
#define pdsp_sinf(x) sinf((x))
/** Sine function macro PU */
#define pdsp_sinpuf(x) sinf((x) / PDSP_2_PI_F)
/** Cosine function macro */
#define pdsp_cosf(x) cosf((x))
/** Cosine function macro PU */
#define pdsp_cospuf(x) cosf((x) / PDSP_2_PI_F)
/** Square root function */
#define pdsp_sqrtf(x) sqrtf((x))

/* Specific intrinsics for C28x */
#elif defined(__TMS320C2000__)
#define pdsp_minf(x, y) __fmin((x), (y))
#define pdsp_maxf(x, y) __fmax((x), (y))
#define pdsp_divf(x, y) __divf32((x), (y))
#define pdsp_sinf(x) __sin((x))
#define pdsp_sinpuf(x) __sinpuf32((x))
#define pdsp_cosf(x) __cos((x))
#define pdsp_cospuf(x) __cospuf32((x))
#define pdsp_sqrtf(x) __sqrt((x))
#elif defined(__TMS320C28XX_CLA__)
/* Specific intrinsics for CLA */

#elif defined(__arm__)
/* Specific intrinsics for ARM */

#endif

/** @} math */

/*==============================================================================
 PUBLIC TYPEDEFS
 =============================================================================*/

/* ------------------------------------------------------------------------ */
/** @addtogroup types Types
 *  @{
 */

/* Fixed and floating point types */
#if defined(_WIN64)
/** Defined if compiling on host */
#define PDSP_HOST
/** Floating point rounding behavior is set to round to nearest. */
#define F32_TO_INT_ROUNDS_TOWARDS_ZERO
/** 64bit unsigned integer type.  */
typedef unsigned long long pdsp_u64_t;
/** 32bit floating point type. */
typedef float pdsp_f32_t;
/** 32bit integer type.  */
typedef int pdsp_i32_t;
/** 32bit unsigned integer type.  */
typedef unsigned int pdsp_u32_t;
/** 16bit signed integer type.  */
typedef short pdsp_i16_t;
/** 16bit unsigned signed integer type. */
typedef unsigned short pdsp_u16_t;
/** Boolean type. */
typedef bool pdsp_bool_t;
/** Size type. */
typedef size_t pdsp_size_t;
/** 16bit signed integer type. */
typedef char pdsp_char_t;
#elif defined(__TMS320C2000__)
#define PDSP_MCU
#define F32_TO_INT_ROUNDS_TOWARDS_ZERO
typedef unsigned long long pdsp_u64_t;
typedef float pdsp_f32_t;
typedef long pdsp_i32_t;
typedef unsigned long pdsp_u32_t;
typedef int pdsp_i16_t;
typedef unsigned int pdsp_u16_t;
typedef int pdsp_bool_t;
typedef size_t pdsp_size_t;
typedef char pdsp_char_t;
#elif defined(__TMS320C28XX_CLA__)
#define PDSP_CLA
#elif defined(__arm__)
#define PDSP_ARM
#endif

/** PDSP status for function return value. */
typedef enum pdsp_status_tag
{
    /** Function return status when it executed successfully. */
    PDSP_OK,
    /** Function return status for general fault. */
    PDSP_NOT_OK,
    /** Function return status when illegal operation was attempted. */
    PDSP_ILLEGAL,
    /** Function return value for when an acessed ressource was busy. */
    PDSP_BUSY
} pdsp_status_t;

/** @} types */
/** @addtogroup util Util
 *  @{
 */

/** Signal properties struct for 64bit word (log, CAN), stored in big endian,
 * unsigned. */
typedef struct pdsp_signal_prop_tag
{
    /** Inverse gain to convert physical value to encoded data format. */
    pdsp_f32_t f32_gain;
    /** Inverse offset to convert physical value to encoded data format. */
    pdsp_f32_t f32_offset;
    /** Start bit < 64. */
    pdsp_u16_t u16_start;
    /** Data length. */
    pdsp_u16_t u16_length;
} pdsp_signal_prop_t;

/** Stopwatch variable struct. */
typedef struct pdsp_stopwatch_var_tag
{
    /** Time state variable, stores start time. */
    pdsp_u32_t u32_time_mem;
} pdsp_stopwatch_var_t;

/** Stopwatch struct. */
typedef struct pdsp_stopwatch_tag
{
    /** Stopwatch variable struct */
    pdsp_stopwatch_var_t *ps_var;
    /** Hardware timer maximum value (overflow). */
    pdsp_u32_t u32_hw_max;
} pdsp_stopwatch_t;

/** Funtion pointer (pointer to bool function) */
typedef pdsp_bool_t (*pdsp_pb_func_t)(void);

/** Funtion pointer (pointer to i16 function) */
typedef pdsp_i16_t (*pdsp_pi16_func_t)(void);

/** Funtion pointer (pointer to i32 function) */
typedef pdsp_i32_t (*pdsp_pi32_func_t)(void);

/** Funtion pointer (pointer to f32 function) */
typedef pdsp_f32_t (*pdsp_pf32_func_t)(void);

/** Stopwatch variable struct. */
typedef struct pdsp_hyst_var_tag
{
    /** Hysteresis state variable. */
    pdsp_bool_t b_state;
} pdsp_hyst_var_t;

/** Stopwatch struct. */
typedef struct pdsp_hyst_tag
{
    /** Pointer to hysteresis variable struct. */
    pdsp_hyst_var_t *ps_var;
    /** Lower hysteresis threshold. */
    pdsp_f32_t f32_low;
    /** Higher hysteresis threshold. */
    pdsp_f32_t f32_high;
} pdsp_hyst_t;

/** Hysteresis status struct */
typedef struct pdsp_hyst_time_var_tag
{
    /** Hysteresis status state variable. */
    pdsp_bool_t b_state;
    /** Hysteresis time state variable. */
    pdsp_f32_t f32_time;
} pdsp_hyst_time_var_t;

/** Hysteresis parameter struct */
typedef struct pdsp_hyst_time_tag
{
    /** Pointer to pdsp_hyst_time_t struct. */
    pdsp_hyst_time_var_t *ps_var;
    /** Hysteresis time step. */
    pdsp_f32_t f32_t_step;
    /** Hysteresis detection time. High transition. */
    pdsp_f32_t f32_t_high;
    /** Hysteresis recovery time. Low transition. */
    pdsp_f32_t f32_t_low;
} pdsp_hyst_time_t;

/** Integer queue struct */
typedef struct pdsp_queue_var_tag
{
    /** Head index of the queue. */
    pdsp_i16_t i16_head;
    /** Tail index of the queue. */
    pdsp_i16_t i16_tail;
    /** Number of items in the queue. */
    pdsp_i16_t i16_count;
} pdsp_queue_var_t;

/** Char queue parameters. */
typedef struct pdsp_queue_tag
{
    /** Pointer to the pdsp_queue_t struct. */
    pdsp_queue_var_t *ps_var;
    /** Pointer to the data array. */
    void *pav_data;
    /** Size of the data array. */
    pdsp_i16_t i16_size;
} pdsp_queue_t;

/** SREC record types */
typedef enum pdsp_srec_type_tag
{
    /** SREC header record with info string. */
    PDSP_SREC_S0_HEADER,
    /** SREC data record with 16bit address. */
    PDSP_SREC_S1_DATA16,
    /** SREC data record with 24bit address. */
    PDSP_SREC_S2_DATA24,
    /** SREC data record with 32bit address. */
    PDSP_SREC_S3_DATA32,
    /** SREC reserved record. Do not use! */
    PDSP_SREC_S4_RESERVED,
    /** SREC count record with 16bit counter size. */
    PDSP_SREC_S5_COUNT16,
    /** SREC count record with 16bit counter size. */
    PDSP_SREC_S6_COUNT32,
    /** SREC termination record with 16bit start address. */
    PDSP_SREC_S7_TERM16,
    /** SREC termination record with 24bit start address. */
    PDSP_SREC_S8_TERM24,
    /** SREC termination record with 32bit start address. */
    PDSP_SREC_S9_TERM32
} pdsp_srec_type_t;

/** SREC record data struct */
typedef struct pdsp_srec_tag
{
    /** SREC record address field. */
    pdsp_u32_t u32_address;
    /** Pointer to binary data to be written to the record. */
    pdsp_i16_t *ai16_data;
    /** Size of the data array. */
    pdsp_u16_t u16_size;
    /** SREC record type. */
    pdsp_srec_type_t e_type;
} pdsp_srec_t;

/** @} util */
/* ------------------------------------------------------------------------ */
/** @addtogroup signal Signal
 *  @{
 */

/** Analog input override mode. */
typedef enum pdsp_ain_override_mode_tag
{
    /** Override is turned off, raw * gain + offset is returned. */
    PDSP_OVERRIDE_OFF,
    /** Override is turned on, the override value is returned. */
    PDSP_OVERRIDE_ON,
    /** Injection is turned on, the override value is added to the result. */
    PDSP_OVERRIDE_INJECT,
    /** Override is turned on, the raw value is returned without modification.
     */
    PDSP_OVERRIDE_RAW,
} pdsp_ain_override_mode_t;

/** DAQ Override struct. */
typedef struct pdsp_ain_override_tag
{
    /** Override disable. Normally 0.0f, set to 1.0f to override. */
    pdsp_ain_override_mode_t u23_ovr_mode;
    /** Override value. */
    pdsp_f32_t f32_value;
} pdsp_ain_override_t;

/** DAQ processing parameter struct. */
typedef struct pdsp_ain_tag
{
    /** Pointer to override struct. */
    pdsp_ain_override_t *ps_ovr;
    /** DAQ conversion gain. */
    pdsp_f32_t f32_gain;
    /** DAQ conversion offset. */
    pdsp_f32_t f32_offset;
} pdsp_ain_t;

/** Min-max state variable struct. */
typedef struct pdsp_minmax_var_tag
{
    /** Minimum value since last clear. */
    pdsp_f32_t f32_min;
    /** Maximum value sincce last clear. */
    pdsp_f32_t f32_max;
    /** Delta (max-min) value since last clear. */
    pdsp_f32_t f32_delta;
} pdsp_minmax_var_t;

/** Exponential average state memory. */
typedef struct pdsp_expavg_var_tag
{
    /** Exponential average state variable. */
    pdsp_f32_t f32_x1;
} pdsp_expavg_var_t;

/** Exponential average parameter struct. */
typedef struct pdsp_expavg_tag
{
    /** Pointer to pdsp_expavg_var_t. */
    pdsp_expavg_var_t *ps_var;
    /** Exponential average factor. */
    pdsp_f32_t f32_tau;
} pdsp_expavg_t;

/** 1P1Z filter state memory struct. */
typedef struct pdsp_1p1z_var_tag
{
    /** 1P1Z filter x0 state variable */
    pdsp_f32_t f32_x1;
} pdsp_1p1z_var_t;

/** 1P1Z coefficient struct for 1/s or 1/z transfer function. */
typedef struct pdsp_1p1z_inv_tag
{
    /** 1P1Z filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** 1P1Z filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** 1P1Z filter a1 coefficient. */
    pdsp_f32_t f32_a1;
} pdsp_1p1z_inv_t;

/** 1P1Z coefficient struct for s or z transfer function. */
typedef struct pdsp_1p1z_tag
{
    /** 1P1Z filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** 1P1Z filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** 1P1Z filter a0 coefficient. */
    pdsp_f32_t f32_a0;
    /** 1P1Z filter a1 coefficient. */
    pdsp_f32_t f32_a1;
} pdsp_1p1z_t;

/** 2P2Z filter state memory struct. */
typedef struct pdsp_2p2z_var_tag
{
    /** 2P2Z filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** 2P2Z filter x1 state variable */
    pdsp_f32_t f32_x2;
    /** 2P2Z filter output */
    pdsp_f32_t f32_out;
} pdsp_2p2z_var_t;

/** 2P2Z coefficient struct for 1/s or 1/z transfer function. */
typedef struct pdsp_2p2z_inv_tag
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
} pdsp_2p2z_inv_t;

/** 2P2Z coefficient struct for s or z transfer function. */
typedef struct pdsp_2p2z_tag
{
    /** 2P2Z filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** 2P2Z filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** 2P2Z filter b2 coefficient. */
    pdsp_f32_t f32_b2;
    /** 2P2Z filter a0 coefficient. */
    pdsp_f32_t f32_a0;
    /** 2P2Z filter a1 coefficient. */
    pdsp_f32_t f32_a1;
    /** 2P2Z filter a2 coefficient. */
    pdsp_f32_t f32_a2;
} pdsp_2p2z_t;

/** 3P3Z filter state memory struct. */
typedef struct pdsp_3p3z_var_tag
{
    /** 3P3Z filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** 3P3Z filter x1 state variable */
    pdsp_f32_t f32_x2;
    /** 3P3Z filter x1 state variable */
    pdsp_f32_t f32_x3;
    /** 3P3Z filter output */
    pdsp_f32_t f32_out;
} pdsp_3p3z_var_t;

/** 3P3Z coefficient struct for 1/s or 1/z transfer function. */
typedef struct pdsp_3p3z_inv_tag
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
} pdsp_3p3z_inv_t;

/** 3P3Z coefficient struct for s or z transfer function. */
typedef struct pdsp_3p3z_tag
{
    /** 3P3Z filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** 3P3Z filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** 3P3Z filter b2 coefficient. */
    pdsp_f32_t f32_b2;
    /** 3P3Z filter b3 coefficient. */
    pdsp_f32_t f32_b3;
    /** 3P3Z filter a0 coefficient. */
    pdsp_f32_t f32_a0;
    /** 3P3Z filter a1 coefficient. */
    pdsp_f32_t f32_a1;
    /** 3P3Z filter a2 coefficient. */
    pdsp_f32_t f32_a2;
    /** 3P3Z filter a3 coefficient. */
    pdsp_f32_t f32_a3;
} pdsp_3p3z_t;

/** Median memory struct. */
typedef struct pdsp_med3_var_tag
{
    /** Median of 3 last value. */
    pdsp_f32_t f32_x1;
    /** Median of 3 before last value. */
    pdsp_f32_t f32_x2;
} pdsp_med3_var_t;

/** Rolling sum variable struct. */
typedef struct pdsp_rollsum_var_tag
{
    /** Sum of history array (divided by size) */
    pdsp_f32_t f32_sum;
    /** Inverse window length. */
    pdsp_f32_t f32_win_size_inv;
} pdsp_rollsum_var_t;

/** Rolling sum data struct. */
typedef struct pdsp_rollsum_tag
{
    /** Pointer to the pdsp_rollsum_t struct. */
    pdsp_rollsum_var_t *ps_var;
    /** Pointer to queue struct */
    const pdsp_queue_t *ps_queue;
} pdsp_rollsum_t;

/** @} signal */
/* ------------------------------------------------------------------------ */
/** @addtogroup control Control
 *  @{
 */

/** PI controller parameter struct. */
typedef struct pdsp_pi_err_param_tag
{
    /** PI controller proportional gain. */
    pdsp_f32_t f32_kp;
    /** PI controller intrgral gain. */
    pdsp_f32_t f32_ki;
    /** PI controller saturation feedback gain. */
    pdsp_f32_t f32_ks;
    /** PI controller active decision gain. */
    pdsp_f32_t f32_ka;
} pdsp_pi_err_param_t;

/** PI controller variable struct. */
typedef struct pdsp_pi_var_tag
{
    /** Curretly active error input. */
    pdsp_i16_t i16_active;
    /** Currently active parameter array index for error0 */
    pdsp_i16_t i16_param_idx;
    /** PI controller state variable (integrator). */
    pdsp_f32_t f32_x0;
    /** PI controller state variable (saturation delta). */
    pdsp_f32_t f32_x1;
} pdsp_pi_var_t;

/** PI controller struct. */
typedef struct pdsp_pi_tag
{
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param;
    /** Size of parameter struct */
    pdsp_i16_t i16_param_size;
    /** PI controller variable struct. */
    pdsp_pi_var_t *ps_var;
    /** PI saturation maximum value. */
    pdsp_f32_t f32_max;
    /** PI saturation minimum value. */
    pdsp_f32_t f32_min;
} pdsp_pi_t;

/** PI controller variable struct. */
typedef struct pdsp_pi2_var_tag
{
    /** Curretly active error input. */
    pdsp_i16_t i16_active;
    /** Currently active parameter array index for error0 */
    pdsp_i16_t i16_param_idx0;
    /** Currently active parameter array index for error0 */
    pdsp_i16_t i16_param_idx1;
    /** PI controller state variable (integrator). */
    pdsp_f32_t f32_x0;
    /** PI controller state variable (saturation delta). */
    pdsp_f32_t f32_x1;
} pdsp_pi2_var_t;

/** PI dual controller struct. */
typedef struct pdsp_pi2_tag
{
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param0;
    /** Size of parameter struct */
    pdsp_i16_t i16_param_size0;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param1;
    /** Size of parameter struct */
    pdsp_i16_t i16_param_size1;
    /** PI controller variable struct. */
    pdsp_pi2_var_t *ps_var;
    /** PI saturation maximum value. */
    pdsp_f32_t f32_max;
    /** PI saturation minimum value. */
    pdsp_f32_t f32_min;
} pdsp_pi2_t;

/** PI controller variable struct. */
typedef struct pdsp_pi4_var_tag
{
    /** Curretly active error input. */
    pdsp_i16_t i16_active;
    /** Currently active parameter array index for error0 */
    pdsp_i16_t i16_param_idx0;
    /** Currently active parameter array index for error0 */
    pdsp_i16_t i16_param_idx1;
    /** Currently active parameter array index for error0 */
    pdsp_i16_t i16_param_idx2;
    /** Currently active parameter array index for error0 */
    pdsp_i16_t i16_param_idx3;
    /** PI controller state variable (integrator). */
    pdsp_f32_t f32_x0;
    /** PI controller state variable (saturation delta). */
    pdsp_f32_t f32_x1;
} pdsp_pi4_var_t;

/** PI quad controller struct. */
typedef struct pdsp_pi4_tag
{
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param0;
    /** Size of parameter struct */
    pdsp_i16_t i16_param_size0;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param1;
    /** Size of parameter struct */
    pdsp_i16_t i16_param_size1;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param2;
    /** Size of parameter struct */
    pdsp_i16_t i16_param_size2;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param3;
    /** Size of parameter struct */
    pdsp_i16_t i16_param_size3;
    /** PI controller variable struct. */
    pdsp_pi4_var_t *ps_var;
    /** PI saturation maximum value. */
    pdsp_f32_t f32_max;
    /** PI saturation minimum value. */
    pdsp_f32_t f32_min;
} pdsp_pi4_t;

/** Set point parameter struct. */
typedef struct pdsp_setp_param_tag
{
    /** Setpoint minimum value. */
    pdsp_f32_t f32_min;
    /** Setpoint maximum value. */
    pdsp_f32_t f32_max;
    /** Absolute step size for ramp. First relative step for exponential
     * process. */
    pdsp_f32_t f32_step;
} pdsp_setp_param_t;

/** Set point state memory struct. */
typedef struct pdsp_setp_tag
{
    /** State memory for setpoint generator. */
    pdsp_f32_t f32_x1;
    /** Setpoint destination. */
    pdsp_f32_t f32_dest;
} pdsp_setp_t;

/** Sine generator parameter struct */
typedef struct pdsp_saw_param_tag
{
    /** Phase step */
    pdsp_f32_t f32_step;
    /** todo */
    pdsp_f32_t f32_out_low;
    /** todo */
    pdsp_f32_t f32_out_high;
} pdsp_saw_param_t;

/** Sine generator memory struct */
typedef struct pdsp_saw_tag
{
    /** todo */
    pdsp_f32_t f32_x0;
} pdsp_saw_t;

/** abc-dq transform structure */
typedef struct pdsp_abc_dq_var_tag
{
    /** Alpha component (abc-> alpha beta) */
    pdsp_f32_t f32_alpha;
    /** Beta component (abc-> alpha beta) */
    pdsp_f32_t f32_beta;
    /** D axis component (alpha beta -> d,q,z) */
    pdsp_f32_t f32_d;
    /** Q axis component (alpha beta -> d,q,z) */
    pdsp_f32_t f32_q;
    /** Z axis component (alpha beta -> d,q,z) */
    pdsp_f32_t f32_zero;
} pdsp_abc_dq_var_t;

/** abc-dq transform structure */
typedef struct pdsp_dq_abc_var_tag
{
    /** Alpha component (abc-> alpha beta) */
    pdsp_f32_t f32_alpha;
    /** Beta component  (abc-> alpha beta) */
    pdsp_f32_t f32_beta;
    /** A phase in 3PH AC Signal Component (alpha beta -> a,b,c) */
    pdsp_f32_t f32_a;
    /** B phase in 3PH AC Signal Component (alpha beta -> a,b,c) */
    pdsp_f32_t f32_b;
    /** C phase in 3PH AC Signal Component (alpha beta -> a,b,c) */
    pdsp_f32_t f32_c;
} pdsp_dq_abc_var_t;

/** Single phase notch dpll structure. */
typedef struct pdsp_dpll_1ph_notch_tag
{
    /** Phase detect buffer */
    pdsp_f32_t upd[3];
    /** Notch filter1 data storage */
    pdsp_f32_t y_notch1[3];
    /** Notch filter2 data storage */
    pdsp_f32_t y_notch2[3];
    /** Loop filter data storage */
    pdsp_f32_t ylf[2];
    /** Output frequency of PLL(Hz) */
    pdsp_f32_t fo;
    /** Nominal frequency (Hz) */
    pdsp_f32_t fn;
    /** Angle output (0-2*pi) */
    pdsp_f32_t theta;
    /** Cosine value of the PLL angle */
    pdsp_f32_t cosine;
    /** Sine value of the PLL angle */
    pdsp_f32_t sine;
    /** Inverse of the ISR rate at which module is called */
    pdsp_f32_t delta_t;
    /** Notch filter coeffcient structure */
    pdsp_2p2z_inv_t notch_coeff;
    /** Loop filter coeffcient structure */
    pdsp_1p1z_inv_t lpf_coeff;
} pdsp_dpll_1ph_notch_t;

/** Orthogonal signal generator variables. */
typedef struct pdsp_osg_param_tag
{
    /** todo */
    pdsp_f32_t osg_k;
    /** todo */
    pdsp_f32_t osg_x;
    /** todo */
    pdsp_f32_t osg_y;
    /** todo */
    pdsp_f32_t osg_b0;
    /** todo */
    pdsp_f32_t osg_b2;
    /** todo */
    pdsp_f32_t osg_a1;
    /** todo */
    pdsp_f32_t osg_a2;
    /** todo */
    pdsp_f32_t osg_qb0;
    /** todo */
    pdsp_f32_t osg_qb1;
    /** todo */
    pdsp_f32_t osg_qb2;
} pdsp_osg_param_t;

/** Single phase sogi dpll structure. */
typedef struct pdsp_dpll_1ph_sogi_tag
{
    /** AC input data buffer */
    pdsp_f32_t u[3];
    /** Orthogonal signal generator data buffer */
    pdsp_f32_t osg_u[3];
    /** Orthogonal signal generator quadrature data buffer */
    pdsp_f32_t osg_qu[3];
    /** Q-axis component */
    pdsp_f32_t u_Q[2];
    /** D-axis component */
    pdsp_f32_t u_D[2];
    /** Loop filter data storage */
    pdsp_f32_t ylf[2];
    /** Output frequency of PLL(Hz) */
    pdsp_f32_t fo;
    /** Nominal frequency (Hz) */
    pdsp_f32_t fn;
    /** Angle output (0-2*pi) */
    pdsp_f32_t theta;
    /** Cosine value of the PLL angle */
    pdsp_f32_t cosine;
    /** Sine value of the PLL angle */
    pdsp_f32_t sine;
    /** Inverse of the ISR rate at which module is called */
    pdsp_f32_t delta_t;
    /** Orthogonal signal generator coefficient */
    pdsp_osg_param_t osg_coeff;
    /** Loop filter coeffcient structure */
    pdsp_1p1z_inv_t lpf_coeff;
} pdsp_dpll_1ph_sogi_t;

/** Single phase sogi dpll fll structure. */
typedef struct pdsp_dpll_1ph_sogi_fll_tag
{
    /** AC input data buffer */
    pdsp_f32_t u[3];
    /** Orthogonal signal generator data buffer */
    pdsp_f32_t osg_u[3];
    /** Orthogonal signal generator quadrature data buffer */
    pdsp_f32_t osg_qu[3];
    /** Q-axis component */
    pdsp_f32_t u_Q[2];
    /** D-axis component */
    pdsp_f32_t u_D[2];
    /** Loop filter data storage */
    pdsp_f32_t ylf[2];
    /** Output frequency of PLL(Hz) */
    pdsp_f32_t fo;
    /** Nominal frequency (Hz) */
    pdsp_f32_t fn;
    /** Center (Nominal) frequency in radians */
    pdsp_f32_t wc;
    /** Angle output (0-2*pi) */
    pdsp_f32_t theta;
    /** Cosine value of the PLL angle */
    pdsp_f32_t cosine;
    /** Sine value of the PLL angle */
    pdsp_f32_t sine;
    /** Inverse of the ISR rate at which module is called */
    pdsp_f32_t delta_t;
    /** FLL parameter */
    pdsp_f32_t ef2;
    /** FLL data storage */
    pdsp_f32_t x3[2];
    /** Output frequency of PLL(radians) */
    pdsp_f32_t w_dash;
    /** Gamma parameter for FLL */
    pdsp_f32_t gamma;
    /** K parameter for FLL */
    pdsp_f32_t k;
    /** Orthogonal signal generator coefficient */
    pdsp_osg_param_t osg_coeff;
    /** Loop filter coeffcient structure */
    pdsp_1p1z_inv_t lpf_coeff;
} pdsp_dpll_1ph_sogi_fll_t;

/** Three phase ddsrf dpll structure. */
typedef struct pdsp_dpll_3ph_ddsrf_tag
{
    /** Positive Rotating reference Frame D-axis value */
    pdsp_f32_t d_p_decoupl;
    /** Negative Rotating reference Frame D-axis value */
    pdsp_f32_t d_n_decoupl;
    /** Positive Rotating reference Frame Q-axis value */
    pdsp_f32_t q_p_decoupl;
    /** Negative Rotating reference Frame Q-axis value */
    pdsp_f32_t q_n_decoupl;
    /** Cos of twice the grid frequency angle */
    pdsp_f32_t cos_2theta;
    /** Sin of twice the grid frequency angle */
    pdsp_f32_t sin_2theta;
    /** Used to store history for filtering the decoupled D and Q axis
     * components */
    pdsp_f32_t y[2];
    /** Used to store history for filtering the decoupled D and Q axis
     * components */
    pdsp_f32_t x[2];
    /** Used to store history for filtering the decoupled D and Q axis
     * components */
    pdsp_f32_t w[2];
    /** Used to store history for filtering the decoupled D and Q axis
     * components */
    pdsp_f32_t z[2];
    /** Lpf coefficient */
    pdsp_f32_t k1;
    /** Lpf coefficient */
    pdsp_f32_t k2;
    /** Decoupled positive sequence D-axis component filtered */
    pdsp_f32_t d_p_decoupl_lpf;
    /** Decoupled negative sequence D-axis component filtered */
    pdsp_f32_t d_n_decoupl_lpf;
    /** Decoupled positive sequence Q-axis component filtered */
    pdsp_f32_t q_p_decoupl_lpf;
    /** Decoupled negative sequence Q-axis component filtered */
    pdsp_f32_t q_n_decoupl_lpf;
    /** todo */
    pdsp_f32_t v_q[2];
    /** Grid phase angle */
    pdsp_f32_t theta[2];
    /** Internal Data Buffer for Loop Filter output */
    pdsp_f32_t ylf[2];
    /** Instantaneous Grid Frequency in Hz */
    pdsp_f32_t fo;
    /** Nominal Grid Frequency in Hz */
    pdsp_f32_t fn;
    /** 1/Frequency of calling the PLL routine */
    pdsp_f32_t delta_t;
    /** todo */
    pdsp_1p1z_inv_t lpf_coeff;
} pdsp_dpll_3ph_ddsrf_t;

/** Three phase srf dpll structure. */
typedef struct pdsp_dpll_3ph_srf_tag
{
    /** Rotating reference frame Q-axis value */
    pdsp_f32_t v_q[2];
    /**  Data buffer for loop filter output */
    pdsp_f32_t ylf[2];
    /** Output frequency of PLL */
    pdsp_f32_t fo;
    /** Nominal frequency */
    pdsp_f32_t fn;
    /** Grid phase angle */
    pdsp_f32_t theta[2];
    /** Inverse of the ISR rate at which module is called */
    pdsp_f32_t delta_t;
    /** Loop filter coefficients */
    pdsp_1p1z_inv_t lpf_coeff;
} pdsp_dpll_3ph_srf_t;

/** @} control */
/* ------------------------------------------------------------------------ */
/** @addtogroup fault Fault
 *  @{
 */

/** Fault state variable struct */
typedef struct pdsp_fault_var_tag
{
    /** Fault enable  */
    pdsp_bool_t b_ena;
} pdsp_fault_var_t;

/** Fault parameter struct */
typedef struct pdsp_fault_tag
{
    /** Pointer to fault variable struct. */
    pdsp_fault_var_t *ps_var;
    /** Time hysteresis parameters. */
    pdsp_hyst_time_t *ps_hyst;
    /** Fault trip value. */
    pdsp_f32_t f32_value;
    /** Fault group status */
    pdsp_u32_t *b_group;
    /** Fault group bit position */
    pdsp_u32_t u16_bit;
} pdsp_fault_t;

/** @} fault */
/* ------------------------------------------------------------------------ */
/** @addtogroup debug Debug
 *  @{
 */

/** Data logger variable struct */
typedef struct pdsp_logger_var_tag
{
    /** User setting: Trigger condition function. */
    pdsp_bool_t (*pdsp_pb_func_t)(void);
    /** Sample countdown counter. Counts down when b_triggered is PDSP_TRUE
     */
    pdsp_u32_t u23_counter;
    /** Triggered state. PDSP_TRUE when trigger condition was met. */
    pdsp_bool_t b_triggered;
} pdsp_logger_var_t;

/** Data logger struct. */
typedef struct pdsp_logger_tag
{
    /** Logger variable struct. */
    pdsp_logger_var_t *ps_var;
    /** Logging history queue. */
    pdsp_queue_t *ps_u64_queue;
} pdsp_logger_t;

// /** Software frequency response analyzer parameters. */
// typedef struct pdsp_sfra_tag
// {
//     /* Under construction */
//     pdsp_saw_param_t s_saw_param;
//     pdsp_saw_t s_saw;
//     pdsp_status_t e_status;
//     pdsp_f32_t f32_sum_sin;
//     pdsp_f32_t f32_sum_cos;
//     pdsp_f32_t f32_sum_num;
//     pdsp_f32_t f32_result_re;
//     pdsp_f32_t f32_result_im;
// } pdsp_sfra_t;

/** Analog out data type enum. */
typedef enum pdsp_aout_enum
{
    /** Analog out data pointer points to f32 */
    PDSP_AOUT_F32,
    /** Analog out data pointer points to i16 */
    PDSP_AOUT_I16,
    /** Analog out data pointer points to u16 */
    PDSP_AOUT_U16
} pdsp_aout_e;

/** Analog out struct to be used to output data on a DAC. */
typedef struct pdsp_aout_tag
{
    /** Pointer to override struct. */
    void *pv_data;
    /** Pointer data type. */
    pdsp_aout_e e_type;
    /** DAQ conversion gain. */
    pdsp_f32_t f32_gain;
    /** DAQ conversion offset. */
    pdsp_f32_t f32_offset;
} pdsp_aout_t;

/** @} debug */

/*==============================================================================
 GLOBAL CONSTANTS
 =============================================================================*/

/*==============================================================================
 GLOBAL FUNCTIOS PROTOTYPES
 =============================================================================*/

/** @addtogroup util
 *  @{
 */

/**
 * @brief Assert function to check validity of function parameters.
 * @param b_in Assert comparison input.
 */
pdsp_extern void pdsp_assert(pdsp_bool_t b_in);

/**
 * @brief Start the stopwatch with 32bit HW counter.
 * @param ps_data Stopwatch struct.
 * @param u32_hw_now Current time from the hardware timer.
 */
pdsp_extern void pdsp_stopwatch_start(const pdsp_stopwatch_t *ps_data,
                                      pdsp_u32_t u32_hw_now);

/**
 * @brief Calculate the time elapsed since the start.
 * @param ps_data Stopwatch parameter struct.
 * @param u32_hw_now Current time from the hardware timer.
 * @return pdsp_u32_t Elapsed time in timer ticks.
 */
pdsp_extern pdsp_u32_t pdsp_stopwatch_stop(const pdsp_stopwatch_t *ps_data,
                                           pdsp_u32_t u32_hw_now);

/**
 * @brief Call a function from the jump table apf_list.
 *
 * @details Use this function for a handler based state machine implementation.
 * Can also be used to implement remote routine call functionality by setting
 * the first array element to a dummy function and return 0 in each remote
 * routine function.
 *
 * State Machine Example:
 * @code
 * typedef enum {STATE_IDLE, STATE_RUNNING, STATE_SIZE};
 * pdsp_i16_t idle_handler(void) {return 1;}
 * pdsp_i16_t running_handler(void) {return 0;}
 * pdsp_p16f_t flist[STATE_SIZE] = {idle_handler, running_handler};
 * pdsp_i16_t state = 0;
 * pdsp_i16_t state_x1 = 0;
 * while(1)
 * {
 *     // Run state macine
 *     pdsp_call_i16_func(flist, STATE_SIZE, state_x1, &state)
 *     state_x1 = state;
 * }
 * @endcode
 *
 * Remote Routine Example:
 * @code
 * typedef enum {FUNC_NOP, FUNC_START, FUNC_STOP, FUNC_SIZE};
 * pdsp_i16_t func_nop(void) {return (pdsp_i16_t)FUNC_NOP;}
 * pdsp_i16_t func_start_converter(void) {return (pdsp_i16_t)FUNC_NOP;}
 * pdsp_i16_t func_stop_converter(void) {return (pdsp_i16_t)FUNC_NOP;}
 * pdsp_p16f_t flist[FUNC_SIZE] = {func_nan, func_start_converter,
 * func_stop_converter}; pdsp_i16_t index = (pdsp_i16_t)FUNC_NOP; // Use
 * debugger to trigger functions remotely. pdsp_i16_t index_x1 =
 * (pdsp_i16_t)FUNC_NOP; while(1)
 * {
 *     // Call the requested function or func_nop, if nothing is requested.
 *     pdsp_call_i16_func(flist, 3, index_x1, &index)
 *     index_x1 =  index;
 * }
 * @endcode
 *
 * @param apf_list List of function pointers.
 * @param s_size Array size.
 * @param i16_idx Index for the function pointer array.
 * @param i16_out Return value of the called function.
 * @return pdsp_i16_t Returns PDSP_OK, except if the table entry was NULL or the
 * index is out or range, then PDSP_ILLEGAL is returned.
 */
pdsp_extern pdsp_i16_t pdsp_call_i16_func(const pdsp_pi16_func_t apf_list[],
                                          pdsp_size_t s_size,
                                          pdsp_i16_t i16_idx,
                                          pdsp_i16_t *i16_out);

/**
 * @brief Encode data into an srecord.
 * @param ac_start String pointer to the start of the string.
 * @param ps_data Pointer to record data struct.
 * @return Pointer to the next element in the sring.
 */
pdsp_extern pdsp_char_t *pdsp_srec_encode(pdsp_char_t *ac_start,
                                          pdsp_srec_t *ps_data);

// /**
//  * @brief Decode data from an srecord.
//  * @param ac_start String pointer to the start of the string.
//  * @param ps_data Pointer to record data struct.
//  * @return Pointer to the next element in the sring.
//  */
// pdsp_extern pdsp_char_t *pdsp_srec_decode(pdsp_char_t *ac_start,
//                                           pdsp_srec_t *ps_data);

/**
 * @brief Convert the number i16_in to a 6 character fixed length string.
 * @details Converting -32768 is not possible and will be saturated to -32767.
 * @param i16_in Input number.
 * @param a6c_out Output string of length 6.
 * @return Pointer to the next element in the sring.
 */
pdsp_extern pdsp_char_t *pdsp_i16_to_string(pdsp_i16_t i16_in,
                                            pdsp_char_t *a6c_out);

/**
 * @brief Convert the number u16_in to a length 4 hex string.
 * @param u16_in Input number.
 * @param ach_out Output string.
 * @return Pointer to the next element in the sring.
 */
pdsp_extern pdsp_char_t *pdsp_u16_to_hex(pdsp_u16_t u16_in,
                                         pdsp_char_t *ach_out);

/**
 * @brief Convert the number u64_in to a length 16 hex string.
 * @param u64_in Input number.
 * @param ach_out Output string.
 * @return Pointer to the next element in the sring.
 */
pdsp_extern pdsp_char_t *pdsp_u64_to_hex(pdsp_u64_t u64_in,
                                         pdsp_char_t *ach_out);

/**
 * @brief Map a value from one range to another (Uses division).
 * @details It uses the formula y = (y1 - y0) / (x1 - x0) * (x - x0) + y0 to
 * to implement the mapping (interpollation). The output for (x1 - x0) == 0 is y
 * = (y1 - y0) * 0.5.
 * @param f32_in Input value.
 * @param f32_in_lo Input range low value.
 * @param f32_in_hi Input range high value.
 * @param f32_out_lo Output range low value.
 * @param f32_out_hi Output range high value.
 * @return pdsp_f32_t Ouput value.
 */
pdsp_extern pdsp_f32_t pdsp_map(pdsp_f32_t f32_in, pdsp_f32_t f32_in_lo,
                                pdsp_f32_t f32_in_hi, pdsp_f32_t f32_out_lo,
                                pdsp_f32_t f32_out_hi);

/**
 * @brief Map a value to an index (Uses division, uses float to int conversion).
 * @details It uses the formula y = y1 / (x1 - x0) * (x - x0) to
 * to implement the mapping (interpollation). The output for (x1 - x0) == 0 is y
 * = y1 * 0.5.
 * @param f32_in Input value (must be greater than zero).
 * @param f32_in_lo Input range low value.
 * @param f32_in_hi Input range high value (must be greater than f32_in_lo).
 * @param f32_idx_hi Maximum index.
 * @return pdsp_u16_t Ouput value.
 */
pdsp_extern pdsp_u16_t pdsp_map_idx(pdsp_f32_t f32_in, pdsp_f32_t f32_in_lo,
                                    pdsp_f32_t f32_in_hi,
                                    pdsp_f32_t f32_idx_hi);

/**
 * @brief 2D Interpollation (X->input, Y->Output).
 * @param af32_x X axis array. Size must be 2 or higher. Values must be
 * monotonically increasing.
 * @param af32_y Y axis array. Size must be 2 or higher and must be the same as
 * x_arr.
 * @param u32_size Site of the x and y array.
 * @param f32_x_in Interpollation input.
 * @returns pdsp_f32_t Interpollated value.
 */
pdsp_extern pdsp_f32_t pdsp_interpollate_2d(const pdsp_f32_t af32_x[],
                                            const pdsp_f32_t af32_y[],
                                            pdsp_u32_t u32_size,
                                            pdsp_f32_t f32_x_in);

/**
 * @brief Set all elements in f32 array to given value.
 * @details Example:
 * pdsp_f32_t af32_test[5] = {0};
 * // af32_test contents before [0.0, 0.0, 0.0, 0.0, 0.0]
 * pdsp_array_set_f32(af32_test, 5, 1.0f);
 * // af32_test contents before [1.0, 1.0, 1.0, 1.0, 1.0]
 *
 * @param af32_array Array where values are set.
 * @param s_size  Size of array.
 * @param f32_value Value to set array elements to.
 */
pdsp_extern void pdsp_array_set_f32(pdsp_f32_t af32_array[], pdsp_size_t s_size,
                                    pdsp_f32_t f32_value);

/**
 * @brief Set all elements in i16 array to given value.
 * @details Example:
 * pdsp_i16_t ai16_test[5] = {0};
 * // ai16_test contents before [0, 0, 0, 0, 0]
 * pdsp_array_set_i16(ai16_test, 5, 1);
 * // ai16_test contents before [1, 1, 1, 1, 1]
 *
 * @param ai16_array Array where values are set.
 * @param s_size  Size of array.
 * @param i16_value Value to set array elements to.
 */
pdsp_extern void pdsp_array_set_i16(pdsp_i16_t ai16_array[], pdsp_size_t s_size,
                                    pdsp_i16_t i16_value);

/**
 * @brief Apply a given function to each element.
 * @param af32_in Inpurt array.
 * @param af32_out Out array.
 * @param u32_size Size of input / output array.
 * @param p_func Function to apply to the elements.
 */
pdsp_extern void pdsp_array_apply_f32(const pdsp_f32_t af32_in[],
                                      pdsp_f32_t af32_out[],
                                      pdsp_u32_t u32_size,
                                      pdsp_f32_t p_func(pdsp_f32_t));

/**
 * @brief Apply a given function to each element.
 * @param ai16_in Inpurt array.
 * @param ai16_out Out array.
 * @param u32_size Size of input / output array.
 * @param p_func Function to apply to the elements.
 */
pdsp_extern void pdsp_array_apply_i16(const pdsp_i16_t ai16_in[],
                                      pdsp_i16_t ai16_out[],
                                      pdsp_u32_t u32_size,
                                      pdsp_i16_t p_func(pdsp_i16_t));

/**
 * @brief Create linerarly spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start value.
 * @param f32_end End Value.
 */
pdsp_extern void pdsp_array_linspace_f32(pdsp_f32_t af32_out[],
                                         pdsp_u32_t u32_size,
                                         pdsp_f32_t f32_start,
                                         pdsp_f32_t f32_end);

/**
 * @brief Create logarithmically spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start exponent.
 * @param f32_end End exponent.
 */
pdsp_extern void pdsp_array_logspace_f32(pdsp_f32_t af32_out[],
                                         pdsp_u32_t u32_size,
                                         pdsp_f32_t f32_start,
                                         pdsp_f32_t f32_end);

/**
 * @brief Condition/time hysteresis function clear.
 * @param ps_data Hysteresis state struct.
 */
pdsp_extern void pdsp_hysteresis_value_clear(const pdsp_hyst_t *ps_data);

/**
 * @brief Value hysteresis function.
 * @details Changes to high state if input is greater than the high threshold.
 * Changes to low state if input is less than the low threshold. No action if
 * value is between the low and high threshold.
 * Ouptut:      false   true
 *                |<------|------- f32_high
 *              dn|       |up
 * f32_low -------|------>|
 * Content of the function can also be copied and used as a prototype.
 * @param ps_data Data struct.
 * @param f32_in Value input.
 * @return pdsp_bool_t State output.
 */
pdsp_extern pdsp_bool_t pdsp_hysteresis_value(const pdsp_hyst_t *ps_data,
                                              pdsp_f32_t f32_in);

/**
 * @brief Condition/time hysteresis function clear.
 * @param ps_data Hysteresis state struct.
 */
pdsp_extern void pdsp_hysteresis_time_clear(const pdsp_hyst_time_t *ps_data);

/**
 * @brief Condition/time hysteresis function with detecting and recovering time.
 * @param ps_data Hysteresis state struct.
 * @param b_in Input condition.
 * @return pdsp_bool_t Status output.
 */
pdsp_extern pdsp_bool_t pdsp_hysteresis_time(const pdsp_hyst_time_t *ps_data,
                                             pdsp_bool_t b_in);

/**
 * @brief Write bit in pdsp_u16_t variable.
 * @param pu16_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @param b_value Boolean value to write to bit.
 */
pdsp_extern void pdsp_bit_write_u16(pdsp_u16_t *pu16_mem, pdsp_u16_t u16_bit,
                                    pdsp_bool_t b_value);

/**
 * @brief Write bit in pdsp_u32_t variable.
 * @param pu32_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @param b_value Boolean value to write to bit.
 */
pdsp_extern void pdsp_bit_write_u32(pdsp_u32_t *pu32_mem, pdsp_u16_t u16_bit,
                                    pdsp_bool_t b_value);

/**
 * @brief Read bit in pdsp_u32_t variable.
 * @param pu16_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @returns pdsp_bool_t Value of bit at position u16_bit.
 */
pdsp_extern pdsp_bool_t pdsp_bit_read_u16(const pdsp_u16_t *pu16_mem,
                                          pdsp_u16_t u16_bit);

/**
 * @brief Read bit in pdsp_u32_t variable.
 * @param pu32_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @returns pdsp_bool_t Value of bit at position u16_bit.
 */
pdsp_extern pdsp_bool_t pdsp_bit_read_u32(const pdsp_u32_t *pu32_mem,
                                          pdsp_u16_t u16_bit);

/**
 * @brief Write to status register. Set bits in mask.
 * @param pu32_mem Memory pointer to the variable.
 * @param u32_mask Status bits to set.
 */
pdsp_extern void pdsp_status_set(pdsp_u32_t *pu32_mem, pdsp_u32_t u32_mask);

/**
 * @brief Write to status register. Clear bits in mask.
 * @param pu32_mem Memory pointer to the variable.
 * @param u32_mask Status bits to clear.
 */
pdsp_extern void pdsp_status_clear(pdsp_u32_t *pu32_mem, pdsp_u32_t u32_mask);

/**
 * @brief Read status according to true and false masks.
 * @param pu32_mem Memory pointer to the variable.
 * @param u32_mask_true Mask for bits that must be true, can be 0 if only false
 * mask is used.
 * @param u32_mask_false Mask for bits that must be false, can be 0 if only true
 * mask is used.
 * @return pdsp_bool_t Compare result.
 */
pdsp_extern pdsp_bool_t pdsp_status_get(pdsp_u32_t *pu32_mem,
                                        pdsp_u32_t u32_mask_true,
                                        pdsp_u32_t u32_mask_false);

/**
 * @brief Convert (gain/offset) f32 to i16 and write signal into a 64bit word
 * (big endian)
 * @param ps_prop Pointer to signal property struct.
 * @param pu64_mem Pointer to data word to write to.
 * @param f32_data Data to write to signal.
 */
pdsp_extern void pdsp_signal_write_f32(const pdsp_signal_prop_t *ps_prop,
                                       pdsp_u64_t *pu64_mem,
                                       pdsp_f32_t f32_data);

/**
 * @brief Read and convert (gain/offset) f32 signal from a 64bit word (big
 * endian).
 * @param ps_prop Pointer to signal property struct.
 * @param pu64_mem Pointer to data word to read from.
 * @returns pdsp_f32_t Data read from pu64_mem with rule ps_prop.
 */
pdsp_extern pdsp_f32_t pdsp_signal_read_f32(const pdsp_signal_prop_t *ps_prop,
                                            pdsp_u64_t *pu64_mem);

/**
 * @brief Write u16 and then shift by length.
 * @param ps_prop Pointer to signal property struct.
 * @param pu64_mem Pointer to data word to write to.
 * @param u16_data Data to write to signal.
 */
pdsp_extern void pdsp_signal_write_u16(const pdsp_signal_prop_t *ps_prop,
                                       pdsp_u64_t *pu64_mem,
                                       pdsp_u16_t u16_data);

/**
 * @brief Read u16 signal from a 64bit word (big endian).
 * @param ps_prop Pointer to signal property struct.
 * @param pu64_mem Pointer to data word to read from.
 * @returns pdsp_u16_t Data read from pu64_mem with rule ps_prop.
 */
pdsp_extern pdsp_u16_t pdsp_signal_read_u16(const pdsp_signal_prop_t *ps_prop,
                                            pdsp_u64_t *pu64_mem);

/**
 * @brief Weighted mean from two values.
 * @param f32_in0 First sample.
 * @param f32_in1 Second sample.
 * @param f32_weight0 Weight of first sample [0, 1]. Second sample weight is
 * (1-f32_weight0).
 * @return pdsp_f32_t Weighted mean.
 */
pdsp_extern pdsp_f32_t pdsp_mean2w_f32(pdsp_f32_t f32_in0, pdsp_f32_t f32_in1,
                                       pdsp_f32_t f32_weight0);

/**
 * @brief Mean from four 16bit values. Use to average 4 ADC values.
 * @param a4u16_in Sample array of length 4.
 * @return pdsp_f32_t Mean value.
 */
pdsp_extern pdsp_f32_t pdsp_mean4_u16(pdsp_u16_t a4u16_in[]);

/**
 * @brief Mean from eight 16bit values. Use to average 8 ADC values.
 * @param a8u16_in Sample array of length 8.
 * @return pdsp_f32_t Mean value.
 */
pdsp_extern pdsp_f32_t pdsp_mean8_u16(pdsp_u16_t a8u16_in[]);

/**
 * @brief Initialize queue.
 * @param ps_data Queue data struct.
 */
pdsp_extern void pdsp_queue_init(const pdsp_queue_t *ps_data);

/**
 * @brief Check if queue is empty.
 * @param ps_data Queue data struct.
 * @return pdsp_bool_t PDSP_TRUE if queue is not empty, PDSP_FALSE otherwise.
 */
pdsp_extern pdsp_bool_t pdsp_queue_is_not_empty(const pdsp_queue_t *ps_data);

/**
 * @brief Check if queue is not full.
 * @param ps_data Queue data struct.
 * @return pdsp_bool_t PDSP_TRUE if queue is not full, PDSP_FALSE otherwise.
 */
pdsp_extern pdsp_bool_t pdsp_queue_is_not_full(const pdsp_queue_t *ps_data);

/**
 * @brief Advance the head of the queue.
 * @param ps_data Queue data struct.
 */
pdsp_extern void pdsp_queue_advance_head(const pdsp_queue_t *ps_data);

/**
 * @brief Advance the tail of the queue.
 * @param ps_data Queue data struct.
 */
pdsp_extern void pdsp_queue_advance_tail(const pdsp_queue_t *ps_data);

/**
 * @brief Push data to the queue of ch.
 * @param ps_data Pointer to the queue struct.
 * @param ch_in Data to push to the queue.
 */
pdsp_extern void pdsp_queue_push_ch(const pdsp_queue_t *ps_data,
                                    pdsp_char_t ch_in);

/**
 * @brief Push data to the queue of i16.
 * @param ps_data Pointer to the queue struct.
 * @param i16_in Data to push to the queue.
 */
pdsp_extern void pdsp_queue_push_i16(const pdsp_queue_t *ps_data,
                                     pdsp_i16_t i16_in);

/**
 * @brief Push data to the queue of i32.
 * @param ps_data Pointer to the queue struct.
 * @param i32_in Data to push to the queue.
 */
pdsp_extern void pdsp_queue_push_i32(const pdsp_queue_t *ps_data,
                                     pdsp_i32_t i32_in);

/**
 * @brief Push data to the queue of f32.
 * @param ps_data Pointer to the queue struct.
 * @param f32_in Data to push to the queue.
 */
pdsp_extern void pdsp_queue_push_f32(const pdsp_queue_t *ps_data,
                                     pdsp_f32_t f32_in);

/**
 * @brief Push data to the queue of u64.
 * @param ps_data Pointer to the queue struct.
 * @param u64_in Data to push to the queue.
 */
pdsp_extern void pdsp_queue_push_u64(const pdsp_queue_t *ps_data,
                                     pdsp_u64_t u64_in);

/**
 * @brief Pop data from the queue of char.
 * @param ps_data Pointer to the queue struct.
 * @returns pdsp_char_t Data popped from queue.
 */
pdsp_extern pdsp_char_t pdsp_queue_pop_ch(const pdsp_queue_t *ps_data);

/**
 * @brief Pop data from the queue of i16.
 * @param ps_data Pointer to the queue struct.
 * @returns pdsp_i16_t Data popped from queue.
 */
pdsp_extern pdsp_i16_t pdsp_queue_pop_i16(const pdsp_queue_t *ps_data);

/**
 * @brief Pop data from the queue of i32.
 * @param ps_data Pointer to the queue struct.
 * @returns pdsp_i32_t Data popped from queue.
 */
pdsp_extern pdsp_i32_t pdsp_queue_pop_i32(const pdsp_queue_t *ps_data);

/**
 * @brief Pop data from the queue of f32.
 * @param ps_data Pointer to the queue struct.
 * @returns pdsp_f32_t Data popped from queue.
 */
pdsp_extern pdsp_f32_t pdsp_queue_pop_f32(const pdsp_queue_t *ps_data);

/**
 * @brief Pop data from the queue of u64.
 * @param ps_data Pointer to the queue struct.
 * @returns pdsp_u64_t Data popped from queue.
 */
pdsp_extern pdsp_u64_t pdsp_queue_pop_u64(const pdsp_queue_t *ps_data);

/** @} util */
/* ------------------------------------------------------------------------ */
/** @addtogroup signal Signal
 *  @{
 */

/**
 * @brief Apply gain / offset to raw signal.
 * @param ps_data Signal data struct.
 * @param f32_raw Raw input signal.
 * @returns pdsp_f32_t Result = (raw * gain + offset) * enable + override.
 */
pdsp_extern pdsp_f32_t pdsp_ain(const pdsp_ain_t *ps_data, pdsp_f32_t f32_raw);

/**
 * @brief Set and enable override.
 * @param ps_data Signal data struct.
 * @param f32_value Override value.
 */
pdsp_extern void pdsp_ain_ovr_enable(const pdsp_ain_t *ps_data,
                                     pdsp_f32_t f32_value);

/**
 * @brief Enable disable.
 * @param ps_data Signal data struct.
 */
pdsp_extern void pdsp_ain_ovr_disable(const pdsp_ain_t *ps_data);

/**
 * @brief Signal injection function to be used with SFRA or other testing
 * functions.
 * @param ps_data Signal data struct.
 * @param f32_value Override value.
 */
pdsp_extern void pdsp_ain_ovr_inject(const pdsp_ain_t *ps_data,
                                     pdsp_f32_t f32_value);

/**
 * @brief Calibrate analog input gain value.
 * @param f32_gain_old Old gain that was used to calculate f32_raw.
 * @param f32_ref Reference input signal.
 * @param f32_raw Measured input signal.
 * @returns pdsp_f32_t New gain value.
 */
pdsp_extern pdsp_f32_t pdsp_ain_calibrate_gain(pdsp_f32_t f32_gain_old,
                                               pdsp_f32_t f32_ref,
                                               pdsp_f32_t f32_raw);

/**
 * @brief Calibrate analog input offset value.
 * @param f32_offset_old Old gain that was used to calculate f32_raw.
 * @param f32_ref Reference input signal.
 * @param f32_raw Measured input signal.
 * @returns pdsp_f32_t New offset value.
 */
pdsp_extern pdsp_f32_t pdsp_ain_calibrate_offset(pdsp_f32_t f32_offset_old,
                                                 pdsp_f32_t f32_ref,
                                                 pdsp_f32_t f32_raw);

/**
 * @brief Initialize / Clear min-max struct.
 * @param ps_var Min-max state variable struct.
 */
pdsp_extern void pdsp_minmax_clear(pdsp_minmax_var_t *ps_var);

/**
 * @brief Process min-max.
 * @param ps_var Min-max state variable struct.
 * @param f32_in Filter input.
 */
pdsp_extern void pdsp_minmax(pdsp_minmax_var_t *ps_var, pdsp_f32_t f32_in);

/**
 * @brief Initialize / Clear simple exponential average struct.
 * @param ps_data Filter state variable struct.
 */
pdsp_extern void pdsp_expavg_clear(const pdsp_expavg_t *ps_data);

/**
 * @brief Calculate simplple exponential averaging filter.
 * @param ps_data Filter state variable struct.
 * @param f32_in Filter input.
 * @returns pdsp_f32_t Filter ouptut.
 */
pdsp_extern pdsp_f32_t pdsp_expavg(const pdsp_expavg_t *ps_data,
                                   pdsp_f32_t f32_in);

/**
 * @brief Convert continuous H(s) to H(1/z) for 1P1Z transfer function using
 * bilinear transform.
 * @details Transfer function:
 *        b1*s + b0
 * H(s) = ---------
 *        a1*s + a0
 *
 *        2  (1 - z^-1)
 * >> s = -- ----------
 *        ts (1 + z^-1)
 *
 *           B1*z^-1 + B0
 * H(z^-1) = ------------
 *           A1*z^-1 + 1
 * @param ps_coeff_in Input transfer function H(s) coefficients.
 * @param ps_coeff_out Input transfer function H(s) coefficients.
 * @param f32_ts Sampling time
 */
pdsp_extern void pdsp_1p1z_c2d(pdsp_1p1z_t *ps_coeff_in,
                               pdsp_1p1z_inv_t *ps_coeff_out,
                               pdsp_f32_t f32_ts);

/**
 * @brief Convert continuous H(s) to H(1/z) for 2P2Z transfer function using
 * bilinear transform.
 * @details Transfer function:
 *        b2*s^2 + b1*s + b0
 * H(s) = ------------------
 *        a2*s^2 + a1*s + a0
 *
 *        2  (1 - z^-1)
 * >> s = -- ----------
 *        ts (1 + z^-1)
 *
 *           B2*z^-1 + B1*z^-1 + B0
 * H(z^-1) = ----------------------
 *           A2*z^-1 + A1*z^-1 + 1
 * @param ps_coeff_in Input transfer function H(s) coefficients.
 * @param ps_coeff_out Input transfer function H(s) coefficients.
 * @param f32_ts Sampling time
 */
pdsp_extern void pdsp_2p2z_c2d(pdsp_2p2z_t *ps_coeff_in,
                               pdsp_2p2z_inv_t *ps_coeff_out,
                               pdsp_f32_t f32_ts);

/**
 * @brief Convert continuous H(s) to H(1/z) for 3P3Z transfer function using
 * bilinear transform.
 * @details Transfer function:
 *        b3*s^3 + b2*s^2 + b1*s + b0
 * H(s) = ---------------------------
 *        a3*s^3 + a2*s^2 + a1*s + a0
 *
 *        2  (1 - z^-1)
 * >> s = -- ----------
 *        ts (1 + z^-1)
 *
 *           B3*z^-1 + B2*z^-1 + B1*z^-1 + B0
 * H(z^-1) = --------------------------------
 *           A3*z^-1 + A2*z^-1 + A1*z^-1 + 1
 * @param ps_coeff_in Input transfer function H(s) coefficients.
 * @param ps_coeff_out Input transfer function H(s) coefficients.
 * @param f32_ts Sampling time
 */
pdsp_extern void pdsp_3p3z_c2d(pdsp_3p3z_t *ps_coeff_in,
                               pdsp_3p3z_inv_t *ps_coeff_out,
                               pdsp_f32_t f32_ts);

/**
 * @brief Initialize / Clear DF22 biquad filter struct.
 * @param ps_var Filter state variable struct.
 */
pdsp_extern void pdsp_df22_clear(pdsp_2p2z_var_t *ps_var);

/**
 * @brief Calculate DF22 biquad filter.
 * @param ps_data Filter data memory struct.
 * @param ps_var Filter variable memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
pdsp_extern pdsp_f32_t pdsp_df22(pdsp_2p2z_inv_t *ps_data,
                                 pdsp_2p2z_var_t *ps_var, pdsp_f32_t f32_in);

/**
 * @brief Pre-calculate DF22 biquad filter. Must be used in combination with
 * pdsp_df22_post.
 * @param ps_data Filter data memory struct.
 * @param ps_var Filter variable memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
pdsp_extern pdsp_f32_t pdsp_df22_pre(pdsp_2p2z_inv_t *ps_data,
                                     pdsp_2p2z_var_t *ps_var,
                                     pdsp_f32_t f32_in);

/**
 * @brief Post-calculate DF22 biquad filter. Must be used in combination with
 * pdsp_df22_pre.
 * @param ps_data Filter data memory struct.
 * @param ps_var Filter variable memory struct.
 * @param f32_in Filter input signal.
 */
pdsp_extern void pdsp_df22_post(pdsp_2p2z_inv_t *ps_data,
                                pdsp_2p2z_var_t *ps_var, pdsp_f32_t f32_in);

/**
 * @brief Initialize / Clear median filter struct.
 * @param ps_var Filter state variable struct.
 */
pdsp_extern void pdsp_med3_clear(pdsp_med3_var_t *ps_var);

/**
 * @brief Calculate median filter with kernel size 3.
 * @param ps_var Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
pdsp_extern pdsp_f32_t pdsp_med3(pdsp_med3_var_t *ps_var, pdsp_f32_t f32_in);

/**
 * @brief Initialize / Clear rolling sum struct.
 * @param ps_data Filter state variable struct.
 * @param i16_win_size Number of samples in the window. i16_win_size <=
 * queue size.
 */
pdsp_extern void pdsp_rollsum_init(const pdsp_rollsum_t *ps_data,
                                   pdsp_i16_t i16_win_size);

/**
 * @brief Calculate rolling sum.
 * @param ps_data Filter state memory struct.
 * @param f32_in Rolling sum input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
pdsp_extern pdsp_f32_t pdsp_rollsum(const pdsp_rollsum_t *ps_data,
                                    pdsp_f32_t f32_in);

/**
 * @brief Initialize / clear rolling averaging struct.
 * @param ps_data Filter state variable struct.
 * @param i16_win_size Number of samples in the window. i16_win_size <=
 * queue size.
 */
pdsp_extern void pdsp_rollavg_init(const pdsp_rollsum_t *ps_data,
                                   pdsp_i16_t i16_win_size);

/**
 * @brief Calculate rolling averaging filter.
 * @param ps_data Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
pdsp_extern pdsp_f32_t pdsp_rollavg(const pdsp_rollsum_t *ps_data,
                                    pdsp_f32_t f32_in);

/**
 * @brief Initialize / clear rolling rms struct.
 * @param ps_data Filter state variable struct.
 * @param i16_win_size Number of samples in the window. i16_win_size <=
 * queue size.
 */
pdsp_extern void pdsp_rollrms_init(const pdsp_rollsum_t *ps_data,
                                   pdsp_i16_t i16_win_size);

/**
 * @brief Calculate rolling Root Mean Square filter.
 * @param ps_data Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
pdsp_extern pdsp_f32_t pdsp_rollrms(const pdsp_rollsum_t *ps_data,
                                    pdsp_f32_t f32_in);

/** @} signal */

/* ------------------------------------------------------------------------ */
/** @addtogroup control
 *  @{
 */

/**
 * @brief Resets internal abc_dq data to zero.
 * @param ps_var Pointer to abc_dq structure.
 */
pdsp_extern void pdsp_abc_dq_clear(pdsp_abc_dq_var_t *ps_var);

/**
 * @brief Runs abc-dq pos routine.
 * @details see https://en.wikipedia.org/wiki/Alpha%E2%80%93beta_transformation
 * @param ps_var Pointer to abc_dq structure.
 * @param f32_a Phase a value.
 * @param f32_b Phase b value.
 * @param f32_c Phase c value.
 * @param f32_sin_val Sine value of the grid angle.
 * @param f32_cos_val Cosine value of the grid angle.
 */
pdsp_extern void pdsp_abc_dq_pos(pdsp_abc_dq_var_t *ps_var, pdsp_f32_t f32_a,
                                 pdsp_f32_t f32_b, pdsp_f32_t f32_c,
                                 pdsp_f32_t f32_sin_val,
                                 pdsp_f32_t f32_cos_val);

/**
 * @brief Runs abc-dq neg routine => q=-q_pos
 * @param ps_var Pointer to abc_dq structure.
 * @param f32_a Phase a value.
 * @param f32_b Phase b value.
 * @param f32_c Phase c value.
 * @param f32_sin_val Sine value of the grid angle.
 * @param f32_cos_val Cosine value of the grid angle.
 */
pdsp_extern void pdsp_abc_dq_neg(pdsp_abc_dq_var_t *ps_var, pdsp_f32_t f32_a,
                                 pdsp_f32_t f32_b, pdsp_f32_t f32_c,
                                 pdsp_f32_t f32_sin_val,
                                 pdsp_f32_t f32_cos_val);

/**
 * @brief Resets internal dq-abc data to zero.
 * @param ps_var Pointer to dq-abc structure.
 */
pdsp_extern void pdsp_dq0_abc_init(pdsp_dq_abc_var_t *ps_var);

/**
 * @brief Runs dq-abc routine.
 * @param ps_var Pointer to dq_abc structure.
 * @param f32_d d ref value
 * @param f32_q q ref value
 * @param f32_z z ref value
 * @param f32_sin_val Sine value of the grid angle.
 * @param f32_cos_val Cosine value of the grid angle
 */
pdsp_extern void pdsp_dq0_abc(pdsp_dq_abc_var_t *ps_var, pdsp_f32_t f32_d,
                              pdsp_f32_t f32_q, pdsp_f32_t f32_z,
                              pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val);

/**
 * @brief Initialize / clear pi controller struct.
 * @param ps_data Controller data struct.
 */
pdsp_extern void pdsp_pi_clear(pdsp_pi_t *ps_data);

/**
 * @brief Initialize / clear pi controller struct.
 * @param ps_data Controller data struct.
 */
pdsp_extern void pdsp_pi2_clear(pdsp_pi2_t *ps_data);

/**
 * @brief Initialize / clear pi controller struct.
 * @param ps_data Controller data struct.
 */
pdsp_extern void pdsp_pi4_clear(pdsp_pi4_t *ps_data);

/**
 * @brief Calculate PI controller.
 * @param ps_data Controller data struct.
 * @param f32_error Controller error signal input.
 * @returns pdsp_f32_t Controller output.
 */
pdsp_extern pdsp_f32_t pdsp_pi(pdsp_pi_t *ps_data, pdsp_f32_t f32_error);

/**
 * @brief Calculate dual PI controller.
 * @param ps_data Controller data struct.
 * @param f32_error0 First error signal input.
 * @param f32_error1 Second error signal input.
 * @returns pdsp_f32_t Controller output.
 */
pdsp_extern pdsp_f32_t pdsp_pi2(pdsp_pi2_t *ps_data, pdsp_f32_t f32_error0,
                                pdsp_f32_t f32_error1);

/**
 * @brief Calculate quad PI controller.
 * @param ps_data Controller data struct.
 * @param f32_error0 First error signal input.
 * @param f32_error1 Second error signal input.
 * @param f32_error2 Third error signal input.
 * @param f32_error3 Fourth error signal input.
 * @returns pdsp_f32_t Controller output.
 */
pdsp_extern pdsp_f32_t pdsp_pi4(pdsp_pi4_t *ps_data, pdsp_f32_t f32_error0,
                                pdsp_f32_t f32_error1, pdsp_f32_t f32_error2,
                                pdsp_f32_t f32_error3);

/**
 * @brief Set the PI controller to given state.
 * @param ps_data Controller data struct.
 * @param f32_out Set controller output value.
 */
pdsp_extern void pdsp_pi_set(pdsp_pi_t *ps_data, pdsp_f32_t f32_out);

/**
 * @brief Set the dual PI controller to given state.
 * @param ps_data Controller data struct.
 * @param f32_out Set controller output value.
 */
pdsp_extern void pdsp_pi2_set(pdsp_pi2_t *ps_data, pdsp_f32_t f32_out);

/**
 * @brief Set the quad PI controller to given state.
 * @param ps_data Controller data struct.
 * @param f32_out Set controller output value.
 */
pdsp_extern void pdsp_pi4_set(pdsp_pi4_t *ps_data, pdsp_f32_t f32_out);

/**
 * @brief Initialize set point processor struct.
 * @param ps_state Set point state memory struct.
 */
pdsp_extern void pdsp_setp_init(pdsp_setp_t *ps_state);

/**
 * @brief Calculate simple set point processor generating a ramp.
 * @details
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Set point output.
 */
pdsp_extern pdsp_f32_t pdsp_setp_ramp(pdsp_setp_t *ps_state,
                                      const pdsp_setp_param_t *ps_param);

/**
 * @brief Calculate simple set point processor generating an exponential
 * settling process.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Set point output.
 */
pdsp_extern pdsp_f32_t pdsp_setp_exp(pdsp_setp_t *ps_state,
                                     const pdsp_setp_param_t *ps_param);

/**
 * @brief Set destination of simple set point processor.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_dest Set point destination.
 * @returns pdsp_status_t PDSP_OK
 */
pdsp_extern pdsp_status_t pdsp_setp_set_dest(pdsp_setp_t *ps_state,
                                             const pdsp_setp_param_t *ps_param,
                                             pdsp_f32_t f32_dest);

/**
 * @brief Set the state to the destination.
 * @param ps_state Set point state memory struct.
 * @returns pdsp_f32_t Set point output.
 */
pdsp_extern pdsp_f32_t pdsp_setp_step(pdsp_setp_t *ps_state);

/**
 * @brief Set the state to a defined value.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_value Set point value to step to.
 * @returns pdsp_f32_t Set point output.
 */
pdsp_extern pdsp_f32_t pdsp_setp_reset(pdsp_setp_t *ps_state,
                                       const pdsp_setp_param_t *ps_param,
                                       pdsp_f32_t f32_value);

/**
 * @brief Set point reached.
 * @param ps_state Set point state memory struct.
 * @param f32_tol Tolarance for detection.
 * @returns pdsp_bool_t
 */
pdsp_extern pdsp_bool_t pdsp_setp_reached(pdsp_setp_t *ps_state,
                                          pdsp_f32_t f32_tol);

/**
 * @brief Initialize saw wave generator struct.
 * @param ps_state Saw wave state memory struct.
 * @returns pdsp_status_t PDSP_OK
 */
pdsp_extern pdsp_status_t pdsp_saw_init(pdsp_saw_t *ps_state);

/**
 * @brief Saw wave generator.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Waveform output.
 */
pdsp_extern pdsp_f32_t pdsp_saw(pdsp_saw_t *ps_state,
                                const pdsp_saw_param_t *ps_param);

/**
 * @brief Saw wave shifter.
 * @param f32_in Original ramp value.
 * @param ps_param Set point parameter struct.
 * @param f32_phase Positive phase shift in the same unit as out_high / out_low.
 * @returns pdsp_f32_t Waveform output.
 */
pdsp_extern pdsp_f32_t pdsp_saw_shift(pdsp_f32_t f32_in,
                                      const pdsp_saw_param_t *ps_param,
                                      pdsp_f32_t f32_phase);

/** todo */
pdsp_extern pdsp_status_t
pdsp_dpll_1ph_notch_init(pdsp_dpll_1ph_notch_t *ps_state);

/** todo */
pdsp_extern pdsp_status_t pdsp_dpll_1ph_notch(pdsp_dpll_1ph_notch_t *ps_state,
                                              pdsp_f32_t f32_in);

/** todo */
pdsp_extern pdsp_status_t
pdsp_dpll_1ph_sogi_init(pdsp_dpll_1ph_sogi_t *ps_state);

/** todo */
pdsp_extern pdsp_status_t pdsp_dpll_1ph_sogi(pdsp_dpll_1ph_sogi_t *ps_state,
                                             pdsp_f32_t f32_in);

/** todo */
pdsp_extern pdsp_status_t
pdsp_dpll_1ph_sogi_fll_init(pdsp_dpll_1ph_sogi_fll_t *ps_state);

/** todo */
pdsp_extern pdsp_status_t
pdsp_dpll_1ph_sogi_fll(pdsp_dpll_1ph_sogi_fll_t *ps_state, pdsp_f32_t f32_in);

/** todo */
pdsp_extern pdsp_status_t
pdsp_dpll_3ph_ddsrf_init(pdsp_dpll_3ph_ddsrf_t *ps_state);

/** todo */
pdsp_extern pdsp_status_t pdsp_dpll_3ph_ddsrf(pdsp_dpll_3ph_ddsrf_t *ps_state,
                                              pdsp_f32_t d_p, pdsp_f32_t d_n,
                                              pdsp_f32_t q_p, pdsp_f32_t q_n);

/** todo */
pdsp_extern pdsp_status_t pdsp_dpll_3ph_srf_init(pdsp_dpll_3ph_srf_t *ps_state);

/** todo */
pdsp_extern pdsp_status_t pdsp_dpll_3ph_srf(pdsp_dpll_3ph_srf_t *ps_state,
                                            pdsp_f32_t f32_vq);

/** @} control */
/* ------------------------------------------------------------------------ */
/** @addtogroup fault Fault
 *  @{
 */

/**
 * @brief Initalize fault struct.
 * @param ps_data Fault state struct.
 */
pdsp_extern void pdsp_fault_init(pdsp_fault_t *ps_data);

/**
 * @brief Check over value fault.
 * @param ps_data Fault data struct.
 * @param f32_in Fault check input value.
 * @return pdsp_bool_t Fault status.
 */
pdsp_extern pdsp_bool_t pdsp_fault_check_over(pdsp_fault_t *ps_data,
                                              pdsp_f32_t f32_in);

/**
 * @brief Check under value fault.
 * @param ps_data Fault data struct.
 * @param f32_in Fault check input value.
 * @return pdsp_bool_t Fault status.
 */
pdsp_extern pdsp_bool_t pdsp_fault_check_under(pdsp_fault_t *ps_data,
                                               pdsp_f32_t f32_in);

/**
 * @brief Check equal value fault.
 * @param ps_data Fault data struct.
 * @param f32_in Fault check input value.
 * @return pdsp_bool_t Fault status.
 */
pdsp_extern pdsp_bool_t pdsp_fault_check_equal(pdsp_fault_t *ps_data,
                                               pdsp_f32_t f32_in);

/**
 * @brief Run fault check with true condition. Can be used for timeout fault.
 * @param ps_data Fault data struct.
 * @return pdsp_bool_t Fault status.
 */
pdsp_extern pdsp_bool_t pdsp_fault_check_true(pdsp_fault_t *ps_data);

/**
 * @brief Run fault check with false condition.
 * @param ps_data Fault data struct.
 * @return pdsp_bool_t Fault status.
 */
pdsp_extern pdsp_bool_t pdsp_fault_check_false(pdsp_fault_t *ps_data);

/**
 * @brief Check fault group and execute group callback.
 * @param b_group Fault group memory.
 * @param pf_callback Fault trip callback.
 */
pdsp_extern void pdsp_fault_process_group(pdsp_bool_t b_group,
                                          void pf_callback(void));

/** @} fault */
/* ------------------------------------------------------------------------ */
/** @addtogroup debug Debug
 *  @{
 * @details Module containing funcions that can aid in debugging.
 */

// /**
//  * @brief Initialize logger struct.
//  * @param ps_data Logger state variable struct.
//  */
// pdsp_extern void pdsp_log_init(pdsp_logger_t *ps_data);

// /**
//  * @brief Set the trigger value of the logger.
//  * @param ps_data Logger state variable struct.
//  * @param f32_value Trigger value. In force trigger mode, set to any value >
//  0.0
//  * to trigger.
//  * @param f32_offset Trigger offset value
//  */
// pdsp_extern void pdsp_log_set_trigger(pdsp_logger_t *ps_data,
//                                       pdsp_i16_t i16_trig_channel,
//                                       pdsp_f32_t f32_value,
//                                       pdsp_f32_t f32_offset);

// /**
//  * @brief Set the logger mode.
//  * @param ps_data Logger data struct.
//  * @param e_mode Logger mode from pdsp_logger_mode_e.
//  */
// pdsp_extern void pdsp_log_set_mode(pdsp_logger_t *ps_data,
//                                    pdsp_logger_mode_e e_mode);

// /**
//  * @brief Get the data porinter of the head data to use with
//  pdsp_signal_write_xyz().
//  * @param ps_data Logger data struct.
//  * @return pdsp_u64_t* Pointer to the data.
//  */
// pdsp_extern pdsp_u64_t * pdsp_log_get_head_ptr(pdsp_logger_t *ps_data);

// pdsp_extern pdsp_status_t pdsp_sfra_clear(pdsp_sfra_t *ps_state);
// pdsp_extern pdsp_status_t pdsp_sfra_enable(pdsp_sfra_t *ps_state,
//                                           pdsp_f32_t f32_amp,
//                                           pdsp_f32_t f32_freq);
// pdsp_extern pdsp_bool_t pdsp_sfra_finished(pdsp_sfra_t *ps_state);
// pdsp_extern pdsp_status_t pdsp_sfra_collect(pdsp_sfra_t *ps_state);

/**
 * @brief Convert internal data (f32, i16, u16) to be sent to the DAC.
 * @details Usage example:
 * @code
 * static pdsp_u16_t u16_idx = 0;
 * const struct aout[2] = {{&f32_vac, PDSP_AOUT_F32, 0.001 * PDSP_3V3_12BIT_F,
 * 1.65f * PDSP_3V3_12BIT_F}, {&u16_state, PDSP_AOUT_U16, 1.0f, 0.0f}};
 * HWREG(DACA_BASE) = pdsp_data_to_aout(&aout[u16_idx]);
 * @endcode
 * @param ps_data Pointer to aout data struct.
 * @return pdsp_extern DAV value to be convertetd to analog.
 */
pdsp_extern pdsp_u16_t pdsp_aout(const pdsp_aout_t *ps_data);

/** @} debug */

/* Include function implementation in this compilation unit. */
#ifdef PDSP_STATIC_FUNCTIONS
#include "../src/pdsp.c"
#endif

/*==============================================================================
 ENF OF FILE
 =============================================================================*/
#endif /* PDSP_H */
