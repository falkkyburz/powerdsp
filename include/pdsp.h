/** @file pdsp.h
 *
 * @author Falk Kyburz
 * @brief Power electronics digital signal processing types.
 * @details
 *
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
 * 
 * @mainpage
 * 
 * @tableofcontents
 * 
 * @section Introduction
 * This is a test.
 * @ref const
 * 
 * @section Usage
 * 
 * 
 * @section Modules
 * 
 * 
 * 
 * @section References
 * 
 * 
 */

#ifndef PDSP_H
#define PDSP_H

/*==============================================================================
 CONFIGURATION
 =============================================================================*/
#define PDSP_ASSERT_ENABLE
#define PDSP_ASSERT_FUNCTION(x)                                                \
    if (!(x))                                                                  \
        while (1)

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include <stdbool.h>
#include <stddef.h>

/*==============================================================================
 PUBLIC DEFINES
 =============================================================================*/

/** @addtogroup const Constants
 *  @{
 */

/** True value. */
#define PDSP_TRUE 1
/** False value. */
#define PDSP_FALSE 0

/** The thing is on. */
#define PDSP_ON 1
/** The thing is off. */
#define PDSP_OFF 0

/** Float literal holding PI. */
#define PDSP_PI (3.14159265358f)
/** Float literal holding PI/2. */
#define PDSP_PI_2 (1.57079632679f)
/** Float literal holding PI/4. */
#define PDSP_PI_4 (0.78539816339f)
/** Float literal holding 2*PI. */
#define PDSP_2_PI (6.28318530718f)
/** Float literal holding 2*PI/3. */
#define PDSP_2_PI_3 (2.09439510239f)
/** Float literal holding 4*PI/3. */
#define PDSP_4_PI_3 (4.18879020478f)
/** Float literal holding sqrt(2). */
#define PDSP_SQRT2 (1.41421356237f)
/** Float literal holding sqrt(1/2). */
#define PDSP_SQRT1_2 (0.70710678118f)
/** Float literal holding absolute zero Kelvin in degrees. */
#define PDSP_ABS_ZERO (-273.15f)
/** Null pointer. */
#define PDSP_NULL ((void *)0)
/** Floating point not a number. (0.0 / 0.0) */
#define PDSP_NAN NAN
/** Floating point positive infinity. */
#define PDSP_POS_INF INFINITY
/** Floating point negative infinity. */
#define PDSP_NEG_INF (-INFINITY)

/** @} const */

/* Assert function to reduce programmer errors. */
#ifdef PDSP_ASSERT_ENABLE
#define PDSP_ASSERT(x) PDSP_ASSERT_FUNCTION((x))
#else
#define PDSP_ASSERT(x)
#endif

/*==============================================================================
 PUBLIC TYPEDEFS
 =============================================================================*/

/* ------------------------------------------------------------------------ */
/** @addtogroup types Types
 *  @{
 */

/* Fixed and floating point types */
#if defined(_WIN64)
#define PDSP_HOST
#define F32_TO_INT_ROUNDS_TO_NEAREST
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
#define F32_TO_INT_ROUNDS_TOWARDS_ZERO
typedef float pdsp_f32_t;
typedef int pdsp_i32_t;
typedef unsigned int pdsp_u32_t;
typedef short pdsp_i16_t;
typedef unsigned short pdsp_u16_t;
typedef int pdsp_bool_t;
typedef size_t pdsp_size_t;
typedef char pdsp_char_t;
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

/** Stopwatch variable struct. */
typedef struct pdsp_stopwatch_var_tag
{
    pdsp_u32_t u32_time_mem;
} pdsp_stopwatch_var_t;

/** Stopwatch struct. */
typedef const struct pdsp_stopwatch_tag
{
    /** Stopwatch variable struct */
    pdsp_stopwatch_var_t *ps_var;
    /** Hardware timer maximum value (overflow). */
    pdsp_u32_t u32_hw_max;
} pdsp_stopwatch_t;

/** Funtion pointer (pointer to i16 function) */
typedef pdsp_i16_t (*pdsp_pi16_func_t)(void);

/** Funtion pointer (pointer to i32 function) */
typedef pdsp_i32_t (*pdsp_pi32_func_t)(void);

/** Stopwatch variable struct. */
typedef struct pdsp_hyst_var_tag
{
    pdsp_bool_t b_state;
} pdsp_hyst_var_t;

/** Stopwatch struct. */
typedef const struct pdsp_hyst_tag
{
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
typedef const struct pdsp_hyst_time_tag
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
    /* Number of items in the queue. */
    pdsp_i16_t i16_count;
} pdsp_queue_var_t;

/** Char queue parameters. */
typedef const struct pdsp_queue_tag
{
    /** Pointer to the pdsp_queue_t struct. */
    pdsp_queue_var_t *ps_var;
    /** Pointer to the data array. */
    void *pav_data;
    /** Size of the data array. */
    pdsp_i16_t i16_size;
} pdsp_queue_t;

/** @} util */
/* ------------------------------------------------------------------------ */
/** @addtogroup signal Signal
 *  @{
 */

/** DAQ Override struct. */
typedef struct pdsp_daq_override_tag
{
    /** Override disable. Normally 0.0f, set to 1.0f to override. */
    pdsp_u32_t u32_enable;
    /** Override value. */
    pdsp_f32_t f32_value;
} pdsp_daq_override_t;

/** DAQ processing parameter struct. */
typedef struct pdsp_daq_tag
{
    /** Pointer to override struct. */
    pdsp_daq_override_t *ps_ovr;
    /** DAQ conversion gain. */
    pdsp_f32_t f32_gain;
    /** DAQ conversion offset. */
    pdsp_f32_t f32_offset;
} pdsp_daq_t;

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
typedef const struct pdsp_expavg_tag
{
    /** Pointer to pdsp_expavg_var_t. */
    pdsp_expavg_var_t *ps_var;
    /** Exponential average factor. */
    pdsp_f32_t f32_tau;
} pdsp_expavg_t;

/** DF22 filter state memory struct. */
typedef struct pdsp_df22_var_tag
{
    /** df22 filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** df22 filter x1 state variable */
    pdsp_f32_t f32_x2;
} pdsp_df22_var_t;

/** DF22 filter parameter struct. */
typedef const struct pdsp_df22_param_tag
{
    /** df22 filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** df22 filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** df22 filter b2 coefficient. */
    pdsp_f32_t f32_b2;
    /** df22 filter a1 coefficient. */
    pdsp_f32_t f32_a1;
    /** df22 filter a2 coefficient. */
    pdsp_f32_t f32_a2;
} pdsp_df22_param_t;

/** DF11 filter state memory struct. */
typedef struct pdsp_df11_tag
{
    /** df22 filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** df22 filter x1 state variable */
    pdsp_f32_t f32_x2;
} pdsp_df11_t;

/** DF11 filter data struct. */
typedef const struct pdsp_df11_param_tag
{
    /** df11 filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** df11 filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** df11 filter a1 coefficient. */
    pdsp_f32_t f32_a1;
} pdsp_df11_param_t;

/** Median memory struct. */
typedef struct pdsp_med3_var_tag
{
    /** Median of 3 current value. */
    pdsp_f32_t f32_x0;
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
    /** Head nindex of history array. */
    pdsp_u32_t u32_head;
} pdsp_rollsum_var_t;

/** Rolling sum data struct. */
typedef const struct pdsp_rollsum_tag
{
    /** Pointer to the pdsp_rollsum_t struct. */
    pdsp_rollsum_t *ps_var;
    /** Pointer to the data array. */
    pdsp_f32_t *paf32_data;
    /** Size of the data array. */
    pdsp_i16_t i16_size;
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
    pdsp_pi_err_param_t *pas_param[];
    /* Size of parameter struct */
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
    pdsp_pi_err_param_t *pas_param0[];
    /* Size of parameter struct */
    pdsp_i16_t i16_param_size0;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param1[];
    /* Size of parameter struct */
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
typedef struct pdsp_pi_tag
{
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param0[];
    /* Size of parameter struct */
    pdsp_i16_t i16_param_size0;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param1[];
    /* Size of parameter struct */
    pdsp_i16_t i16_param_size1;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param2[];
    /* Size of parameter struct */
    pdsp_i16_t i16_param_size2;
    /** PI controller parameter struct array. */
    pdsp_pi_err_param_t *pas_param3[];
    /* Size of parameter struct */
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
    /**  */
    pdsp_f32_t f32_min;
    /**  */
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
    /**  */
    pdsp_f32_t f32_step;
    /**  */
    pdsp_f32_t f32_out_low;
    /**  */
    pdsp_f32_t f32_out_high;
} pdsp_saw_param_t;

/** Sine generator memory struct */
typedef struct pdsp_saw_tag
{
    /**  */
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
    pdsp_df22_param_t notch_coeff;
    /** Loop filter coeffcient structure */
    pdsp_df11_param_t lpf_coeff;
} pdsp_dpll_1ph_notch_t;

typedef struct pdsp_osg_param_tag
{
    /**  */
    pdsp_f32_t osg_k;
    /**  */
    pdsp_f32_t osg_x;
    /**  */
    pdsp_f32_t osg_y;
    /**  */
    pdsp_f32_t osg_b0;
    /**  */
    pdsp_f32_t osg_b2;
    /**  */
    pdsp_f32_t osg_a1;
    /**  */
    pdsp_f32_t osg_a2;
    /**  */
    pdsp_f32_t osg_qb0;
    /**  */
    pdsp_f32_t osg_qb1;
    /**  */
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
    pdsp_df11_param_t lpf_coeff;
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
    pdsp_df11_param_t lpf_coeff;
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
    /**  */
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
    /**  */
    pdsp_df11_param_t lpf_coeff;
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
    pdsp_df11_param_t lpf_coeff;
} pdsp_dpll_3ph_srf_t;

/** @} control */
/* ------------------------------------------------------------------------ */
/** @addtogroup fault Fault
 *  @{
 */

/** Fault state variable struct */
typedef struct pdsp_fault_tag
{
    /** Fault enable  */
    pdsp_bool_t b_ena;
    /** Time hysteresis status. */
    pdsp_hyst_time_t s_hyst;
} pdsp_fault_var_t;

/** Fault parameter struct */
typedef struct pdsp_fault_tag
{
    pdsp_fault_var_t *ps_var;
    /** Time hysteresis parameters. */
    pdsp_hyst_time_t s_hyst_param;
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

typedef enum pdsp_logger_mode_tag
{
    /* Logger is not triggered. */
    PDSP_LOG_MODE_TRIG_NONE,
    /** Logger is triggered by forcing through software-> f23_trigval > 0.0f. */
    PDSP_LOG_MODE_TRIG_FORCE,
    /** Logger is in rising edge trigger mode. */
    PDSP_LOG_MODE_TRIG_RISE,
    /** Logger is in falling edge trigger mode. */
    PDSP_LOG_MODE_TRIG_FALL
} pdsp_logger_mode_e;

/** Data logger variable struct */
typedef struct pdsp_logger_var_tag
{
    /** User setting: Trigger mode */
    pdsp_logger_mode_e e_trig_mode;
    /** User setting: Trigger channel. */
    pdsp_i16_t i16_trig_channel;
    /** User setting: Trigger value */
    pdsp_f32_t f23_trig_value;
    /** User setting: Trigger offset p.u. of buffer size. */
    pdsp_f32_t f23_trig_offset;
    /** Sample countdown counter. Counts down when b_triggered is PDSP_TRUE */
    pdsp_u32_t u23_counter;
    /** Triggered state. PDSP_TRUE when trigger condition was met. */
    pdsp_bool_t b_triggered;
    /** Current head array index. */
    pdsp_u32_t u32_head;
} pdsp_logger_var_t;

/** Data logger variable struct */
typedef struct pdsp_logger_tag
{
    /** Logger variable struct. */
    pdsp_logger_var_t *ps_var;
    /** Logging history array size = num_samples * num_channels. */
    pdsp_i16_t *ai16_history;
    /** History size */
    pdsp_i16_t i16_size;
    /** Conversion gain per channel. Used for conversion from f32 to i16 */
    pdsp_f32_t af32_gain[4];
    /** Number of samples. */
    pdsp_i16_t i16_num_samples;
} pdsp_logger_t;

/** Software frequency response analyzer parameters. */
typedef struct pdsp_sfra_tag
{
    /* Under construction */
    pdsp_saw_param_t s_saw_param;
    pdsp_saw_t s_saw;
    pdsp_status_t e_status;
    pdsp_f32_t f32_sum_sin;
    pdsp_f32_t f32_sum_cos;
    pdsp_f32_t f32_sum_num;
    pdsp_f32_t f32_result_re;
    pdsp_f32_t f32_result_im;
} pdsp_sfra_t;

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
 * @brief Start the stopwatch with 32bit HW counter.
 * @param ps_data Stopwatch struct.
 * @param u32_hw_now Current time from the hardware timer.
 * @return pdsp_u32_t Current time to be stored for the pdsp_stopwatch_stop
 * function.
 */
extern void pdsp_stopwatch_start(const pdsp_stopwatch_t *ps_data,
                                 pdsp_u32_t u32_hw_now);

/**
 * @brief Calculate the time elapsed since the start.
 * @param ps_data Stopwatch parameter struct.
 * @param u32_hw_now Current time from the hardware timer.
 * @return pdsp_u32_t Elapsed time in timer ticks.
 */
extern pdsp_u32_t pdsp_stopwatch_stop(const pdsp_stopwatch_t *ps_data,
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
extern pdsp_i16_t pdsp_call_i16_func(const pdsp_pi16_func_t apf_list[],
                                     pdsp_size_t s_size, pdsp_i16_t i16_idx,
                                     pdsp_i16_t *i16_out);

/**
 * @brief Convert the number i16_in to a 6 character fixed length string.
 * @details Converting -32768 is not possible and will be saturated to -32767.
 * @param i16_in Input number.
 * @param c_out Output string of fixed length 6.
 * @return Pointer to the next element in the sring.
 */
extern pdsp_char_t *pdsp_i16_to_string(pdsp_i16_t i16_in, pdsp_char_t *a6c_out);

/**
 * @brief Map a value from one range to another (Uses division).
 * @details It uses the formula y = (y1 - y0) / (x1 - x0) * (x - x0) + y0 to
 * to implement the mapping (interpollation). There are no checks done on (x1
 * (x1-x0) to to prevent division by zero, which makes it efficient but requires
 * the inputs to be defined as const.
 * @param f32_in Input value.
 * @param f32_in_lo Input range low value.
 * @param f32_in_hi Input range high value (must be greater than f32_in_lo).
 * @param f32_out_lo Output range low value.
 * @param f32_out_hi Output range high value (must be greater than f32_out_lo).
 * @return pdsp_f32_t Ouput value.
 */
extern pdsp_f32_t pdsp_map_unsave(pdsp_f32_t f32_in, pdsp_f32_t f32_in_lo,
                                  pdsp_f32_t f32_in_hi, pdsp_f32_t f32_out_lo,
                                  pdsp_f32_t f32_out_hi);

/**
 * @brief Map a value to an index (Uses division, uses float to int conversion).
 * @param f32_in Input value (must be greater than zero).
 * @param f32_in_lo Input range low value.
 * @param f32_in_hi Input range high value (must be greater than f32_in_lo).
 * @param f32_idx_hi Maximum index.
 * @return pdsp_u16_t Ouput value.
 */
extern pdsp_u16_t pdsp_map_idx_unsave(pdsp_f32_t f32_in, pdsp_f32_t f32_in_lo,
                                      pdsp_f32_t f32_in_hi,
                                      pdsp_u16_t f32_idx_hi);

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
extern pdsp_f32_t pdsp_interpollate_2d(const pdsp_f32_t af32_x[],
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
extern void pdsp_array_set_f32(pdsp_f32_t af32_array[], pdsp_size_t s_size,
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
extern void pdsp_array_set_i16(pdsp_i16_t ai16_array[], pdsp_size_t s_size,
                               pdsp_i16_t i16_value);

/**
 * @brief Apply a given function to each element.
 * @param af32_in Inpurt array.
 * @param af32_out Out array.
 * @param u32_size Size of input / output array.
 * @param p_func Function to apply to the elements.
 */
extern void pdsp_array_apply_f32(const pdsp_f32_t af32_in[],
                                 pdsp_f32_t af32_out[], pdsp_u32_t u32_size,
                                 pdsp_u32_t p_func(pdsp_u32_t));

/**
 * @brief Apply a given function to each element.
 * @param ai16_in Inpurt array.
 * @param ai16_out Out array.
 * @param u32_size Size of input / output array.
 * @param p_func Function to apply to the elements.
 * @returns pdsp_status_t PDSP_OK
 */
extern void pdsp_array_apply_i16(const pdsp_i16_t ai16_in[],
                                 pdsp_f32_t ai16_out[], pdsp_u32_t u32_size,
                                 pdsp_i16_t p_func(pdsp_i16_t));

/**
 * @brief Create linerarly spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start value.
 * @param f32_end End Value.
 * @returns pdsp_status_t PDSP_OK
 */
extern void pdsp_array_linspace_f32(pdsp_f32_t af32_out[], pdsp_u32_t u32_size,
                                    pdsp_f32_t f32_start, pdsp_f32_t f32_end);

/**
 * @brief Create logarithmically spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start exponent.
 * @param f32_end End exponent.
 */
extern void pdsp_array_logspace_f32(pdsp_f32_t af32_out[], pdsp_u32_t u32_size,
                                    pdsp_f32_t f32_start, pdsp_f32_t f32_end);

/**
 * @brief Condition/time hysteresis function clear.
 * @param ps_data Hysteresis state struct.
 */
extern void pdsp_hysteresis_value_clear(const pdsp_hyst_t *ps_data);

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
extern pdsp_bool_t pdsp_hysteresis_value(const pdsp_hyst_t *ps_data,
                                         pdsp_f32_t f32_in);

/**
 * @brief Condition/time hysteresis function clear.
 * @param ps_data Hysteresis state struct.
 */
extern void pdsp_hysteresis_time_clear(const pdsp_hyst_time_t *ps_data);

/**
 * @brief Condition/time hysteresis function with detecting and recovering time.
 * @param ps_data Hysteresis state struct.
 * @param b_in Input condition.
 * @return pdsp_bool_t Status output.
 */
extern pdsp_bool_t pdsp_hysteresis_time(const pdsp_hyst_time_t *ps_data,
                                        pdsp_bool_t b_in);

/**
 * @brief Write bit in pdsp_u16_t variable.
 * @param pu16_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @param b_value Boolean value to write to bit.
 */
extern void pdsp_bit_write_u16(pdsp_u32_t *pu16_mem, pdsp_u16_t u16_bit,
                               pdsp_bool_t b_value);

/**
 * @brief Write bit in pdsp_u32_t variable.
 * @param pu32_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @param b_value Boolean value to write to bit.
 */
extern void pdsp_bit_write_u32(pdsp_u32_t *pu32_mem, pdsp_u16_t u16_bit,
                               pdsp_bool_t b_value);

/**
 * @brief Read bit in pdsp_u32_t variable.
 * @param pu16_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @returns pdsp_bool_t Value of bit at position u16_bit.
 */
extern pdsp_bool_t pdsp_bit_read_u16(const pdsp_u16_t *pu16_mem,
                                     pdsp_u16_t u16_bit);

/**
 * @brief Read bit in pdsp_u32_t variable.
 * @param pu32_mem Memory pointer to the variable.
 * @param u16_bit Bit number in memory variable.
 * @returns pdsp_bool_t Value of bit at position u16_bit.
 */
extern pdsp_bool_t pdsp_bit_read_u32(const pdsp_u32_t *pu32_mem,
                                     pdsp_u16_t u16_bit);

/**
 * @brief Weighted mean from two values.
 * @param f32_in0 First sample.
 * @param f32_in1 Second sample.
 * @param f32_weight0 Weight of first sample [0, 1]. Second sample weight is
 * (1-f32_weight0).
 * @return pdsp_f32_t Weighted mean.
 */
extern pdsp_f32_t pdsp_mean2w_f32(pdsp_f32_t f32_in0, pdsp_f32_t f32_in1,
                                  pdsp_f32_t f32_weight0);

/**
 * @brief Mean from four 16bit values. Use to average 4 ADC values.
 * @param a4u16_in Sample array of length 4.
 * @return pdsp_f32_t Mean value.
 */
extern pdsp_f32_t pdsp_mean4_u16(pdsp_u16_t a4u16_in[]);

/**
 * @brief Mean from eight 16bit values. Use to average 8 ADC values.
 * @param a8u16_in Sample array of length 8.
 * @return pdsp_f32_t Mean value.
 */
extern pdsp_f32_t pdsp_mean8_u16(pdsp_u16_t a8u16_in[]);

/**
 * @brief Check if queue is empty.
 * @param ps_data Queue data struct.
 * @return pdsp_bool_t PDSP_TRUE if queue is not empty, PDSP_FALSE otherwise.
 */
extern pdsp_bool_t pdsp_queue_is_not_empty(pdsp_queue_t *ps_data);

/**
 * @brief Check if queue is not full.
 * @param ps_data Queue data struct.
 * @return pdsp_bool_t PDSP_TRUE if queue is not full, PDSP_FALSE otherwise.
 */
extern pdsp_bool_t pdsp_queue_is_not_full(pdsp_queue_t *ps_data);

/**
 * @brief Push data to the queue of ch.
 * @param ps_data Pointer to the queue struct.
 * @param ch_in Data to push to the queue.
 */
extern void pdsp_queue_push_ch(pdsp_queue_t *ps_data, pdsp_char_t ch_in);

/**
 * @brief Push data to the queue of i16.
 * @param ps_data Pointer to the queue struct.
 * @param i16_in Data to push to the queue.
 */
extern void pdsp_queue_push_i16(pdsp_queue_t *ps_data, pdsp_i16_t i16_in);

/**
 * @brief Push data to the queue of i32.
 * @param ps_data Pointer to the queue struct.
 * @param i32_in Data to push to the queue.
 */
extern void pdsp_queue_push_i32(pdsp_queue_t *ps_data, pdsp_i32_t i32_in);

/**
 * @brief Push data to the queue of f32.
 * @param ps_data Pointer to the queue struct.
 * @param f32_in Data to push to the queue.
 */
extern void pdsp_queue_push_f32(pdsp_queue_t *ps_data, pdsp_f32_t f32_in);

/**
 * @brief Pop data from the queue of char.
 * @param ps_data Pointer to the queue struct.
 * @param ch_in Data to push to the queue.
 */
extern pdsp_char_t pdsp_queue_pop_char(pdsp_queue_t *ps_data);

/**
 * @brief Pop data from the queue of i16.
 * @param ps_data Pointer to the queue struct.
 * @param i16_in Data to push to the queue.
 */
extern pdsp_i16_t pdsp_queue_pop_i16(pdsp_queue_t *ps_data);

/**
 * @brief Pop data from the queue of i32.
 * @param ps_data Pointer to the queue struct.
 * @param i32_in Data to push to the queue.
 */
extern pdsp_i32_t pdsp_queue_pop_i32(pdsp_queue_t *ps_data);

/**
 * @brief Pop data from the queue of f32.
 * @param ps_data Pointer to the queue struct.
 * @param f32_in Data to push to the queue.
 */
extern pdsp_f32_t pdsp_queue_pop_f32(pdsp_queue_t *ps_data);

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
extern pdsp_f32_t pdsp_daq(const pdsp_daq_t *ps_data, pdsp_f32_t f32_raw);

/**
 * @brief Initialize / Clear min-max struct.
 * @param ps_var Min-max state variable struct.
 */
extern void pdsp_minmax_clear(pdsp_minmax_var_t *ps_var);

/**
 * @brief Process min-max.
 * @param ps_var Min-max state variable struct.
 */
extern void pdsp_minmax(pdsp_minmax_var_t *ps_var, pdsp_f32_t f23_in);

/**
 * @brief Initialize / Clear simple exponential average struct.
 * @param ps_data Filter state variable struct.
 */
extern void pdsp_expavg_clear(const pdsp_expavg_t *ps_data);

/**
 * @brief Calculate simplple exponential averaging filter.
 * @param ps_data Filter state variable struct.
 * @returns pdsp_f32_t Filter ouptut.
 */
extern pdsp_f32_t pdsp_expavg(const pdsp_expavg_t *ps_data, pdsp_f32_t f32_in);

/**
 * @brief Initialize / Clear DF22 biquad filter struct.
 * @param ps_var Filter state variable struct.
 */
extern void pdsp_df22_clear(pdsp_df22_var_t *ps_var);

/**
 * @brief Calculate DF22 biquad filter.
 * @param ps_var Filter state memory struct.
 * @param ps_param Filter parameter struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
extern pdsp_f32_t pdsp_df22(pdsp_df22_var_t *ps_var,
                            const pdsp_df22_param_t *ps_param,
                            pdsp_f32_t f32_in);

/**
 * @brief Initialize / Clear median filter struct.
 * @param ps_var Filter state variable struct.
 */
extern void pdsp_med3_clear(pdsp_med3_var_t *ps_var);

/**
 * @brief Calculate median filter with kernel size 3.
 * @param ps_var Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
extern pdsp_f32_t pdsp_med3(pdsp_med3_var_t *ps_var, pdsp_f32_t f32_in);

/**
 * @brief Initialize / Clear rolling sum struct.
 * @param ps_data Filter state variable struct.
 */
extern pdsp_status_t pdsp_rollsum_clear(const pdsp_rollsum_t *ps_data);

/**
 * @brief Calculate rolling sum.
 * @param ps_data Filter state memory struct.
 * @param f32_in Rolling sum input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
extern pdsp_f32_t pdsp_rollsum(const pdsp_rollsum_t *ps_data,
                               pdsp_f32_t f32_in);

/**
 * @brief Initialize / clear rolling averaging struct.
 * @param ps_data Filter state variable struct.
 */
extern void pdsp_rollavg_clear(const pdsp_rollsum_t *ps_data);

/**
 * @brief Calculate rolling averaging filter.
 * @param ps_data Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
extern pdsp_f32_t pdsp_rollavg(const pdsp_rollsum_t *ps_data,
                               pdsp_f32_t f32_in);

/**
 * @brief Initialize / clear rolling rms struct.
 * @param ps_data Filter state variable struct.
 */
extern void pdsp_rollrms_clear(const pdsp_rollsum_t *ps_data);

/**
 * @brief Calculate rolling Root Mean Square filter.
 * @param ps_state Filter state memory struct.
 * @param af32_history Filter history array.
 * @param u32_size History size.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
extern pdsp_f32_t pdsp_rollrms(pdsp_rollsum_t *ps_state,
                               pdsp_f32_t af32_history[], pdsp_u32_t u32_size,
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
extern void pdsp_abc_dq_clear(pdsp_abc_dq_var_t *ps_var);

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
extern void pdsp_abc_dq_pos(pdsp_abc_dq_var_t *ps_var, pdsp_f32_t f32_a,
                            pdsp_f32_t f32_b, pdsp_f32_t f32_c,
                            pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val);

/**
 * @brief Runs abc-dq neg routine => q=-q_pos
 * @param ps_var Pointer to abc_dq structure.
 * @param f32_a Phase a value.
 * @param f32_b Phase b value.
 * @param f32_c Phase c value.
 * @param f32_sin_val Sine value of the grid angle.
 * @param f32_cos_val Cosine value of the grid angle.
 */
extern void pdsp_abc_dq_neg(pdsp_abc_dq_var_t *ps_var, pdsp_f32_t f32_a,
                            pdsp_f32_t f32_b, pdsp_f32_t f32_c,
                            pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val);

/**
 * @brief Resets internal dq-abc data to zero.
 * @param ps_var Pointer to dq-abc structure.
 */
extern void pdsp_dq0_abc_init(pdsp_dq_abc_var_t *ps_var);

/**
 * @brief Runs dq-abc routine.
 * @param ps_var Pointer to dq_abc structure.
 * @param f32_d d ref value
 * @param f32_q q ref value
 * @param f32_z z ref value
 * @param f32_sin_val Sine value of the grid angle.
 * @param f32_cos_val Cosine value of the grid angle
 */
extern void pdsp_dq0_abc(pdsp_dq_abc_var_t *ps_var, pdsp_f32_t f32_d,
                         pdsp_f32_t f32_q, pdsp_f32_t f32_z,
                         pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val);

/**
 * @brief Initialize / clear pi controller struct.
 * @param ps_data Controller data struct.
 */
extern void pdsp_pi_clear(pdsp_pi_t *ps_data);

/**
 * @brief Initialize / clear pi controller struct.
 * @param ps_data Controller data struct.
 */
extern void pdsp_pi2_clear(pdsp_pi2_t *ps_data);

/**
 * @brief Initialize / clear pi controller struct.
 * @param ps_data Controller data struct.
 */
extern void pdsp_pi4_clear(pdsp_pi4_t *ps_data);

/**
 * @brief Calculate PI controller.
 * @param ps_data Controller data struct.
 * @param f32_error Controller error signal input.
 * @returns pdsp_f32_t Controller output.
 */
extern pdsp_f32_t pdsp_pi(pdsp_pi_t *ps_data, pdsp_f32_t f32_error);

/**
 * @brief Calculate dual PI controller.
 * @param ps_data Controller data struct.
 * @param f32_error0 First error signal input.
 * @param f32_error1 Second error signal input.
 * @returns pdsp_f32_t Controller output.
 */
extern pdsp_f32_t pdsp_pi2(pdsp_pi2_t *ps_data, pdsp_f32_t f32_error0,
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
extern pdsp_f32_t pdsp_pi4(pdsp_pi3_t *ps_data, pdsp_f32_t f32_error0,
                           pdsp_f32_t f32_error2, pdsp_f32_t f32_error2,
                           pdsp_f32_t f32_error3);

/**
 * @brief Set the PI controller to given state.
 * @param ps_data Controller data struct.
 * @param f32_out Set controller output value.
 */
extern void pdsp_pi_set(pdsp_pi_t *ps_data, pdsp_f32_t f32_out);

/**
 * @brief Set the dual PI controller to given state.
 * @param ps_data Controller data struct.
 * @param f32_out Set controller output value.
 */
extern void pdsp_pi2_set(pdsp_pi2_t *ps_data, pdsp_f32_t f32_out);

/**
 * @brief Set the quad PI controller to given state.
 * @param ps_data Controller data struct.
 * @param f32_out Set controller output value.
 */
extern void pdsp_pi4_set(pdsp_pi4_t *ps_data, pdsp_f32_t f32_out);

/**
 * @brief Initialize set point processor struct.
 * @param ps_state Set point state memory struct.
 * @returns pdsp_status_t PDSP_OK
 */
extern pdsp_status_t pdsp_setp_init(pdsp_setp_t *ps_state);

/**
 * @brief Calculate simple set point processor generating a ramp.
 * @details
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Set point output.
 */
extern pdsp_f32_t pdsp_setp_ramp(pdsp_setp_t *ps_state,
                                 const pdsp_setp_param_t *ps_param);

/**
 * @brief Calculate simple set point processor generating an exponential
 * settling process.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Set point output.
 */
extern pdsp_f32_t pdsp_setp_exp(pdsp_setp_t *ps_state,
                                const pdsp_setp_param_t *ps_param);

/**
 * @brief Set destination of simple set point processor.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_dest Set point destination.
 * @returns pdsp_status_t PDSP_OK
 */
extern pdsp_status_t pdsp_setp_set_dest(pdsp_setp_t *ps_state,
                                        const pdsp_setp_param_t *ps_param,
                                        pdsp_f32_t f32_dest);

/**
 * @brief Set the state to the destination.
 * @param ps_state Set point state memory struct.
 * @returns pdsp_f32_t Set point output.
 */
extern pdsp_f32_t pdsp_setp_step(pdsp_setp_t *ps_state);

/**
 * @brief Set the state to a defined value.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_value Set point value to step to.
 * @returns pdsp_f32_t Set point output.
 */
extern pdsp_f32_t pdsp_setp_reset(pdsp_setp_t *ps_state,
                                  const pdsp_setp_param_t *ps_param,
                                  pdsp_f32_t f32_value);

/**
 * @brief Set point reached.
 * @param ps_state Set point state memory struct.
 * @param f32_tol Tolarance for detection.
 * @returns pdsp_bool_t
 */
extern pdsp_bool_t pdsp_setp_reached(pdsp_setp_t *ps_state, pdsp_f32_t f32_tol);

/**
 * @brief Initialize saw wave generator struct.
 * @param ps_state Saw wave state memory struct.
 * @returns pdsp_status_t PDSP_OK
 */
extern pdsp_status_t pdsp_saw_init(pdsp_saw_t *ps_state);

/**
 * @brief Saw wave generator.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Waveform output.
 */
extern pdsp_f32_t pdsp_saw(pdsp_saw_t *ps_state,
                           const pdsp_saw_param_t *ps_param);

/**
 * @brief Saw wave shifter.
 * @param f32_in Original ramp value.
 * @param ps_param Set point parameter struct.
 * @param f32_phase Positive phase shift in the same unit as out_high / out_low.
 * @returns pdsp_f32_t Waveform output.
 */
extern pdsp_f32_t pdsp_saw_shift(pdsp_f32_t f32_in,
                                 const pdsp_saw_param_t *ps_param,
                                 pdsp_f32_t f32_phase);

extern pdsp_status_t pdsp_dpll_1ph_notch_init(pdsp_dpll_1ph_notch_t *ps_state);

extern pdsp_status_t pdsp_dpll_1ph_notch(pdsp_dpll_1ph_notch_t *ps_state,
                                         pdsp_f32_t f32_in);

extern pdsp_status_t pdsp_dpll_1ph_sogi_init(pdsp_dpll_1ph_sogi_t *ps_state);

extern pdsp_status_t pdsp_dpll_1ph_sogi(pdsp_dpll_1ph_sogi_t *ps_state,
                                        pdsp_f32_t f32_in);

extern pdsp_status_t
pdsp_dpll_1ph_sogi_fll_init(pdsp_dpll_1ph_sogi_fll_t *ps_state);

extern pdsp_status_t pdsp_dpll_1ph_sogi_fll(pdsp_dpll_1ph_sogi_fll_t *ps_state,
                                            pdsp_f32_t f32_in);

extern pdsp_status_t pdsp_dpll_3ph_ddsrf_init(pdsp_dpll_3ph_ddsrf_t *ps_state);

extern pdsp_status_t pdsp_dpll_3ph_ddsrf(pdsp_dpll_3ph_ddsrf_t *ps_state,
                                         pdsp_f32_t d_p, pdsp_f32_t d_n,
                                         pdsp_f32_t q_p, pdsp_f32_t q_n);
extern pdsp_status_t pdsp_dpll_3ph_srf_init(pdsp_dpll_3ph_srf_t *ps_state);

extern pdsp_status_t pdsp_dpll_3ph_srf(pdsp_dpll_3ph_srf_t *ps_state,
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
extern void pdsp_fault_init(pdsp_fault_t *ps_data);

/**
 * @brief Check over value fault.
 * @param ps_data Fault data struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
extern pdsp_bool_t pdsp_fault_check_over(pdsp_fault_t *ps_data,
                                         pdsp_f32_t f32_in);

/**
 * @brief Check under value fault.
 * @param ps_data Fault data struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
extern pdsp_bool_t pdsp_fault_check_under(pdsp_fault_t *ps_data,
                                          pdsp_f32_t f32_in);

/**
 * @brief Check equal value fault.
 * @param ps_data Fault data struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
extern pdsp_bool_t pdsp_fault_check_equal(pdsp_fault_t *ps_data,
                                          pdsp_f32_t f32_in);

/**
 * @brief Run fault check with true condition. Can be used for timeout fault.
 * @param ps_data Fault data struct.
 * @return pdsp_bool_t Fault status.
 */
extern pdsp_bool_t pdsp_fault_check_true(pdsp_fault_t *ps_data);

/**
 * @brief Run fault check with false condition.
 * @param ps_data Fault data struct.
 * @return pdsp_bool_t Fault status.
 */
extern pdsp_bool_t pdsp_fault_check_false(pdsp_fault_t *ps_data);

/**
 * @brief Check fault group and execute group callback.
 * @param b_group Fault group memory.
 * @param pf_callback Fault trip callback.
 * @return pdsp_status_t PDSP_OK
 */
extern pdsp_status_t pdsp_fault_process_group(pdsp_bool_t b_group,
                                              pdsp_status_t pf_callback(void));

/** @} fault */
/* ------------------------------------------------------------------------ */
/** @addtogroup debug Debug
 *  @{
 */

/**
 * @brief Initialize logger struct.
 * @param ps_data Logger state variable struct.
 */
extern void pdsp_log_init(pdsp_logger_t *ps_data);

/**
 * @brief Set the trigger value of the logger.
 * @param ps_data Logger state variable struct.
 * @param f32_value Trigger value. In force trigger mode, set to any value > 0.0
 * to trigger.
 * @param f32_offset Trigger offset value
 */
extern void pdsp_log_set_trigger(pdsp_logger_t *ps_data,
                                 pdsp_i16_t i16_trig_channel,
                                 pdsp_f32_t f32_value, pdsp_f32_t f32_offset);

/**
 * @brief Set the logger mode.
 * @param ps_data Logger state variable struct.
 * @param e_mode Logger mode from pdsp_logger_mode_e.
 */
extern void pdsp_log_set_mode(pdsp_logger_t *ps_data,
                              pdsp_logger_mode_e e_mode);

/**
 * @brief Logging data acquisition function.
 * @param ps_data Logger state variable struct.
 * @param f32_in0 Data input ch0.
 * @param f32_in1 Data input ch1.
 * @param f32_in2 Data input ch2.
 * @param f32_in3 Data input ch3.
 */
extern void pdsp_log_daq4(pdsp_logger_t *ps_data, pdsp_f32_t *af32_in);

/**
 * @brief Convert the log data into a csv ascii string to be sent over serial.
 * @details Use in a loop to send out the log data over serial as comma
 * separated values.
 * @param ps_param Logger parameter variable struct.
 * @param i16_index Log buffer index to convert.
 * @param ac_buf String buffer to write the csv data into. Minimum length is 32
 * chars.
 * @return pdsp_status_t
 */
extern pdsp_status_t pdsp_log_convert_csv(const pdsp_logger_param_t *ps_param,
                                          pdsp_i16_t i16_index,
                                          pdsp_char_t *ac_buf);

extern pdsp_status_t pdsp_sfra_init(pdsp_sfra_t *ps_state);

extern pdsp_status_t pdsp_sfra_start(pdsp_sfra_t *ps_state, pdsp_f32_t f32_amp,
                                     pdsp_f32_t f32_freq);

extern pdsp_bool_t pdsp_sfra_finished(pdsp_sfra_t *ps_state);

extern pdsp_f32_t pdsp_sfra_perturb(pdsp_sfra_t *ps_state);

extern pdsp_status_t pdsp_sfra_collect(pdsp_sfra_t *ps_state);

/*==============================================================================
 ENF OF FILE
 =============================================================================*/
#endif /* PDSP_H */
