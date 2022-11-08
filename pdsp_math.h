/** @file pdsp_math.h
 *
 * @author Falk Kyburz
 * @brief Power electronics digital signal processing math module.
 * @details Only macros and static inline functions are used.
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

#ifndef PDSP_MATH_H
#define PDSP_MATH_H

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include "pdsp_types.h"

/*==============================================================================
 MATH CONSTANTS
 =============================================================================*/

/** @addtogroup floatmath Math
 *  @{
 */

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

/** @} floatmath */

/* ------------------------------------------------------------------------ */
/** @addtogroup fixmath Fixed Point Math
 *  @{
 * @details Module for fixed point math.
 */

/**
 * @defgroup fixtofloat Float to fixed point integer conversion
 * @brief Float to fixed point integer conversion functions.
 * @param f32_in Float input.
 * @return pdsp_i16_t Result in iq16 format.
 * @{
 */
/** @brief Float to q0 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq0(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 1.0f);
}
/** @brief Float to q1 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq1(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 2.0f);
}
/** @brief Float to q2 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq2(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 4.0f);
}
/** @brief Float to q3 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq3(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 8.0f);
}
/** @brief Float to q4 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq4(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 16.0f);
}
/** @brief Float to q5 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq5(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 32.0f);
}
/** @brief Float to q6 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq6(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 64.0f);
}
/** @brief Float to q7 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq7(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 128.0f);
}
/** @brief Float to q8 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq8(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 256.0f);
}
/** @brief Float to q9 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq9(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 512.0f);
}
/** @brief Float to q10 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq10(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 1024.0f);
}
/** @brief Float to q11 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq11(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 2048.0f);
}
/** @brief Float to q12 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq12(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 4096.0f);
}
/** @brief Float to q13 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq13(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 8192.0f);
}
/** @brief Float to q14 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq14(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 16384.0f);
}
/** @brief Float to q15 conversion.*/
pdsp_inline pdsp_i16_t iq16_ftoq15(pdsp_f32_t f32_in)
{
    return (pdsp_i16_t)(f32_in * 32768.0f);
}
/** @}*/

/**
 * @defgroup floatofix Fixed point integer to float conversion.
 * @brief Fixed point integer to float conversion functions.
 * @param i16_in Fixed point integer input.
 * @return pdsp_f32_t Result in float format.
 * @{
 */
/** @brief Q0 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q0tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 1.0f;
}
/** @brief Q1 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q1tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.5f;
}
/** @brief Q2 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q2tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.25f;
}
/** @brief Q3 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q3tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.125f;
}
/** @brief Q4 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q4tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.0625f;
}
/** @brief Q5 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q5tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.03125f;
}
/** @brief Q6 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q6tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.015625f;
}
/** @brief Q7 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q7tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.0078125f;
}
/** @brief Q8 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q8tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.00390625f;
}
/** @brief Q9 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q9tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.001953125f;
}
/** @brief Q10 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q10tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.0009765625f;
}
/** @brief Q11 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q11tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.00048828125f;
}
/** @brief Q12 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q12tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.000244140625f;
}
/** @brief Q13 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q13tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 0.0001220703125f;
}
/** @brief Q14 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q14tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 6.103515625e-05f;
}
/** @brief Q15 to float conversion.*/
pdsp_inline pdsp_f32_t iq16_q15tof(pdsp_i16_t i16_in)
{
    return (pdsp_f32_t)i16_in * 3.0517578125e-05f;
}
/** @}*/

/**
 * @defgroup fixshift Fixed point shifting division.
 * @brief Fixed point integer division by arithmetic shift.
 * @param i16_in Fixed point integer input.
 * @return pdsp_i16_t Multiplication or division output.
 * @{
 */
/** @brief Fixed point division by 2. */
pdsp_inline pdsp_i16_t iq16_div2(pdsp_i16_t iq_in) { return iq_in >> 1; }
/** @brief Fixed point division by 4. */
pdsp_inline pdsp_i16_t iq16_div4(pdsp_i16_t iq_in) { return iq_in >> 2; }
/** @brief Fixed point division by 8. */
pdsp_inline pdsp_i16_t iq16_div8(pdsp_i16_t iq_in) { return iq_in >> 3; }
/** @brief Fixed point division by 16. */
pdsp_inline pdsp_i16_t iq16_div16(pdsp_i16_t iq_in) { return iq_in >> 4; }
/** @brief Fixed point division by 32. */
pdsp_inline pdsp_i16_t iq16_div32(pdsp_i16_t iq_in) { return iq_in >> 5; }
/** @brief Fixed point division by 64. */
pdsp_inline pdsp_i16_t iq16_div64(pdsp_i16_t iq_in) { return iq_in >> 6; }
/** @}*/

/**
 * @defgroup fixmul Fixed point integer multiplication and division.
 * @brief Fixed point integer multiplication and division.
 * @param i16_in0 First fixed point integer input.
 * @param i16_in1 Second fixed point integer input.
 * @return pdsp_i16_t Multiplication output.
 * @{
 */
/** @brief Fixed point multiplication iq0 * iq0 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq0(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1));
}
/** @brief Fixed point multiplication iq1 * iq1 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq1(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 1);
}
/** @brief Fixed point multiplication iq2 * iq2 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq2(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 2);
}
/** @brief Fixed point multiplication iq3 * iq3 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq3(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 3);
}
/** @brief Fixed point multiplication iq4 * iq4 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq4(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 4);
}
/** @brief Fixed point multiplication iq5 * iq5 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq5(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 5);
}
/** @brief Fixed point multiplication iq6 * iq6 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq6(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 6);
}
/** @brief Fixed point multiplication iq7 * iq7 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq7(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 7);
}
/** @brief Fixed point multiplication iq8 * iq8 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq8(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 8);
}
/** @brief Fixed point multiplication iq9 * iq9 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq9(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 9);
}
/** @brief Fixed point multiplication iq10 * iq10 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq10(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 10);
}
/** @brief Fixed point multiplication iq11 * iq11 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq11(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 11);
}
/** @brief Fixed point multiplication iq12 * iq12 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq12(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 12);
}
/** @brief Fixed point multiplication iq13 * iq13 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq13(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 13);
}
/** @brief Fixed point multiplication iq14 * iq14 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq14(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 14);
}
/** @brief Fixed point multiplication iq15 * iq15 without rounding. */
pdsp_inline pdsp_i16_t iq16_mulq15(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) >> 15);
}

/** @brief Fixed point multiplication iq0 * iq0 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq0(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)(((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1));
}
/** @brief Fixed point multiplication iq1 * iq1 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq1(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 1) >> 1);
}
/** @brief Fixed point multiplication iq2 * iq2 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq2(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 2) >> 2);
}
/** @brief Fixed point multiplication iq3 * iq3 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq3(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 4) >> 3);
}
/** @brief Fixed point multiplication iq4 * iq4 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq4(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 8) >> 4);
}
/** @brief Fixed point multiplication iq5 * iq5 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq5(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 16) >> 5);
}
/** @brief Fixed point multiplication iq6 * iq6 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq6(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 32) >> 6);
}
/** @brief Fixed point multiplication iq7 * iq7 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq7(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 64) >> 7);
}
/** @brief Fixed point multiplication iq8 * iq8 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq8(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 128) >> 8);
}
/** @brief Fixed point multiplication iq9 * iq9 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq9(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 256) >> 9);
}
/** @brief Fixed point multiplication iq10 * iq10 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq10(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 512) >> 10);
}
/** @brief Fixed point multiplication iq11 * iq11 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq11(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 1024) >> 11);
}
/** @brief Fixed point multiplication iq12 * iq12 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq12(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 2048) >> 12);
}
/** @brief Fixed point multiplication iq13 * iq13 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq13(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 4096) >> 13);
}
/** @brief Fixed point multiplication iq14 * iq14 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq14(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 8192) >> 14);
}
/** @brief Fixed point multiplication iq15 * iq15 without rounding. */
pdsp_inline pdsp_i16_t iq16_rmulq15(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return (pdsp_i16_t)((((pdsp_i32_t)iq_in0 * (pdsp_i32_t)iq_in1) + 16384) >> 15);
}

/** @brief Fixed point multiplication ( rounding). */
pdsp_inline pdsp_i16_t iq16_rsmulq0(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return 0;
}

/** @brief Fixed point division (no rounding). */
pdsp_inline pdsp_i16_t iq16_divq0(pdsp_i16_t iq_in0, pdsp_i16_t iq_in1)
{
    return 0;
}
/** @}*/

/**
 * @defgroup fixsqrt Fixed point integer square root.
 * @brief Fixed point integer square root.
 * @param i16_in First fixed point integer input.
 * @return pdsp_i16_t Square root output.
 * @{
 */
/** @brief Fixed point square root (no rounding). */
pdsp_inline pdsp_i16_t iq16_sqrtq0(pdsp_i16_t iq_in) { return 0; }
/** @}*/

/**
 * @defgroup fixtrig Fixed point integer trigonometry.
 * @brief Fixed point integer trigonometry.
 * @param i16_in First fixed point integer input.
 * @return pdsp_i16_t Square root output.
 * @{
 */
/** @brief Fixed point sine (no rounding). */
pdsp_inline pdsp_i16_t iq16_sinq0(pdsp_i16_t iq_in) { return 0; }
/** @}*/

/** @} fixmath */

#endif /* PDSP_MATH_H */
