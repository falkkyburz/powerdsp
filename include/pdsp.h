/** @file pdsp.h
 *
 * @brief Power electronics digital signal processing types.
 * @details Some parts of this library are taken fom the TI C2000 Ware libarary.
 *
 * @author Falk Kyburz
 */

#ifndef PDSP_H
#define PDSP_H

#include <math.h>

/*---------------------------------------------------------------------------*/
/* Configuration options: */
#define PDSP_ASSERT_ENABLE
#define PDSP_ASSERT_FUNCTION(x)                                                \
    if (!(x))                                                                  \
        while (1)

/*---------------------------------------------------------------------------*/

#define PDSP_TRUE 1
#define PDSP_FALSE 0

#define PDSP_ON 1
#define PDSP_OFF 0

/* Defines for math constants. */
#define PDSP_PI (3.14159265358f)
#define PDSP_PI_2 (1.57079632679f)
#define PDSP_PI_4 (0.78539816339f)
#define PDSP_2_PI (6.28318530718f)
#define PDSP_2_PI_3 (2.09439510239f)
#define PDSP_4_PI_3 (4.18879020478f)
#define PDSP_SQRT2 (1.41421356237f)
#define PDSP_SQRT1_2 (0.70710678118f)
#define PDSP_ABS_ZERO (-273.15f)
/** Null pointer. */
#define PDSP_NULL ((void *)0)
/** Floating point not a number. */
#define PDSP_NAN (0.0 / 0.0)
/* Floating point not positive infinity. */
#define PDSP_POS_INF (1.0 / 0.0)
/* Floating point not negative infinity. */
#define PDSP_NEG_INF (-1.0 / 0.0)

/* Fixed and floating point types */
#if defined(_WIN64)
#define PDSP_HOST
typedef float pdsp_f32_t;
typedef int pdsp_i32_t;
typedef unsigned int pdsp_u32_t;
typedef int pdsp_bool_t;
#elif defined(__TMS320C2000__)
#define PDSP_MCU
typedef float pdsp_f32_t;
typedef long pdsp_i32_t;
typedef unsigned long pdsp_u32_t;
typedef int pdsp_bool_t;
#elif defined(__TMS320C28XX_CLA__)
#define PDSP_CLA
typedef float pdsp_f32_t;
typedef int pdsp_i32_t;
typedef unsigned int pdsp_u32_t;
typedef int pdsp_bool_t;
#endif

/** Assert function to reduce programmer errors. */
#ifdef PDSP_ASSERT_ENABLE
#define PDSP_ASSERT(x) PDSP_ASSERT_FUNCTION((x))
#else
#define PDSP_ASSERT(x)
#endif

/*---------------------------------------------------------------------------*/

/** PDSP status */
typedef enum pdsp_status_tag
{
    PDSP_OK,
    PDSP_NOT_OK,
    PDSP_BUSY
} pdsp_status_t;

/** Hysteresis parameter struct */
typedef struct pdsp_hyst_time_param_tag
{
    /** Hysteresis time step. */
    pdsp_f32_t f32_t_step;
    /** Hysteresis detection time. High transition. */
    pdsp_f32_t f32_t_high;
    /** Hysteresis recovery time. Low transition. */
    pdsp_f32_t f32_t_low;
} pdsp_hyst_time_param_t;

/** Hysteresis status struct */
typedef struct pdsp_hyst_time_tag
{
    /** Hysteresis status state variable. */
    pdsp_bool_t b_state;
    /** Hysteresis time state variable. */
    pdsp_f32_t f32_time;
} pdsp_hyst_time_t;

/** Raw signal processing parameter struct. */
typedef struct pdsp_sig_param_tag
{
    /** Signal conversion gain. */
    pdsp_f32_t f32_gain;
    /** Signal conversion offset. */
    pdsp_f32_t f32_offset;
} pdsp_sig_param_t;

/** Override parameter struct. */
typedef struct pdsp_override_tag
{
    /** Override disable. Normally 0.0f, set to 1.0f to override. */
    pdsp_u32_t u32_enable;
    /** Override value. */
    pdsp_f32_t f32_value;
} pdsp_override_t;

/** Min-max state variable struct. */
typedef struct pdsp_minmax_tag
{
    /** Minimum value since last clear. */
    pdsp_f32_t f32_min;
    /** Maximum value sincce last clear. */
    pdsp_f32_t f32_max;
    /** Delta (max-min) value since last clear. */
    pdsp_f32_t f32_delta;
} pdsp_minmax_t;

/** Exponential average parameter struct. */
typedef struct pdsp_expavg_param_tag
{
    /** Exponential average factor. */
    pdsp_f32_t f32_tau;
} pdsp_expavg_param_t;

/** Exponential average state memory. */
typedef struct pdsp_expavg_tag
{
    /** Exponential average state variable. */
    pdsp_f32_t f32_x1;
} pdsp_expavg_t;

/** DF22 filter parameter struct. */
typedef struct pdsp_df22_param_tag
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

/** DF11 filter parameter struct. */
typedef struct pdsp_df11_param_tag
{
    /** df11 filter b0 coefficient. */
    pdsp_f32_t f32_b0;
    /** df11 filter b1 coefficient. */
    pdsp_f32_t f32_b1;
    /** df11 filter a1 coefficient. */
    pdsp_f32_t f32_a1;
} pdsp_df11_param_t;

/** DF22 filter state memory struct. */
typedef struct pdsp_df22_tag
{
    /** df22 filter x0 state variable */
    pdsp_f32_t f32_x1;
    /** df22 filter x1 state variable */
    pdsp_f32_t f32_x2;
} pdsp_df22_t;

/** Median memory struct. */
typedef struct pdsp_med3_tag
{
    /**  */
    pdsp_f32_t f32_x0;
    /**  */
    pdsp_f32_t f32_x1;
    /**  */
    pdsp_f32_t f32_x2;
} pdsp_med3_t;

/** Rolling sum state memory struct. */
typedef struct pdsp_rollsum_tag
{
    /** Sum of history array (divided by size) */
    pdsp_f32_t f32_sum;
    /** Head nindex of history array. */
    pdsp_u32_t u32_head;
} pdsp_rollsum_t;

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

/** PI controller parameter struct. */
typedef struct pdsp_pi_param_tag
{
    /** PI saturation maximum value. */
    pdsp_f32_t f32_max;
    /** PI saturation minimum value. */
    pdsp_f32_t f32_min;
} pdsp_pi_param_t;

/** PI controller state memory struct. */
typedef struct pdsp_pi_tag
{
    /**  */
    pdsp_u32_t u32_active;
    /**  */
    pdsp_u32_t u32_idx;
    /**  */
    pdsp_f32_t f32_x0;
    /**  */
    pdsp_f32_t f32_x1;
} pdsp_pi_t;

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

/** abc-dq transform structure */
typedef struct pdsp_abc_dq_tag
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
} pdsp_abc_dq_t;

/** abc-dq transform structure */
typedef struct pdsp_dq_abc_tag
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
} pdsp_dq_abc_t;

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

/** Fault parameter struct */
typedef struct pdsp_fault_param_tag
{
    /** Time hysteresis parameters. */
    pdsp_hyst_time_param_t s_hyst_param;
    /** Fault trip value. */
    pdsp_f32_t f32_value;
    /** Fault group status */
    pdsp_u32_t *b_group;
    /** Fault group bit position */
    pdsp_u32_t u32_bit;
} pdsp_fault_param_t;

/** Fault state variable struct */
typedef struct pdsp_fault_tag
{
    /** Fault enable  */
    pdsp_bool_t b_ena;
    /** Time hysteresis status. */
    pdsp_hyst_time_t s_hyst;
} pdsp_fault_t;

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
typedef struct pdsp_logger_param_tag
{
    /** Logging history array for channel 0. */
    pdsp_f32_t *af32_history0;
    /** Logging history array for channel 1. */
    pdsp_f32_t *af32_history1;
    /** Logging history array for channel 2. */
    pdsp_f32_t *af32_history2;
    /** Logging history array for channel 3. */
    pdsp_f32_t *af32_history3;
    /** History array size */
    pdsp_u32_t u32_size;
    /** History array maximum index. Normally u32_size-1*/
    pdsp_u32_t u32_index_max;
} pdsp_logger_param_t;

/** Data logger variable struct */
typedef struct pdsp_logger_tag
{
    /** User setting: Trigger mode */
    pdsp_logger_mode_e e_trig_mode;
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
} pdsp_logger_t;

/** Stopwatch parameter struct. */
typedef struct pdsp_stopwatch_param_tag
{
    pdsp_u32_t u32_hw_max;
    pdsp_f32_t f32_tick_per;
} pdsp_stopwatch_param_t;

/*---------------------------------------------------------------------------*/

/**
 * @brief Set all elements in array to given value.
 * @param af32_array Array where values are set.
 * @param u32_size  Size of array.
 * @param f32_value Value to set array elements to.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_array_set(pdsp_f32_t af32_array[],
                                           pdsp_u32_t u32_size,
                                           pdsp_u32_t f32_value)
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT(af32_array && u32_size);
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_array[u32_idx] = f32_value;
    }
    return PDSP_OK;
}

/**
 * @brief Map a value from one range to another (Uses division).
 * @param f32_in Input value.
 * @param f32_in_lo Input range low value.
 * @param f32_in_hi Input range high value.
 * @param f32_out_lo Output range low value.
 * @param f32_out_hi Output range high value.
 * @return pdsp_f32_t Ouput value.
 */
static inline pdsp_f32_t pdsp_map(pdsp_f32_t f32_in, pdsp_f32_t f32_in_lo,
                                  pdsp_f32_t f32_in_hi, pdsp_f32_t f32_out_lo,
                                  pdsp_f32_t f32_out_hi)
{
    return (f32_out_lo + (f32_in - f32_in_lo) * (f32_out_hi - f32_out_lo) /
                             (f32_in_hi - f32_in_lo));
}

/**
 * @brief Apply a given function to each element.
 * @param af32_in Inpurt array.
 * @param af32_out Out array.
 * @param u32_size Size of input / output array.
 * @param p_func Function to apply to the elements.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_apply(const pdsp_f32_t af32_in[],
                                       pdsp_f32_t af32_out[],
                                       pdsp_u32_t u32_size,
                                       pdsp_u32_t p_func(pdsp_u32_t))
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT(af32_in && af32_out && u32_size && p_func);
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = p_func(af32_in[u32_idx]);
    }
    return PDSP_OK;
}

/**
 * @brief Create linerarly spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start value.
 * @param f32_end End Value.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_linspace(pdsp_f32_t af32_out[],
                                          pdsp_u32_t u32_size,
                                          pdsp_f32_t f32_start,
                                          pdsp_f32_t f32_end)
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT(af32_out && u32_size);
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] =
            pdsp_map((pdsp_f32_t)u32_idx, 0.0f, (pdsp_f32_t)u32_size - 1.0f,
                     f32_start, f32_end);
    }
    return PDSP_OK;
}

/**
 * @brief Create logarithmically spaced values.
 * @param af32_out Output array.
 * @param u32_size Output array size.
 * @param f32_start Start exponent.
 * @param f32_end End exponent.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_logspace(pdsp_f32_t af32_out[],
                                          pdsp_u32_t u32_size,
                                          pdsp_f32_t f32_start,
                                          pdsp_f32_t f32_end)
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT(af32_out && u32_size);
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = powf(10.0f, pdsp_map((pdsp_f32_t)u32_idx, 0.0f,
                                                 (pdsp_f32_t)u32_size - 1.0f,
                                                 f32_start, f32_end));
    }
    return PDSP_OK;
}

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
 * @param b_state_mem State input PDSP_FALSE: low, PDSP_FALSE: high
 * @param f32_high Higher hysteresis threshold.
 * @param f32_low Lower hysteresis threshold.
 * @param f32_in Value input.
 * @return pdsp_bool_t State output.
 */
static inline pdsp_bool_t pdsp_hysteresis_value(pdsp_bool_t *b_state_mem,
                                                pdsp_f32_t f32_in,
                                                pdsp_f32_t f32_low,
                                                pdsp_f32_t f32_high)
{
    PDSP_ASSERT(b_state_mem && (f32_low < f32_high));
    /* PDSP_FALSE or OFF state */
    if (!(*b_state_mem) && (f32_in > f32_high))
    {
        *b_state_mem = PDSP_FALSE;
        /* State change actions */
    }
    /* PDSP_TRUE or ON state */
    else if ((*b_state_mem) && (f32_in < f32_low))
    {
        *b_state_mem = PDSP_FALSE;
        /* State change actions */
    }
    else
    {
        /* do nothing */
    }
    return *b_state_mem;
}

/**
 * @brief Condition/time hysteresis function with detecting and recovering time.
 * @param ps_state Hysteresis state struct.
 * @param ps_param Hysteresis parameter struct.
 * @param b_in Input condition.
 * @return pdsp_bool_t Status output.
 */
static inline pdsp_bool_t
pdsp_hysteresis_time(pdsp_hyst_time_t *ps_state,
                     const pdsp_hyst_time_param_t *ps_param, pdsp_bool_t b_in)
{
    PDSP_ASSERT(ps_state && ps_param);
    /* PDSP_FALSE or OFF state */
    if (!(ps_state->b_state) && b_in)
    {
        ps_state->f32_time += ps_param->f32_t_step;
        if (ps_state->f32_time > ps_param->f32_t_high)
        {
            ps_state->b_state = PDSP_TRUE;
            ps_state->f32_time = 0.0f;
            /* State change actions */
        }
        else
        {
            /* do nothing */
        }
    }
    /* PDSP_TRUE or ON state */
    else if ((ps_state->b_state) && !b_in)
    {
        ps_state->f32_time += ps_param->f32_t_step;
        if (ps_state->f32_time > ps_param->f32_t_low)
        {
            ps_state->b_state = PDSP_FALSE;
            ps_state->f32_time = 0.0f;
            /* State change actions */
        }
        else
        {
            /* do nothing */
        }
    }
    else
    {
        ps_state->f32_time = 0.0f;
    }
    return ps_state->b_state;
}

/**
 * @brief Write bit in pdsp_u32_t variable.
 * @param pu32_mem Memory pointer to the variable.
 * @param u32_bit Bit number in memory variable.
 * @param b_value Boolean value to write to bit.
 */
static inline void pdsp_bit_write(pdsp_u32_t *pu32_mem, pdsp_u32_t u32_bit,
                                  pdsp_bool_t b_value)
{
    if (b_value)
    {
        *pu32_mem |= (1 << u32_bit);
    }
    else
    {
        *pu32_mem &= ~(1 << u32_bit);
    }
}

/**
 * @brief Read bit in pdsp_u32_t variable.
 * @param pu32_mem Memory pointer to the variable.
 * @param u32_bit Bit number in memory variable.
 * @returns pdsp_bool_t Value of bit at position u32_bit.
 */
static inline pdsp_bool_t pdsp_bit_read(const pdsp_u32_t *pu32_mem,
                                        pdsp_u32_t u32_bit)
{
    return (pdsp_bool_t)((*pu32_mem >> u32_bit) && 1U);
}

/**
 * @brief Weighted mean from two values.
 * @details Can be used to improve reconstruction of triangular currents.
 * @param f32_in0 First sample.
 * @param f32_in1 Second sample
 * @param f32_weight0 Weight of first sample [0, 1], current duty cycle.
 * @return pdsp_f32_t Weighted mean.
 */
static inline pdsp_f32_t pdsp_mean2(pdsp_f32_t f32_in0, pdsp_f32_t f32_in1,
                                    pdsp_f32_t f32_weight0)
{
    return (f32_in0 * f32_weight0) + (f32_in1 * (1.0f - f32_weight0));
}

/**
 * @brief Resets internal abc_dq data to zero.
 * @param ps_state Pointer to abc_dq structure.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_abc_dq_init(pdsp_abc_dq_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_alpha = 0.0f;
    ps_state->f32_beta = 0.0f;
    ps_state->f32_d = 0.0f;
    ps_state->f32_q = 0.0f;
    ps_state->f32_zero = 0.0f;
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
static inline pdsp_status_t pdsp_abc_dq_pos(pdsp_abc_dq_t *ps_state,
                                            pdsp_f32_t f32_a, pdsp_f32_t f32_b,
                                            pdsp_f32_t f32_c,
                                            pdsp_f32_t f32_sin_val,
                                            pdsp_f32_t f32_cos_val)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
    ps_state->f32_beta = 0.57735026913f * (f32_b - f32_c);
    ps_state->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
    ps_state->f32_d =
        ps_state->f32_alpha * f32_cos_val + ps_state->f32_beta * f32_sin_val;
    ps_state->f32_q =
        -ps_state->f32_alpha * f32_sin_val + ps_state->f32_beta * f32_cos_val;
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
static inline pdsp_status_t pdsp_abc_dq_neg(pdsp_abc_dq_t *ps_state,
                                            pdsp_f32_t f32_a, pdsp_f32_t f32_b,
                                            pdsp_f32_t f32_c,
                                            pdsp_f32_t f32_sin_val,
                                            pdsp_f32_t f32_cos_val)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
    ps_state->f32_beta = 0.57735026913f * (f32_b - f32_c);
    ps_state->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
    ps_state->f32_d =
        ps_state->f32_alpha * f32_cos_val - ps_state->f32_beta * f32_sin_val;
    ps_state->f32_q =
        ps_state->f32_alpha * f32_sin_val + ps_state->f32_beta * f32_cos_val;
    return PDSP_OK;
}

/**
 * @brief Resets internal dq-abc data to zero.
 * @param ps_state Pointer to dq-abc structure.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_dq0_abc_init(pdsp_dq_abc_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_alpha = 0.0f;
    ps_state->f32_beta = 0.0f;
    ps_state->f32_a = 0.0f;
    ps_state->f32_b = 0.0f;
    ps_state->f32_c = 0.0f;
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
static inline pdsp_status_t
pdsp_dq0_abc(pdsp_dq_abc_t *ps_state, pdsp_f32_t f32_d, pdsp_f32_t f32_q,
             pdsp_f32_t f32_z, pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_alpha = f32_d * f32_cos_val - f32_q * f32_sin_val;
    ps_state->f32_beta = f32_d * f32_sin_val + f32_q * f32_cos_val;
    ps_state->f32_a = ps_state->f32_alpha + 0.5f * f32_z;
    ps_state->f32_b = -0.5f * ps_state->f32_alpha +
                      0.8660254f * ps_state->f32_beta + 0.5f * f32_z;
    ps_state->f32_c = -0.5f * ps_state->f32_alpha -
                      0.8660254f * ps_state->f32_beta + 0.5f * f32_z;
    return PDSP_OK;
}

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
static inline pdsp_f32_t pdsp_interpollate_2d(const pdsp_f32_t af32_x[],
                                              const pdsp_f32_t af32_y[],
                                              pdsp_u32_t u32_size,
                                              pdsp_f32_t f32_x_in)
{
    /* Index of higher array element. */
    pdsp_u32_t u32_idx_hi = 1U;
    /* Validate inputs. */
    PDSP_ASSERT(af32_x && af32_y && u32_size);
    /* Find the higher array index >= 1. */
    while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
    {
        u32_idx_hi++;
    }
    /* Calculate the output. */
    return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
                    af32_y[u32_idx_hi - 1U], af32_y[u32_idx_hi]);
}

/**
 * @brief Apply gain / offset to raw signal.
 * @param ps_param Signal parameter struct.
 * @param ps_ovr Override command struct.
 * @param f32_raw Raw input signal.
 * @returns pdsp_f32_t Result = (raw * gain + offset) * enable + override.
 */
static inline pdsp_f32_t pdsp_sig_conv(const pdsp_sig_param_t *ps_param,
                                       const pdsp_override_t *ps_ovr,
                                       pdsp_f32_t f32_raw)
{
    PDSP_ASSERT(ps_param && ps_ovr);
    pdsp_f32_t ret[2] = {
        ((f32_raw * ps_param->f32_gain) + ps_param->f32_offset),
        ps_ovr->f32_value};
    return ret[ps_ovr->u32_enable];
}

/**
 * @brief Initialize / Clear min-max struct.
 * @param ps_state Min-max state variable struct.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_minmax_init(pdsp_minmax_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_min = PDSP_POS_INF;
    ps_state->f32_max = PDSP_NEG_INF;
    ps_state->f32_delta = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Process min-max.
 * @param ps_state Min-max state variable struct.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_minmax(pdsp_minmax_t *ps_state,
                                        pdsp_f32_t f23_in)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_min = fminf(ps_state->f32_min, f23_in);
    ps_state->f32_max = fmaxf(ps_state->f32_min, f23_in);
    ps_state->f32_delta = ps_state->f32_max - ps_state->f32_min;
    return PDSP_OK;
}

/**
 * @brief Initialize simple exponential average struct.
 * @param ps_state Filter state variable struct.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_expavg_init(pdsp_expavg_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_x1 = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Calculate simplple exponential averaging filter.
 * @param ps_state Filter state variable struct.
 * @param ps_param Filter parameter.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_expavg(pdsp_expavg_t *ps_state,
                                     const pdsp_expavg_param_t *ps_param,
                                     pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && ps_param);
    ps_state->f32_x1 =
        ps_state->f32_x1 + ps_param->f32_tau * (f32_in - ps_state->f32_x1);
    return ps_state->f32_x1;
}

/**
 * @brief Initialize DF22 biquad filter struct.
 * @param ps_state Filter state variable struct.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_df22_init(pdsp_df22_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_x1 = 0.0f;
    ps_state->f32_x2 = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Calculate DF22 biquad filter.
 * @param ps_state Filter state memory struct.
 * @param ps_param Filter parameter struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
static inline pdsp_f32_t pdsp_df22(pdsp_df22_t *ps_state,
                                   const pdsp_df22_param_t *ps_param,
                                   pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_f32_t f32_out = (f32_in * ps_param->f32_b0) + ps_state->f32_x1;
    ps_state->f32_x1 = (f32_in * ps_param->f32_b1) +
                       (f32_out * ps_param->f32_a1) + ps_state->f32_x2;
    ps_state->f32_x2 =
        (f32_in * ps_param->f32_b2) + (f32_out * ps_param->f32_a2);
    return f32_out;
}

/**
 * @brief Initialize median filter struct.
 * @param ps_state Filter state variable struct.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_med3_init(pdsp_med3_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_x0 = 0.0f;
    ps_state->f32_x1 = 0.0f;
    ps_state->f32_x2 = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Calculate median filter with kernel size 3.
 * @param ps_state Filter state memory struct.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter output.
 */
static inline pdsp_f32_t pdsp_med3(pdsp_med3_t *ps_state, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state);
    /* calculate median3 filter */
    ps_state->f32_x0 =
        ((ps_state->f32_x1 + ps_state->f32_x2 + f32_in) -
         fminf(ps_state->f32_x1, fminf(ps_state->f32_x2, f32_in)) -
         fmaxf(ps_state->f32_x1, fmaxf(ps_state->f32_x2, f32_in)));
    /* store history x[k-2] = x[k-1] */
    ps_state->f32_x2 = ps_state->f32_x1;
    /* store history x[k-1] = new */
    ps_state->f32_x1 = ps_state->f32_x0;
    return ps_state->f32_x0;
}

/**
 * @brief Initialize rolling sum struct.
 * @param ps_state Filter state variable struct.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_rollsum_init(pdsp_rollsum_t *ps_state,
                                              pdsp_f32_t af32_history[],
                                              pdsp_u32_t u32_size)
{
    PDSP_ASSERT(ps_state && af32_history && u32_size);
    ps_state->f32_sum = 0.0f;
    ps_state->u32_head = 0U;
    pdsp_array_set(af32_history, u32_size, 0.0f);
    return PDSP_OK;
}

/**
 * @brief Calculate rolling sum.
 * @param ps_state Filter state memory struct.
 * @param af32_history Rolling sum history array.
 * @param u32_size History size.
 * @param f32_in Rolling sum input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_rollsum(pdsp_rollsum_t *ps_state,
                                      pdsp_f32_t af32_history[],
                                      pdsp_u32_t u32_size, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && af32_history && u32_size);
    pdsp_u32_t u32_tail = 0U;
    pdsp_f32_t f32_out = 0.0f;
    /* Place new scaled value to head position. */
    af32_history[ps_state->u32_head] = f32_in / (pdsp_f32_t)u32_size;
    /* Add the head value to the sum of squares state variable. */
    ps_state->f32_sum += af32_history[ps_state->u32_head];
    /* Calculate the output */
    f32_out = ps_state->f32_sum;
    /* compute the new tail index by using bitmask */
    // tail = (r->rms_head + 1U) & (size_pow2 - 1U)
    u32_tail = (ps_state->u32_head < (u32_size - 1U))
                   ? (ps_state->u32_head + 1U)
                   : (0U);
    /* Set the head to tail for the next iteration. */
    ps_state->u32_head = u32_tail;
    /* Subtract the tail value from the state variable for the next iteration.
     */
    ps_state->f32_sum -= af32_history[u32_tail];
    return f32_out;
}

/**
 * @brief Initialize rolling averaging struct.
 * @param ps_state Filter state variable struct.
 * @param af32_history Rolling sum history array.
 * @param u32_size History size.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_rollavg_init(pdsp_rollsum_t *ps_state,
                                              pdsp_f32_t af32_history[],
                                              pdsp_u32_t u32_size)
{
    PDSP_ASSERT(ps_state && af32_history && u32_size);
    pdsp_rollsum_init(ps_state, af32_history, u32_size);
    return PDSP_OK;
}

/**
 * @brief Calculate rolling averaging filter.
 * @param ps_state Filter state memory struct.
 * @param af32_history Filter history array.
 * @param u32_size History size.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_rollavg(pdsp_rollsum_t *ps_state,
                                      pdsp_f32_t af32_history[],
                                      pdsp_u32_t u32_size, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && af32_history && u32_size);
    return pdsp_rollsum(ps_state, af32_history, u32_size, f32_in);
}

/**
 * @brief Initialize rolling rms struct.
 * @param ps_state Filter state variable struct.
 * @param af32_history Rolling sum history array.
 * @param u32_size History size.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_rollrms_init(pdsp_rollsum_t *ps_state,
                                              pdsp_f32_t af32_history[],
                                              pdsp_u32_t u32_size)
{
    PDSP_ASSERT(ps_state && af32_history && u32_size);
    pdsp_rollsum_init(ps_state, af32_history, u32_size);
    return PDSP_OK;
}

/**
 * @brief Calculate rolling Root Mean Square filter.
 * @param ps_state Filter state memory struct.
 * @param af32_history Filter history array.
 * @param u32_size History size.
 * @param f32_in Filter input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_rollrms(pdsp_rollsum_t *ps_state,
                                      pdsp_f32_t af32_history[],
                                      pdsp_u32_t u32_size, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && af32_history && u32_size);
    return sqrtf(
        pdsp_rollsum(ps_state, af32_history, u32_size, f32_in * f32_in));
}

/**
 * @brief Initialize pi controller struct.
 * @param ps_state Controller state memory struct.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_pi_init(pdsp_pi_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->u32_active = 0U;
    ps_state->u32_idx = 0U;
    ps_state->f32_x0 = 0.0f;
    ps_state->f32_x1 = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Calculate PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller global parameter struct.
 * @param as_error_param Controller error parameter struct.
 * @param u32_idx_param Controller parameter index.
 * @param f32_error Controller error signal input.
 * @returns pdsp_f32_t Controller output.
 */
static inline pdsp_f32_t pdsp_pi_1x(pdsp_pi_t *ps_state,
                                    const pdsp_pi_param_t *ps_param,
                                    const pdsp_pi_err_param_t as_error_param[],
                                    pdsp_f32_t f32_error)
{
    PDSP_ASSERT(ps_state && ps_param && as_error_param);
    pdsp_f32_t f32_out = 0.0f;
    pdsp_f32_t f32_sum = 0.0f;
    /* Calculate integral path, including saturation delta. */
    ps_state->f32_x0 =
        ps_state->f32_x0 +
        f32_error * as_error_param[ps_state->u32_idx].f32_ki +
        ps_state->f32_x1 * as_error_param[ps_state->u32_idx].f32_ks;
    /* Calculate the sum of integral and proportional part. */
    f32_sum =
        f32_error * as_error_param[ps_state->u32_idx].f32_kp + ps_state->f32_x0;
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
static inline pdsp_f32_t
pdsp_pi_2x(pdsp_pi_t *ps_state, const pdsp_pi_param_t *ps_param,
           const pdsp_pi_err_param_t as_error0_param[], pdsp_f32_t f32_error0,
           const pdsp_pi_err_param_t as_error1_param[], pdsp_f32_t f32_error1)
{
    pdsp_f32_t f32_out = 0.0f;
    pdsp_f32_t f32_sum = 0.0f;
    PDSP_ASSERT(ps_state && ps_param && as_error0_param && as_error1_param);
    if ((f32_error0 * as_error0_param[ps_state->u32_idx].f32_ka) <
        (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    {
        ps_state->u32_active = 0U;
        /* Calculate integral path, including saturation delta. */
        ps_state->f32_x0 =
            ps_state->f32_x0 +
            f32_error0 * as_error0_param[ps_state->u32_idx].f32_ki +
            ps_state->f32_x1 * as_error0_param[ps_state->u32_idx].f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error0 * as_error0_param[ps_state->u32_idx].f32_kp +
                  ps_state->f32_x0;
    }
    else
    {
        /* Calculate integral path, including saturation delta. */
        ps_state->f32_x0 =
            ps_state->f32_x0 +
            f32_error1 * as_error1_param[ps_state->u32_idx].f32_ki +
            ps_state->f32_x1 * as_error1_param[ps_state->u32_idx].f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error1 * as_error1_param[ps_state->u32_idx].f32_kp +
                  ps_state->f32_x0;
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
static inline pdsp_f32_t
pdsp_pi_4x(pdsp_pi_t *ps_state, const pdsp_pi_param_t *ps_param,
           const pdsp_pi_err_param_t as_error0_param[], pdsp_f32_t f32_error0,
           const pdsp_pi_err_param_t as_error1_param[], pdsp_f32_t f32_error1,
           const pdsp_pi_err_param_t as_error2_param[], pdsp_f32_t f32_error2,
           const pdsp_pi_err_param_t as_error3_param[], pdsp_f32_t f32_error3)
{
    pdsp_f32_t f32_out = 0.0f;
    pdsp_f32_t f32_sum = 0.0f;
    PDSP_ASSERT(ps_state && ps_param && as_error0_param && as_error1_param &&
                as_error2_param && as_error3_param);
    /* under construction */
    // if ((f32_error0 * as_error0_param[ps_state->u32_idx].f32_ka) <
    // (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error0 *
    //     as_error0_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 *
    //     as_error0_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error0 * as_error0_param[ps_state->u32_idx].f32_kp +
    //     ps_state->f32_x0;
    // }
    // else if ((f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka) <
    // (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error1 *
    //     ps_error1_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 *
    //     as_error1_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error1 * as_error1_param[ps_state->u32_idx].f32_kp +
    //     ps_state->f32_x0;
    // }
    // else if ((f32_error2 * as_error2_param[ps_state->u32_idx].f32_ka) <
    // (f32_error1 * as_error1_param[ps_state->u32_idx].f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error2 *
    //     ps_error2_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 *
    //     as_error2_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error2 * as_error2_param[ps_state->u32_idx].f32_kp +
    //     ps_state->f32_x0;
    // }
    // else ((f32_error0 * as_error0_param->f32_ka) < (f32_error1 *
    // as_error1_param->f32_ka))
    // {
    //     /* calculate integral path, including saturation delta */
    //     ps_state->f32_x0 = ps_state->f32_x0 + f32_error3 *
    //     ps_error3_param[ps_state->u32_idx].f32_ki + ps_state->f32_x1 *
    //     as_error3_param[ps_state->u32_idx].f32_ks;
    //     /* calculate the sum of integral and proportional part */
    //     f32_sum = f32_error3 * as_error3_param[ps_state->u32_idx].f32_kp +
    //     ps_state->f32_x0;
    // }
    /* apply saturation */
    f32_out = fmaxf(ps_param->f32_min, fminf(ps_param->f32_max, f32_sum));
    /* store saturation delta */
    ps_state->f32_x1 = f32_out - f32_sum;
    return f32_out;
}

/**
 * @brief Set the PI controller to given state.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller parameter struct.
 * @param f32_out Set controller output value.
 * @returns pdsp_f32_t Controller output.
 */
static inline pdsp_status_t pdsp_pi_set(pdsp_pi_t *ps_state,
                                        const pdsp_pi_param_t *ps_param,
                                        pdsp_f32_t f32_out)
{
    PDSP_ASSERT(ps_state && ps_param);
    /* Set integral value to out_value. */
    ps_state->f32_x0 =
        fmaxf(ps_param->f32_min, fminf(ps_param->f32_max, f32_out));
    /* Set saturation memory to 0. */
    ps_state->f32_x1 = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Initialize set point processor struct.
 * @param ps_state Set point state memory struct.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_setp_init(pdsp_setp_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_x1 = 0.0f;
    ps_state->f32_dest = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Calculate simple set point processor generating a ramp.
 * @details
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Set point output.
 */
static inline pdsp_f32_t pdsp_setp_ramp(pdsp_setp_t *ps_state,
                                        const pdsp_setp_param_t *ps_param)
{
    PDSP_ASSERT(ps_state && ps_param);
    ps_state->f32_x1 =
        ps_state->f32_x1 +
        fmaxf(fminf(ps_state->f32_dest - ps_state->f32_x1, ps_param->f32_step),
              -ps_param->f32_step);
    return ps_state->f32_x1;
}

/**
 * @brief Calculate simple set point processor generating an exponential
 * settling process.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Set point output.
 */
static inline pdsp_f32_t pdsp_setp_exp(pdsp_setp_t *ps_state,
                                       const pdsp_setp_param_t *ps_param)
{
    PDSP_ASSERT(ps_state && ps_param);
    ps_state->f32_x1 =
        ps_state->f32_x1 +
        ps_param->f32_step * (ps_state->f32_dest - ps_state->f32_x1);
    return ps_state->f32_x1;
}

/**
 * @brief Set destination of simple set point processor.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_dest Set point destination.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t
pdsp_setp_set_dest(pdsp_setp_t *ps_state, const pdsp_setp_param_t *ps_param,
                   pdsp_f32_t f32_dest)
{
    PDSP_ASSERT(ps_state && ps_param);
    ps_state->f32_dest =
        fmaxf(fminf(f32_dest, ps_param->f32_max), ps_param->f32_min);
    return PDSP_OK;
}

/**
 * @brief Set the state to the destination.
 * @param ps_state Set point state memory struct.
 * @returns pdsp_f32_t Set point output.
 */
static inline pdsp_f32_t pdsp_setp_step(pdsp_setp_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_x1 = ps_state->f32_dest;
    return ps_state->f32_x1;
}

/**
 * @brief Set the state to a defined value.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @param f32_value Set point value to step to.
 * @returns pdsp_f32_t Set point output.
 */
static inline pdsp_f32_t pdsp_setp_reset(pdsp_setp_t *ps_state,
                                         const pdsp_setp_param_t *ps_param,
                                         pdsp_f32_t f32_value)
{
    PDSP_ASSERT(ps_state && ps_param);
    ps_state->f32_x1 =
        fmaxf(fminf(f32_value, ps_param->f32_max), ps_param->f32_min);
    return ps_state->f32_x1;
}

/**
 * @brief Set point reached.
 * @param ps_state Set point state memory struct.
 * @param f32_tol Tolarance for detection.
 * @returns pdsp_bool_t
 */
static inline pdsp_bool_t pdsp_setp_reached(pdsp_setp_t *ps_state,
                                            pdsp_f32_t f32_tol)
{
    PDSP_ASSERT(ps_state);
    return (pdsp_bool_t)(fabsf(ps_state->f32_x1 - ps_state->f32_dest) <
                         f32_tol);
}

/**
 * @brief Initialize saw wave generator struct.
 * @param ps_state Saw wave state memory struct.
 * @returns pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_saw_init(pdsp_saw_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->f32_x0 = 0.0f;
    return PDSP_OK;
}

/**
 * @brief Saw wave generator.
 * @param ps_state Set point state memory struct.
 * @param ps_param Set point parameter struct.
 * @returns pdsp_f32_t Waveform output.
 */
static inline pdsp_f32_t pdsp_saw(pdsp_saw_t *ps_state,
                                  const pdsp_saw_param_t *ps_param)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_f32_t af32_out[2] = {ps_state->f32_x0 + ps_param->f32_step,
                              ps_param->f32_out_low};
    /* result of comparison operation is 0 or 1 */
    ps_state->f32_x0 = af32_out[(af32_out[0] > ps_param->f32_out_high)];
    return ps_state->f32_x0;
}

/**
 * @brief Saw wave shifter.
 * @param f32_in Original ramp value.
 * @param ps_param Set point parameter struct.
 * @param f32_phase Positive phase shift in the same unit as out_high / out_low.
 * @returns pdsp_f32_t Waveform output.
 */
static inline pdsp_f32_t pdsp_saw_shift(pdsp_f32_t f32_in,
                                        const pdsp_saw_param_t *ps_param,
                                        pdsp_f32_t f32_phase)
{
    PDSP_ASSERT(ps_param);
    pdsp_f32_t af32_out[2] = {f32_in + f32_phase,
                              f32_in + f32_phase - ps_param->f32_out_high};
    /* result of comparison operation is 0 or 1 */
    return af32_out[(af32_out[0] >= ps_param->f32_out_high)];
}

static inline pdsp_status_t pdsp_sfra_init(pdsp_sfra_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    return PDSP_OK;
}

static inline pdsp_status_t
pdsp_sfra_start(pdsp_sfra_t *ps_state, pdsp_f32_t f32_amp, pdsp_f32_t f32_freq)
{
    PDSP_ASSERT(ps_state && (f32_amp >= 0.9f) && (f32_freq > 0.0f));
    return PDSP_OK;
}

static inline pdsp_bool_t pdsp_sfra_finished(pdsp_sfra_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    return PDSP_FALSE;
}

static inline pdsp_f32_t pdsp_sfra_perturb(pdsp_sfra_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    return 0.0f;
}

static inline pdsp_status_t pdsp_sfra_collect(pdsp_sfra_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    return PDSP_OK;
}

static inline pdsp_status_t
pdsp_dpll_1ph_notch_init(pdsp_dpll_1ph_notch_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->upd[0] = 0.0f;
    ps_state->upd[1] = 0.0f;
    ps_state->upd[2] = 0.0f;
    ps_state->y_notch1[0] = 0.0f;
    ps_state->y_notch1[1] = 0.0f;
    ps_state->y_notch1[2] = 0.0f;
    ps_state->y_notch2[0] = 0.0f;
    ps_state->y_notch2[1] = 0.0f;
    ps_state->y_notch2[2] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->ylf[2] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->theta = 0.0f;
    ps_state->cosine = 0.0f;
    ps_state->sine = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

static inline pdsp_status_t pdsp_dpll_1ph_notch(pdsp_dpll_1ph_notch_t *ps_state,
                                                pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state);
    /* Phase detector */
    ps_state->upd[0] = f32_in * ps_state->cosine;
    /* Notch filter. */
    ps_state->y_notch1[0] =
        (-ps_state->y_notch1[1] * ps_state->notch_coeff.f32_a1 -
         ps_state->y_notch1[2] * ps_state->notch_coeff.f32_a2 +
         ps_state->upd[0] * ps_state->notch_coeff.f32_b0 +
         ps_state->upd[1] * ps_state->notch_coeff.f32_b1 +
         ps_state->upd[2] * ps_state->notch_coeff.f32_b2);
    ps_state->y_notch2[0] =
        (-ps_state->y_notch2[1] * ps_state->notch_coeff.f32_a1 -
         ps_state->y_notch2[2] * ps_state->notch_coeff.f32_a2 +
         ps_state->y_notch1[0] * ps_state->notch_coeff.f32_b0 +
         ps_state->y_notch1[1] * ps_state->notch_coeff.f32_b1 +
         ps_state->y_notch1[2] * ps_state->notch_coeff.f32_b2);
    /* Lop filter. */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->y_notch2[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->y_notch2[1]);
    // ps_state->ylf[0] = (ps_state->ylf[0]>100)?100:ps_state->ylf[0];
    // ps_state->ylf[0] = (ps_state->ylf[0]<-100)?-100:ps_state->ylf[0];

    /* Update array elements */
    ps_state->upd[2] = ps_state->upd[1];
    ps_state->upd[1] = ps_state->upd[0];
    ps_state->y_notch1[2] = ps_state->y_notch1[1];
    ps_state->y_notch1[1] = ps_state->y_notch1[0];
    ps_state->y_notch2[2] = ps_state->y_notch2[1];
    ps_state->y_notch2[1] = ps_state->y_notch2[0];
    ps_state->ylf[1] = ps_state->ylf[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta =
        ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI;
    if (ps_state->theta > PDSP_2_PI)
    {
        ps_state->theta = ps_state->theta - PDSP_2_PI;
    }
    ps_state->sine = (pdsp_f32_t)sinf(ps_state->theta);
    ps_state->cosine = (pdsp_f32_t)cosf(ps_state->theta);
    return PDSP_OK;
}

static inline pdsp_status_t
pdsp_dpll_1ph_sogi_init(pdsp_dpll_1ph_sogi_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->u[0] = 0.0f;
    ps_state->u[1] = 0.0f;
    ps_state->u[2] = 0.0f;
    ps_state->osg_u[0] = 0.0f;
    ps_state->osg_u[1] = 0.0f;
    ps_state->osg_u[2] = 0.0f;
    ps_state->osg_qu[0] = 0.0f;
    ps_state->osg_qu[1] = 0.0f;
    ps_state->osg_qu[2] = 0.0f;
    ps_state->u_Q[0] = 0.0f;
    ps_state->u_Q[1] = 0.0f;
    ps_state->u_D[0] = 0.0f;
    ps_state->u_D[1] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->ylf[2] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->theta = 0.0f;
    ps_state->cosine = 0.0f;
    ps_state->sine = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

static inline pdsp_status_t pdsp_dpll_1ph_sogi(pdsp_dpll_1ph_sogi_t *ps_state,
                                               pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state);
    // Update the ps_state->u[0] with the grid value
    ps_state->u[0] = f32_in;
    /* Orthogonal sitgnal generator */
    ps_state->osg_u[0] =
        (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
        (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
        (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
    ps_state->osg_u[2] = ps_state->osg_u[1];
    ps_state->osg_u[1] = ps_state->osg_u[0];
    ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
                          (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
                          (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
                          (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
                          (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
    ps_state->osg_qu[2] = ps_state->osg_qu[1];
    ps_state->osg_qu[1] = ps_state->osg_qu[0];
    ps_state->u[2] = ps_state->u[1];
    ps_state->u[1] = ps_state->u[0];
    /* Park transform */
    ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
                       (ps_state->sine * ps_state->osg_qu[0]);
    ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
                       (ps_state->sine * ps_state->osg_u[0]);
    /* Loop filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    ps_state->u_Q[1] = ps_state->u_Q[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta =
        ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI;
    if (ps_state->theta > PDSP_2_PI)
    {
        ps_state->theta = ps_state->theta - PDSP_2_PI;
        // ps_state->theta=0;
    }
    ps_state->sine = (pdsp_f32_t)sinf(ps_state->theta);
    ps_state->cosine = (pdsp_f32_t)cosf(ps_state->theta);
    return PDSP_OK;
}

static inline pdsp_status_t
pdsp_dpll_1ph_sogi_fll_init(pdsp_dpll_1ph_sogi_fll_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->u[0] = 0.0f;
    ps_state->u[1] = 0.0f;
    ps_state->u[2] = 0.0f;
    ps_state->osg_u[0] = 0.0f;
    ps_state->osg_u[1] = 0.0f;
    ps_state->osg_u[2] = 0.0f;
    ps_state->osg_qu[0] = 0.0f;
    ps_state->osg_qu[1] = 0.0f;
    ps_state->osg_qu[2] = 0.0f;
    ps_state->u_Q[0] = 0.0f;
    ps_state->u_Q[1] = 0.0f;
    ps_state->u_D[0] = 0.0f;
    ps_state->u_D[1] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->ylf[2] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->wc = 0.0f;
    ps_state->theta = 0.0f;
    ps_state->cosine = 0.0f;
    ps_state->sine = 0.0f;
    ps_state->delta_t = 0.0f;
    ps_state->ef2 = 0.0f;
    ps_state->x3[0] = 0.0f;
    ps_state->x3[1] = 0.0f;
    ps_state->w_dash = 0.0f;
    ps_state->gamma = 0.0f;
    ps_state->k = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

static inline pdsp_status_t
pdsp_dpll_1ph_sogi_fll(pdsp_dpll_1ph_sogi_fll_t *ps_state, pdsp_f32_t f32_in)
{
    pdsp_f32_t osgx, osgy, temp;
    PDSP_ASSERT(ps_state);

    /* Update the ps_state->u[0] with the grid value */
    ps_state->u[0] = f32_in;
    /* Orthogonal Signal Generator */
    ps_state->osg_u[0] =
        (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
        (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
        (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
    ps_state->osg_u[2] = ps_state->osg_u[1];
    ps_state->osg_u[1] = ps_state->osg_u[0];
    ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
                          (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
                          (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
                          (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
                          (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
    ps_state->osg_qu[2] = ps_state->osg_qu[1];
    ps_state->osg_qu[1] = ps_state->osg_qu[0];
    ps_state->u[2] = ps_state->u[1];
    ps_state->u[1] = ps_state->u[0];
    /* Park Transform from alpha beta to d-q axis */
    ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
                       (ps_state->sine * ps_state->osg_qu[0]);
    ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
                       (ps_state->sine * ps_state->osg_u[0]);
    /* Loop Filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    // ps_state->ylf[0] = (ps_state->ylf[0]>0.5)?0.5:ps_state->ylf[0];
    // ps_state->ylf[0] = (ps_state->ylf[0]<-0.5)?-0.5:ps_state->ylf[0];
    ps_state->u_Q[1] = ps_state->u_Q[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta =
        ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI;
    if (ps_state->theta > PDSP_2_PI)
    {
        ps_state->theta = ps_state->theta - PDSP_2_PI;
    }
    ps_state->sine = sinf(ps_state->theta);
    ps_state->cosine = cosf(ps_state->theta);
    /* FLL */
    ps_state->ef2 =
        ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
        ps_state->gamma * ps_state->delta_t * -1.0f;
    ps_state->x3[0] = ps_state->x3[1] + ps_state->ef2;
    // ps_state->x3[0]= (ps_state->x3[0]>1.0)?1.0:ps_state->x3[0];
    // ps_state->x3[0]= (ps_state->x3[0]<-1.0)?-1.0:ps_state->x3[0];
    ps_state->x3[1] = ps_state->x3[0];
    ps_state->w_dash = ps_state->wc + ps_state->x3[0];
    ps_state->fn = ps_state->w_dash / PDSP_2_PI;
    osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
    osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
            ps_state->delta_t);
    temp = 1.0f / (osgx + osgy + 4.0f);
    ps_state->osg_coeff.osg_b0 = osgx * temp;
    ps_state->osg_coeff.osg_b2 = -1.0f * ps_state->osg_coeff.osg_b0;
    ps_state->osg_coeff.osg_a1 = ((2.0f * (4.0f - osgy)) * temp);
    ps_state->osg_coeff.osg_a2 = ((osgx - osgy - 4.0f) * temp);
    ps_state->osg_coeff.osg_qb0 = (ps_state->k * osgy * temp);
    ps_state->osg_coeff.osg_qb1 = (ps_state->osg_coeff.osg_qb0 * 2.0f);
    ps_state->osg_coeff.osg_qb2 = ps_state->osg_coeff.osg_qb0;
    return PDSP_OK;
}

static inline pdsp_status_t
pdsp_dpll_3ph_ddsrf_init(pdsp_dpll_3ph_ddsrf_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->d_p_decoupl = 0.0f;
    ps_state->d_n_decoupl = 0.0f;
    ps_state->q_p_decoupl = 0.0f;
    ps_state->q_n_decoupl = 0.0f;
    ps_state->cos_2theta = 0.0f;
    ps_state->sin_2theta = 0.0f;
    ps_state->y[0] = 0.0f;
    ps_state->y[1] = 0.0f;
    ps_state->x[0] = 0.0f;
    ps_state->x[1] = 0.0f;
    ps_state->w[0] = 0.0f;
    ps_state->w[1] = 0.0f;
    ps_state->z[0] = 0.0f;
    ps_state->z[1] = 0.0f;
    ps_state->k1 = 0.0f;
    ps_state->k2 = 0.0f;
    ps_state->d_p_decoupl_lpf = 0.0f;
    ps_state->d_n_decoupl_lpf = 0.0f;
    ps_state->q_p_decoupl_lpf = 0.0f;
    ps_state->q_n_decoupl_lpf = 0.0f;
    ps_state->v_q[0] = 0.0f;
    ps_state->v_q[1] = 0.0f;
    ps_state->theta[0] = 0.0f;
    ps_state->theta[1] = 0.0f;
    ps_state->ylf[0] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

static inline pdsp_status_t pdsp_dpll_3ph_ddsrf(pdsp_dpll_3ph_ddsrf_t *ps_state,
                                                pdsp_f32_t d_p, pdsp_f32_t d_n,
                                                pdsp_f32_t q_p, pdsp_f32_t q_n)
{
    PDSP_ASSERT(ps_state);
    /*
     * before calling this routine run the ABC_DQ0_Pos & Neg run routines
     * pass updated values for d_p,d_n,q_p,q_n
     * and update the cos_2theta and sin_2theta values with the prev angle
     */
    /* Decoupling Network */
    ps_state->d_p_decoupl = d_p -
                            (ps_state->d_n_decoupl_lpf * ps_state->cos_2theta) -
                            (ps_state->q_n_decoupl * ps_state->sin_2theta);
    ps_state->q_p_decoupl = q_p +
                            (ps_state->d_n_decoupl_lpf * ps_state->sin_2theta) -
                            (ps_state->q_n_decoupl * ps_state->cos_2theta);

    ps_state->d_n_decoupl = d_n -
                            (ps_state->d_p_decoupl_lpf * ps_state->cos_2theta) +
                            (ps_state->q_p_decoupl * ps_state->sin_2theta);
    ps_state->q_n_decoupl = q_n -
                            (ps_state->d_p_decoupl_lpf * ps_state->sin_2theta) -
                            (ps_state->q_p_decoupl * ps_state->cos_2theta);
    /* Low pass filter */
    ps_state->y[1] = (ps_state->d_p_decoupl * ps_state->k1) -
                     (ps_state->y[0] * ps_state->k2);
    ps_state->d_p_decoupl_lpf = ps_state->y[1] + ps_state->y[0];
    ps_state->y[0] = ps_state->y[1];
    ps_state->x[1] = (ps_state->q_p_decoupl * ps_state->k1) -
                     (ps_state->x[0] * ps_state->k2);
    ps_state->q_p_decoupl_lpf = ps_state->x[1] + ps_state->x[0];
    ps_state->x[0] = ps_state->x[1];
    ps_state->w[1] = (ps_state->d_n_decoupl * ps_state->k1) -
                     (ps_state->w[0] * ps_state->k2);
    ps_state->d_n_decoupl_lpf = ps_state->w[1] + ps_state->w[0];
    ps_state->w[0] = ps_state->w[1];
    ps_state->z[1] = (ps_state->q_n_decoupl * ps_state->k1) -
                     (ps_state->z[0] * ps_state->k2);
    ps_state->q_n_decoupl_lpf = ps_state->z[1] + ps_state->z[0];
    ps_state->z[0] = ps_state->z[1];
    ps_state->v_q[0] = ps_state->q_p_decoupl;
    /* Loop Filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    ps_state->v_q[1] = ps_state->v_q[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta[0] =
        ps_state->theta[1] +
        ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0f * 3.1415926f));
    if (ps_state->theta[0] > (pdsp_f32_t)(2.0f * 3.1415926f))
    {
        ps_state->theta[0] =
            ps_state->theta[0] - (pdsp_f32_t)(2.0f * 3.1415926f);
    }
    ps_state->theta[1] = ps_state->theta[0];
    ps_state->cos_2theta = cosf(ps_state->theta[1] * 2.0f);
    ps_state->sin_2theta = sinf(ps_state->theta[1] * 2.0f);
    return PDSP_OK;
}

static inline pdsp_status_t
pdsp_dpll_3ph_srf_init(pdsp_dpll_3ph_srf_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->v_q[0] = 0.0f;
    ps_state->v_q[1] = 0.0f;
    ps_state->ylf[0] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->theta[0] = 0.0f;
    ps_state->theta[1] = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

static inline pdsp_status_t pdsp_dpll_3ph_srf(pdsp_dpll_3ph_srf_t *ps_state,
                                              pdsp_f32_t f32_vq)
{
    PDSP_ASSERT(ps_state);
    /* Update the ps_state->v_q[0] with the grid value */
    ps_state->v_q[0] = f32_vq;
    /* Loop Filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    ps_state->v_q[1] = ps_state->v_q[0];
    ps_state->ylf[0] = (ps_state->ylf[0] > (pdsp_f32_t)(200.0))
                           ? (pdsp_f32_t)(200.0)
                           : ps_state->ylf[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta[0] =
        ps_state->theta[1] +
        ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0 * 3.1415926));
    if (ps_state->theta[0] > (pdsp_f32_t)(2.0 * 3.1415926))
    {
        ps_state->theta[0] = ps_state->theta[0] - (pdsp_f32_t)(2.0 * 3.1415926);
    }
    ps_state->theta[1] = ps_state->theta[0];
    return PDSP_OK;
}

/**
 * @brief Start the stopwatch with 32bit HW counter.
 * @param u32_hw_now Current time from the hardware timer.
 * @return pdsp_u32_t Current time to be stored for the pdsp_stopwatch_stop
 * function.
 */
static inline void pdsp_stopwatch_start(pdsp_u32_t *u32_state,
                                        pdsp_u32_t u32_hw_now)
{
    PDSP_ASSERT(u32_state);
    *u32_state = u32_hw_now;
}

/**
 * @brief Calculate the time elapsed since the start.
 * @param ps_param Stopwatch parameter struct.
 * @param u32_state Stopwatch state struct.
 * @param u32_hw_now Current time from the hardware timer.
 * @return pdsp_u32_t Elapsed time in timer ticks.
 */
static inline pdsp_u32_t
pdsp_stopwatch_stop(const pdsp_stopwatch_param_t *ps_param,
                    pdsp_u32_t *u32_state, pdsp_u32_t u32_hw_now)
{
    PDSP_ASSERT(ps_param && u32_state);
    pdsp_u32_t u32_time[2] = {0U, ps_param->u32_hw_max};
    return u32_hw_now - *u32_state + u32_time[(*u32_state < u32_hw_now)];
}

/**
 * @brief Initalize fault struct.
 * @param ps_state Fault state struct.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_fault_init(pdsp_fault_t *ps_state)
{
    PDSP_ASSERT(ps_state);
    ps_state->b_ena = 0U;
    ps_state->s_hyst.f32_time = 0.0f;
    ps_state->s_hyst.b_state = PDSP_FALSE;
    return PDSP_OK;
}

/**
 * @brief Check over value fault.
 * @param ps_state Fault status struct.
 * @param ps_param Fault param struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
static inline pdsp_bool_t
pdsp_fault_check_over(pdsp_fault_t *ps_state,
                      const pdsp_fault_param_t *ps_param, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_bool_t b_status_out =
        pdsp_hysteresis_time(&ps_state->s_hyst, &ps_param->s_hyst_param,
                             f32_in > ps_param->f32_value);
    pdsp_bit_write(ps_param->b_group, ps_param->u32_bit, b_status_out);
    return b_status_out;
}

/**
 * @brief Check under value fault.
 * @param ps_state Fault status struct.
 * @param ps_param Fault param struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
static inline pdsp_bool_t
pdsp_fault_check_under(pdsp_fault_t *ps_state,
                       const pdsp_fault_param_t *ps_param, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_bool_t b_status_out =
        pdsp_hysteresis_time(&ps_state->s_hyst, &ps_param->s_hyst_param,
                             f32_in < ps_param->f32_value);
    pdsp_bit_write(ps_param->b_group, ps_param->u32_bit, b_status_out);
    return b_status_out;
}

/**
 * @brief Check equal value fault.
 * @param ps_state Fault status struct.
 * @param ps_param Fault param struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
static inline pdsp_bool_t
pdsp_fault_check_equal(pdsp_fault_t *ps_state,
                       const pdsp_fault_param_t *ps_param, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_bool_t b_status_out =
        pdsp_hysteresis_time(&ps_state->s_hyst, &ps_param->s_hyst_param,
                             f32_in == ps_param->f32_value);
    pdsp_bit_write(ps_param->b_group, ps_param->u32_bit, b_status_out);
    return b_status_out;
}

/**
 * @brief Run fault check with true condition. Can be used for timeout fault.
 * @param ps_state Fault status struct.
 * @param ps_param Fault param struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
static inline pdsp_bool_t
pdsp_fault_check_true(pdsp_fault_t *ps_state,
                      const pdsp_fault_param_t *ps_param)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_bool_t b_status_out = pdsp_hysteresis_time(
        &ps_state->s_hyst, &ps_param->s_hyst_param, PDSP_TRUE);
    pdsp_bit_write(ps_param->b_group, ps_param->u32_bit, b_status_out);
    return b_status_out;
}

/**
 * @brief Run fault check with false condition.
 * @param ps_state Fault status struct.
 * @param ps_param Fault param struct.
 * @param b_condition Condition to be evaluated.
 * @return pdsp_bool_t Fault status.
 */
static inline pdsp_bool_t
pdsp_fault_check_false(pdsp_fault_t *ps_state,
                       const pdsp_fault_param_t *ps_param)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_bool_t b_status_out = pdsp_hysteresis_time(
        &ps_state->s_hyst, &ps_param->s_hyst_param, PDSP_FALSE);
    pdsp_bit_write(ps_param->b_group, ps_param->u32_bit, b_status_out);
    return b_status_out;
}

/**
 * @brief Check fault group and execute group callback.
 * @param b_group Fault group memory.
 * @param pf_callback Fault trip callback.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t
pdsp_fault_process_group(pdsp_bool_t b_group, pdsp_status_t pf_callback(void))
{
    PDSP_ASSERT(pf_callback);
    if (b_group)
    {
        pf_callback();
    }
    return PDSP_OK;
}

/**
 * @brief Initialize logger struct.
 * @param ps_state Logger state variable struct.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_log_init(pdsp_logger_t *ps_state,
                                          const pdsp_logger_param_t *ps_param)
{
    PDSP_ASSERT(ps_state && ps_param);
    pdsp_array_set(ps_param->af32_history0, ps_param->u32_size, 0.0f);
    pdsp_array_set(ps_param->af32_history1, ps_param->u32_size, 0.0f);
    pdsp_array_set(ps_param->af32_history2, ps_param->u32_size, 0.0f);
    pdsp_array_set(ps_param->af32_history3, ps_param->u32_size, 0.0f);
    ps_state->e_trig_mode = PDSP_LOG_MODE_TRIG_NONE;
    ps_state->f23_trig_value = 0.0f;
    ps_state->f23_trig_offset = 0.5f;
    ps_state->u23_counter = 1U;
    ps_state->b_triggered = PDSP_FALSE;
    ps_state->u32_head = 0U;
    return PDSP_OK;
}

/**
 * @brief Set the trigger value of the logger.
 * @param ps_state Logger state variable struct.
 * @param f32_value Trigger value. In force trigger mode, set to any value > 0.0
 * to trigger.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_log_set_trigger(pdsp_logger_t *ps_state,
                                                 pdsp_f32_t f32_value,
                                                 pdsp_f32_t f32_offset)
{
    PDSP_ASSERT(ps_state);
    ps_state->f23_trig_value = f32_value;
    ps_state->f23_trig_offset = f32_offset;
    return PDSP_OK;
}

/**
 * @brief Set the logger mode.
 * @param ps_state Logger state variable struct.
 * @param e_mode Logger mode from pdsp_logger_mode_e.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_log_set_mode(pdsp_logger_t *ps_state,
                                              pdsp_logger_mode_e e_mode)
{
    PDSP_ASSERT(ps_state);
    ps_state->e_trig_mode = e_mode;
    return PDSP_OK;
}

/**
 * @brief Logging data acquisition function.
 * @param ps_state Logger state variable struct.
 * @param ps_param Logger parameter variable struct.
 * @param f32_in Data input.
 */
static inline void pdsp_log_daq(pdsp_logger_t *ps_state,
                                const pdsp_logger_param_t *ps_param,
                                pdsp_f32_t f32_in0, pdsp_f32_t f32_in1,
                                pdsp_f32_t f32_in2, pdsp_f32_t f32_in3)
{
    PDSP_ASSERT(ps_state && ps_param);
    if (ps_state->u23_counter > 0U)
    {
        ps_param->af32_history0[ps_state->u32_head] = f32_in0;
        ps_param->af32_history1[ps_state->u32_head] = f32_in1;
        ps_param->af32_history2[ps_state->u32_head] = f32_in2;
        ps_param->af32_history3[ps_state->u32_head] = f32_in3;
        ps_state->u32_head++;
        if (ps_state->u32_head > ps_param->u32_index_max)
        {
            ps_state->u32_head = 0U;
        }
        if (ps_state->b_triggered)
        {
            ps_state->u23_counter--;
        }
    }
}

/**
 * @brief Logging trigger detection.
 * @param ps_state Logger state variable struct.
 * @param ps_param Logger parameter variable struct.
 * @param f32_in ILogger input value to be stored.
 * @return pdsp_status_t PDSP_OK
 */
static inline pdsp_status_t pdsp_log_trig(pdsp_logger_t *ps_state,
                                          const pdsp_logger_param_t *ps_param,
                                          pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state && ps_param);
    if (ps_state->b_triggered == PDSP_FALSE)
    {
        if (ps_state->e_trig_mode == PDSP_LOG_MODE_TRIG_FORCE)
        {
            ps_state->b_triggered = PDSP_TRUE;
            ps_state->u23_counter =
                (pdsp_u32_t)((pdsp_f32_t)ps_param->u32_index_max *
                             ps_state->f23_trig_offset);
        }
        else if (ps_state->e_trig_mode == PDSP_LOG_MODE_TRIG_RISE)
        {
            /* todo */
        }
        else if (ps_state->e_trig_mode == PDSP_LOG_MODE_TRIG_FALL)
        {
            /* todo */
        }
    }
    return PDSP_OK;
}

#endif /* PDSP_H */