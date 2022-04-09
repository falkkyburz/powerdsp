/** @file pdsp_types.h
 *
 * @brief Power electronics digital signal processing types.
 * @details Some parts of this library are taken fom the TI C2000 Ware libarary.
 *
 * @author Falk Kyburz
 */

#ifndef PDSP_TYPES_H
#define PDSP_TYPES_H

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
typedef struct pdsp_raw_tag
{
    /** Signal enable. Set to 1.0f, or 0.0 to use override. */
    pdsp_f32_t f32_enable;
    /** Signal override value. */
    pdsp_f32_t f32_ovr;
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

/** Rolling average state memory struct. */
typedef struct pdsp_rolling_avg_tag
{
    /**  */
    pdsp_f32_t f32_sum;
    /**  */
    pdsp_u32_t u32_head;
} pdsp_rolling_avg_t;

/** Rolling rms state memory struct. */
typedef struct pdsp_rolling_rms_tag
{
    /**  */
    pdsp_f32_t f32_sumsq;
    /**  */
    pdsp_u32_t u32_head;
    /**  */
    pdsp_f32_t f32_num;
} pdsp_rolling_rms_t;

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
    pdsp_f32_t f32_amplitde;
    /**  */
    pdsp_f32_t f32_phase;
} pdsp_saw_param_t;

/** Sine generator memory struct */
typedef struct pdsp_saw_tag
{
    /**  */
    pdsp_f32_t f32_x0;
} pdsp_saw_t;

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

#endif /* PDSP_TYPES_H */