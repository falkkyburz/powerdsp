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

#define PDSP_TRUE 1
#define PDSP_FALSE 0
#define PDSP_ON 1
#define PDSP_OFF 0

/* Defines for math constants */
#define PDSP_PI (3.14159265358f)
#define PDSP_PI_2 (1.57079632679f)
#define PDSP_PI_4 (0.78539816339f)
#define PDSP_2_PI (6.28318530718f)
#define PDSP_2_PI_3 (2.09439510239f)
#define PDSP_4_PI_3 (4.18879020478f)
#define PDSP_SQRT2 (1.41421356237f)
#define PDSP_SQRT1_2 (0.70710678118f)
#define PDSP_ABS_ZERO (-273.15f) 

#define PDSP_NULL ((void *)0)
#define PDSP_NAN (0.0 / 0.0)
#define PDSP_POS_INF (1.0 / 0.0)
#define PDSP_NEG_INF (-1.0 / 0.0)

#if defined(_WIN64)
#define PDSP_HOST
typedef float pdsp_f32_t;
typedef int pdsp_i32_t;
typedef unsigned int pdsp_u32_t;
typedef int pdsp_bool_t;
#elif defined(__TMS320C2000__)
#define PDSP_CPU
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

/** PDSP status */
typedef enum pdsp_status_tag
{
    PDSP_OK,
    PDSP_NOT_OK
} pdsp_status_t;

/** Raw signal processing parameter struct. */
typedef struct pdsp_raw_param_tag
{
    /** Signal conversion gain. */
    pdsp_f32_t f32_gain;
    /** Signal conversion offset. */
    pdsp_f32_t f32_offset;
} pdsp_raw_param_t;

/** Override parameter struct. */
typedef struct pdsp_override_tag
{
    /** Override disable. Normally 0.0f, set to 1.0f to override. */
    pdsp_u32_t u32_enable;
    /** Override value. */
    pdsp_f32_t f32_value;
} pdsp_override_t;

/** Raw signal processing parameter struct. */
typedef struct pdsp_signal_tag
{
    /** Signal actual / current value. */
    pdsp_f32_t f32_act;
    /** Signal average value. */
    pdsp_f32_t f32_avg;
    /** Signal filtered value. */
    pdsp_f32_t f32_flt;
    /** Signal filtered value for can. */
    pdsp_f32_t f32_can;
    /** Minimum value since last clear. */
    pdsp_f32_t f32_min;
    /** Maximum value sincce last clear. */
    pdsp_f32_t f32_max;
    /** Delta (max-min) value since last clear. */
    pdsp_f32_t f32_delta;
} pdsp_signal_t;

/** Simple averaging state memory. */
typedef pdsp_f32_t pdsp_expavg_param_t;
/** Simple averaging state memory. */
typedef pdsp_f32_t pdsp_expavg_t;

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
typedef struct pdsp_rolling_sum_tag
{
    /** Sum of history array (divided by size) */
    pdsp_f32_t f32_sum;
    /** Head nindex of history array. */
    pdsp_u32_t u32_head;
} pdsp_rolling_sum_t;

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
    /**  */
    pdsp_f32_t f32_step;
} pdsp_setp_param_t;

/** Set point state memory struct. */
typedef struct pdsp_setp_tag
{
    /**  */
    pdsp_f32_t f32_x1;
    /**  */
    pdsp_f32_t f32_destination;
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
    /** Used to store history for filtering the decoupled D and Q axis components */
    pdsp_f32_t y[2];
    /** Used to store history for filtering the decoupled D and Q axis components */
    pdsp_f32_t x[2];
    /** Used to store history for filtering the decoupled D and Q axis components */
    pdsp_f32_t w[2];
    /** Used to store history for filtering the decoupled D and Q axis components */
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
    return (f32_out_lo +
            (f32_in - f32_in_lo) * (f32_out_hi - f32_out_lo) / (f32_in_hi - f32_in_lo));
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
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = pdsp_map(
            (pdsp_f32_t)u32_idx,
            0.0f,
            (pdsp_f32_t)u32_size - 1.0f,
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
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = powf(10.0f, pdsp_map(
                                            (pdsp_f32_t)u32_idx,
                                            0.0f,
                                            (pdsp_f32_t)u32_size - 1.0f,
                                            f32_start,
                                            f32_end));
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
    /* Index of higher array element. */
    pdsp_u32_t u32_idx_hi = 1U;
    /* Find the higher array index >= 1. */
    while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
    {
        u32_idx_hi++;
    }
    /* Calculate the output. */
    return pdsp_map(f32_x_in,
                    af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
                    af32_y[u32_idx_hi - 1U], af32_y[u32_idx_hi]);
}

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
    pdsp_f32_t ret[2] = {
        ((f32_raw * ps_param->f32_gain) + ps_param->f32_offset),
        ps_ovr->f32_value};
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
 * @brief Calculate rolling sum.
 * @param ps_state Filter state memory struct.
 * @param af32_history Rolling sum history array.
 * @param u32_size History size.
 * @param f32_state Rolling sum state memory.
 * @param f32_in Rolling sum input signal.
 * @returns pdsp_f32_t Filter ouptut.
 */
static inline pdsp_f32_t pdsp_rolling_sum_run(
    pdsp_rolling_sum_t *ps_state,
    pdsp_f32_t af32_history[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_in)
{
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
    u32_tail = (ps_state->u32_head < (u32_size - 1U)) ? (ps_state->u32_head + 1U) : (0U);
    /* Set the head to tail for the next iteration. */
    ps_state->u32_head = u32_tail;
    /* Subtract the tail value from the state variable for the next iteration. */
    ps_state->f32_sum -= af32_history[u32_tail];
    return f32_out;
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
    pdsp_rolling_sum_t *ps_state,
    pdsp_f32_t af32_history[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_in)
{
    return pdsp_rolling_sum_run(ps_state, af32_history, u32_size, f32_in);
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
    pdsp_rolling_sum_t *ps_state,
    pdsp_f32_t af32_history[],
    pdsp_u32_t u32_size,
    pdsp_f32_t f32_in)
{
    return sqrtf(pdsp_rolling_sum_run(ps_state, af32_history, u32_size, f32_in * f32_in));
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
 * @brief Initialize PI controller.
 * @param ps_state Controller state memory struct.
 * @param ps_param Controller parameter struct.
 * @param f32_out Set controller output value.
 * @returns pdsp_f32_t Controller output.
 */
static inline pdsp_status_t pdsp_pi_init(
    pdsp_pi_t *ps_state,
    const pdsp_pi_param_t *ps_param,
    pdsp_f32_t f32_out)
{
    /* Set integral value to out_value. */
    ps_state->f32_x0 = fmaxf(ps_param->f32_min, fminf(ps_param->f32_max, f32_out));
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
 * @param f32_in Original ramp value.
 * @param ps_param Set point parameter struct.
 * @param f32_phase Positive phase shift in the same unit as out_high / out_low.
 * @returns pdsp_f32_t Waveform output.
 */
static inline pdsp_f32_t pdsp_saw_shift(
    pdsp_f32_t f32_in,
    const pdsp_saw_param_t *ps_param, 
    pdsp_f32_t f32_phase)
{
    pdsp_f32_t af32_out[2] = {f32_in + f32_phase, f32_in + f32_phase - ps_param->f32_out_high};
    /* result of comparison operation is 0 or 1 */
    return af32_out[( af32_out[0] >= ps_param->f32_out_high )];
}


#endif /* PDSP_H */