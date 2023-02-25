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
#define PDSP_2_PI_INV_F (0.15915494309f)
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
#ifdef PDSP_HOST
/** Floating point minimum function macro */
#define pdsp_minf(x, y) fminf((x), (y))
/** Floating point maximum function macro */
#define pdsp_maxf(x, y) fmaxf((x), (y))
/** Floating point maximum function macro */
#define pdsp_absf(x) fabsf((x))
/** Floating point division */
#define pdsp_divf(x, y) ((x) / (y))
/** Sine function macro */
#define pdsp_sinf(x) sinf((x))
/** Sine function macro PU */
#define pdsp_sinpuf(x) sinf((x) * PDSP_2_PI_INV_F)
/** Cosine function macro */
#define pdsp_cosf(x) cosf((x))
/** Cosine function macro PU */
#define pdsp_cospuf(x) cosf((x) * PDSP_2_PI_INV_F)
/** Square root function */
#define pdsp_sqrtf(x) sqrtf((x))
#else
/* Specific intrinsics for C28x */
#if defined(__TMS320C2000__)
#define pdsp_minf(x, y) __fmin((x), (y))
#define pdsp_maxf(x, y) __fmax((x), (y))
#define pdsp_absf(x, y) fabsf((x), (y))
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
#endif /* PDSP_HOST */

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
#define iq16_ftoq0(f32_in) (pdsp_i16_t)((f32_in)*1.0f)
/** @brief Float to q1 conversion.*/
#define iq16_ftoq1(f32_in) (pdsp_i16_t)((f32_in)*2.0f)
/** @brief Float to q2 conversion.*/
#define iq16_ftoq2(f32_in) (pdsp_i16_t)((f32_in)*4.0f)
/** @brief Float to q3 conversion.*/
#define iq16_ftoq3(f32_in) (pdsp_i16_t)((f32_in)*8.0f)
/** @brief Float to q4 conversion.*/
#define iq16_ftoq4(f32_in) (pdsp_i16_t)((f32_in)*16.0f)
/** @brief Float to q5 conversion.*/
#define iq16_ftoq5(f32_in) (pdsp_i16_t)((f32_in)*32.0f)
/** @brief Float to q6 conversion.*/
#define iq16_ftoq6(f32_in) (pdsp_i16_t)((f32_in)*64.0f)
/** @brief Float to q7 conversion.*/
#define iq16_ftoq7(f32_in) (pdsp_i16_t)((f32_in)*128.0f)
/** @brief Float to q8 conversion.*/
#define iq16_ftoq8(f32_in) (pdsp_i16_t)((f32_in)*256.0f)
/** @brief Float to q9 conversion.*/
#define iq16_ftoq9(f32_in) (pdsp_i16_t)((f32_in)*512.0f)
/** @brief Float to q10 conversion.*/
#define iq16_ftoq10(f32_in) (pdsp_i16_t)((f32_in)*1024.0f)
/** @brief Float to q11 conversion.*/
#define iq16_ftoq11(f32_in) (pdsp_i16_t)((f32_in)*2048.0f)
/** @brief Float to q12 conversion.*/
#define iq16_ftoq12(f32_in) (pdsp_i16_t)((f32_in)*4096.0f)
/** @brief Float to q13 conversion.*/
#define iq16_ftoq13(f32_in) (pdsp_i16_t)((f32_in)*8192.0f)
/** @brief Float to q14 conversion.*/
#define iq16_ftoq14(f32_in) (pdsp_i16_t)((f32_in)*16384.0f)
/** @brief Float to q15 conversion.*/
#define iq16_ftoq15(f32_in) (pdsp_i16_t)((f32_in)*32768.0f)

/** @brief Double to q0 conversion.*/
#define iq32_ftoq0(f64_in) (pdsp_i32_t)((f64_in)*1.0l)
/** @brief Double to q1 conversion.*/
#define iq32_ftoq1(f64_in) (pdsp_i32_t)((f64_in)*2.0l)
/** @brief Double to q2 conversion.*/
#define iq32_ftoq2(f64_in) (pdsp_i32_t)((f64_in)*4.0l)
/** @brief Double to q3 conversion.*/
#define iq32_ftoq3(f64_in) (pdsp_i32_t)((f64_in)*8.0l)
/** @brief Double to q4 conversion.*/
#define iq32_ftoq4(f64_in) (pdsp_i32_t)((f64_in)*16.0l)
/** @brief Double to q5 conversion.*/
#define iq32_ftoq5(f64_in) (pdsp_i32_t)((f64_in)*32.0l)
/** @brief Double to q6 conversion.*/
#define iq32_ftoq6(f64_in) (pdsp_i32_t)((f64_in)*64.0l)
/** @brief Double to q7 conversion.*/
#define iq32_ftoq7(f64_in) (pdsp_i32_t)((f64_in)*128.0l)
/** @brief Double to q8 conversion.*/
#define iq32_ftoq8(f64_in) (pdsp_i32_t)((f64_in)*256.0l)
/** @brief Double to q9 conversion.*/
#define iq32_ftoq9(f64_in) (pdsp_i32_t)((f64_in)*512.0l)
/** @brief Double to q10 conversion.*/
#define iq32_ftoq10(f64_in) (pdsp_i32_t)((f64_in)*1024.0l)
/** @brief Double to q11 conversion.*/
#define iq32_ftoq11(f64_in) (pdsp_i32_t)((f64_in)*2048.0l)
/** @brief Double to q12 conversion.*/
#define iq32_ftoq12(f64_in) (pdsp_i32_t)((f64_in)*4096.0l)
/** @brief Double to q13 conversion.*/
#define iq32_ftoq13(f64_in) (pdsp_i32_t)((f64_in)*8192.0l)
/** @brief Double to q14 conversion.*/
#define iq32_ftoq14(f64_in) (pdsp_i32_t)((f64_in)*16384.0l)
/** @brief Double to q15 conversion.*/
#define iq32_ftoq15(f64_in) (pdsp_i32_t)((f64_in)*32768.0l)
/** @brief Double to q16 conversion.*/
#define iq32_ftoq16(f64_in) (pdsp_i32_t)((f64_in)*65536.0l)
/** @brief Double to q17 conversion.*/
#define iq32_ftoq17(f64_in) (pdsp_i32_t)((f64_in)*131072.0l)
/** @brief Double to q18 conversion.*/
#define iq32_ftoq18(f64_in) (pdsp_i32_t)((f64_in)*262144.0l)
/** @brief Double to q19 conversion.*/
#define iq32_ftoq19(f64_in) (pdsp_i32_t)((f64_in)*524288.0l)
/** @brief Double to q20 conversion.*/
#define iq32_ftoq20(f64_in) (pdsp_i32_t)((f64_in)*1048576.0l)
/** @brief Double to q21 conversion.*/
#define iq32_ftoq21(f64_in) (pdsp_i32_t)((f64_in)*2097152.0l)
/** @brief Double to q22 conversion.*/
#define iq32_ftoq22(f64_in) (pdsp_i32_t)((f64_in)*4194304.0l)
/** @brief Double to q23 conversion.*/
#define iq32_ftoq23(f64_in) (pdsp_i32_t)((f64_in)*8388608.0l)
/** @brief Double to q24 conversion.*/
#define iq32_ftoq24(f64_in) (pdsp_i32_t)((f64_in)*16777216.0l)
/** @brief Double to q25 conversion.*/
#define iq32_ftoq25(f64_in) (pdsp_i32_t)((f64_in)*33554432.0l)
/** @brief Double to q26 conversion.*/
#define iq32_ftoq26(f64_in) (pdsp_i32_t)((f64_in)*67108864.0l)
/** @brief Double to q27 conversion.*/
#define iq32_ftoq27(f64_in) (pdsp_i32_t)((f64_in)*134217728.0l)
/** @brief Double to q28 conversion.*/
#define iq32_ftoq28(f64_in) (pdsp_i32_t)((f64_in)*268435456.0l)
/** @brief Double to q29 conversion.*/
#define iq32_ftoq29(f64_in) (pdsp_i32_t)((f64_in)*536870912.0l)
/** @brief Double to q30 conversion.*/
#define iq32_ftoq30(f64_in) (pdsp_i32_t)((f64_in)*1073741824.0l)
/** @}*/

/**
 * @defgroup floatofix Fixed point integer to float conversion.
 * @brief Fixed point integer to float conversion functions.
 * @param i16_in Fixed point integer input.
 * @return Result in float format.
 * @{
 */
/** @brief Q0 to float conversion.*/
#define iq16_q0tof(i16_in) ((pdsp_f32_t)(i16_in)*1.0f)
/** @brief Q1 to float conversion.*/
#define iq16_q1tof(i16_in) ((pdsp_f32_t)(i16_in)*0.5f)
/** @brief Q2 to float conversion.*/
#define iq16_q2tof(i16_in) ((pdsp_f32_t)(i16_in)*0.25f)
/** @brief Q3 to float conversion.*/
#define iq16_q3tof(i16_in) ((pdsp_f32_t)(i16_in)*0.125f)
/** @brief Q4 to float conversion.*/
#define iq16_q4tof(i16_in) ((pdsp_f32_t)(i16_in)*0.0625f)
/** @brief Q5 to float conversion.*/
#define iq16_q5tof(i16_in) ((pdsp_f32_t)(i16_in)*0.03125f)
/** @brief Q6 to float conversion.*/
#define iq16_q6tof(i16_in) ((pdsp_f32_t)(i16_in)*0.015625f)
/** @brief Q7 to float conversion.*/
#define iq16_q7tof(i16_in) ((pdsp_f32_t)(i16_in)*0.0078125f)
/** @brief Q8 to float conversion.*/
#define iq16_q8tof(i16_in) ((pdsp_f32_t)(i16_in)*0.00390625f)
/** @brief Q9 to float conversion.*/
#define iq16_q9tof(i16_in) ((pdsp_f32_t)(i16_in)*0.001953125f)
/** @brief Q10 to float conversion.*/
#define iq16_q10tof(i16_in) ((pdsp_f32_t)(i16_in)*0.0009765625f)
/** @brief Q11 to float conversion.*/
#define iq16_q11tof(i16_in) ((pdsp_f32_t)(i16_in)*0.00048828125f)
/** @brief Q12 to float conversion.*/
#define iq16_q12tof(i16_in) ((pdsp_f32_t)(i16_in)*0.000244140625f)
/** @brief Q13 to float conversion.*/
#define iq16_q13tof(i16_in) ((pdsp_f32_t)(i16_in)*0.0001220703125f)
/** @brief Q14 to float conversion.*/
#define iq16_q14tof(i16_in) ((pdsp_f32_t)(i16_in)*6.103515625e-05f)
/** @brief Q15 to float conversion.*/
#define iq16_q15tof(i16_in) ((pdsp_f32_t)(i16_in)*3.0517578125e-05f)

/** @brief Q0 to float conversion.*/
#define iq32_q0tof(i32_in) ((pdsp_f64_t)(i32_in)*1.0l)
/** @brief Q1 to float conversion.*/
#define iq32_q1tof(i32_in) ((pdsp_f64_t)(i32_in)*0.5l)
/** @brief Q2 to float conversion.*/
#define iq32_q2tof(i32_in) ((pdsp_f64_t)(i32_in)*0.25l)
/** @brief Q3 to float conversion.*/
#define iq32_q3tof(i32_in) ((pdsp_f64_t)(i32_in)*0.125l)
/** @brief Q4 to float conversion.*/
#define iq32_q4tof(i32_in) ((pdsp_f64_t)(i32_in)*0.0625l)
/** @brief Q5 to float conversion.*/
#define iq32_q5tof(i32_in) ((pdsp_f64_t)(i32_in)*0.03125l)
/** @brief Q6 to float conversion.*/
#define iq32_q6tof(i32_in) ((pdsp_f64_t)(i32_in)*0.015625l)
/** @brief Q7 to float conversion.*/
#define iq32_q7tof(i32_in) ((pdsp_f64_t)(i32_in)*0.0078125l)
/** @brief Q8 to float conversion.*/
#define iq32_q8tof(i32_in) ((pdsp_f64_t)(i32_in)*0.00390625l)
/** @brief Q9 to float conversion.*/
#define iq32_q9tof(i32_in) ((pdsp_f64_t)(i32_in)*0.001953125l)
/** @brief Q10 to float conversion.*/
#define iq32_q10tof(i32_in) ((pdsp_f64_t)(i32_in)*0.0009765625l)
/** @brief Q11 to float conversion.*/
#define iq32_q11tof(i32_in) ((pdsp_f64_t)(i32_in)*0.00048828125l)
/** @brief Q12 to float conversion.*/
#define iq32_q12tof(i32_in) ((pdsp_f64_t)(i32_in)*0.000244140625l)
/** @brief Q13 to float conversion.*/
#define iq32_q13tof(i32_in) ((pdsp_f64_t)(i32_in)*0.0001220703125l)
/** @brief Q14 to float conversion.*/
#define iq32_q14tof(i32_in) ((pdsp_f64_t)(i32_in)*6.103515625e-05l)
/** @brief Q15 to float conversion.*/
#define iq32_q15tof(i32_in) ((pdsp_f64_t)(i32_in)*3.0517578125e-05l)
/** @brief Q16 to float conversion.*/
#define iq32_q16tof(i32_in) ((pdsp_f64_t)(i32_in)*1.52587890625e-05l)
/** @brief Q17 to float conversion.*/
#define iq32_q17tof(i32_in) ((pdsp_f64_t)(i32_in)*7.62939453125e-06l)
/** @brief Q18 to float conversion.*/
#define iq32_q18tof(i32_in) ((pdsp_f64_t)(i32_in)*3.814697265625e-06l)
/** @brief Q19 to float conversion.*/
#define iq32_q19tof(i32_in) ((pdsp_f64_t)(i32_in)*1.9073486328125e-06l)
/** @brief Q20 to float conversion.*/
#define iq32_q20tof(i32_in) ((pdsp_f64_t)(i32_in)*9.5367431640625e-07l)
/** @brief Q21 to float conversion.*/
#define iq32_q21tof(i32_in) ((pdsp_f64_t)(i32_in)*4.76837158203125e-07l)
/** @brief Q22 to float conversion.*/
#define iq32_q22tof(i32_in) ((pdsp_f64_t)(i32_in)*2.384185791015625e-07l)
/** @brief Q23 to float conversion.*/
#define iq32_q23tof(i32_in) ((pdsp_f64_t)(i32_in)*1.1920928955078125e-07l)
/** @brief Q24 to float conversion.*/
#define iq32_q24tof(i32_in) ((pdsp_f64_t)(i32_in)*5.960464477539063e-08l)
/** @brief Q25 to float conversion.*/
#define iq32_q25tof(i32_in) ((pdsp_f64_t)(i32_in)*2.9802322387695312e-08l)
/** @brief Q26 to float conversion.*/
#define iq32_q26tof(i32_in) ((pdsp_f64_t)(i32_in)*1.4901161193847656e-08l)
/** @brief Q27 to float conversion.*/
#define iq32_q27tof(i32_in) ((pdsp_f64_t)(i32_in)*7.450580596923828e-09l)
/** @brief Q28 to float conversion.*/
#define iq32_q28tof(i32_in) ((pdsp_f64_t)(i32_in)*3.725290298461914e-09l)
/** @brief Q29 to float conversion.*/
#define iq32_q29tof(i32_in) ((pdsp_f64_t)(i32_in)*1.862645149230957e-09l)
/** @brief Q30 to float conversion.*/
#define iq32_q30tof(i32_in) ((pdsp_f64_t)(i32_in)*9.313225746154785e-10l)

/** @}*/

/**
 * @defgroup fixshift Fixed point shifting division.
 * @brief Fixed point integer division by arithmetic shift.
 * @param iq_in Fixed point integer input.
 * @return Division output.
 * @{
 */
/** @brief Fixed point division by 2. */
#define iq16_div2(iq_in) ((iq_in) >> 1)
/** @brief Fixed point division by 4. */
#define iq16_div4(iq_in) ((iq_in) >> 2)
/** @brief Fixed point division by 8. */
#define iq16_div8(iq_in) ((iq_in) >> 3)
/** @brief Fixed point division by 16. */
#define iq16_div16(iq_in) ((iq_in) >> 4)
/** @brief Fixed point division by 32. */
#define iq16_div32(iq_in) ((iq_in) >> 5)
/** @brief Fixed point division by 64. */
#define iq16_div64(iq_in) ((iq_in) >> 6)

/** @brief Fixed point division by 2. */
#define iq32_div2(iq_in) ((iq_in) >> 1)
/** @brief Fixed point division by 4. */
#define iq32_div4(iq_in) ((iq_in) >> 2)
/** @brief Fixed point division by 8. */
#define iq32_div8(iq_in) ((iq_in) >> 3)
/** @brief Fixed point division by 16. */
#define iq32_div16(iq_in) ((iq_in) >> 4)
/** @brief Fixed point division by 32. */
#define iq32_div32(iq_in) ((iq_in) >> 5)
/** @brief Fixed point division by 64. */
#define iq32_div64(iq_in) ((iq_in) >> 6)
/** @brief Fixed point division by 64. */
#define iq32_div128(iq_in) ((iq_in) >> 7)
/** @brief Fixed point division by 64. */
#define iq32_div256(iq_in) ((iq_in) >> 8)
/** @}*/

/**
 * @defgroup fixmul Fixed point integer multiplication and division.
 * @brief Fixed point integer multiplication and division.
 * @param iq_in0 First fixed point integer input.
 * @param iq_in1 Second fixed point integer input.
 * @return Multiplication output.
 * @{
 */
#ifdef PDSP_HOST
/** @brief IQ16 Fixed point multiplication iq0 * iq0 without rounding. */
#define iq16_mulq0(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1))))
/** @brief IQ16 Fixed point multiplication iq1 * iq1 without rounding. */
#define iq16_mulq1(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 1))
/** @brief IQ16 Fixed point multiplication iq2 * iq2 without rounding. */
#define iq16_mulq2(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 2))
/** @brief IQ16 Fixed point multiplication iq3 * iq3 without rounding. */
#define iq16_mulq3(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 3))
/** @brief IQ16 Fixed point multiplication iq4 * iq4 without rounding. */
#define iq16_mulq4(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 4))
/** @brief IQ16 Fixed point multiplication iq5 * iq5 without rounding. */
#define iq16_mulq5(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 5))
/** @brief IQ16 Fixed point multiplication iq6 * iq6 without rounding. */
#define iq16_mulq6(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 6))
/** @brief IQ16 Fixed point multiplication iq7 * iq7 without rounding. */
#define iq16_mulq7(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 7))
/** @brief IQ16 Fixed point multiplication iq8 * iq8 without rounding. */
#define iq16_mulq8(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 8))
/** @brief IQ16 Fixed point multiplication iq9 * iq9 without rounding. */
#define iq16_mulq9(iq_in0, iq_in1)                                             \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 9))
/** @brief IQ16 Fixed point multiplication iq10 * iq10 without rounding. */
#define iq16_mulq10(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 10))
/** @brief IQ16 Fixed point multiplication iq11 * iq11 without rounding. */
#define iq16_mulq11(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 11))
/** @brief IQ16 Fixed point multiplication iq12 * iq12 without rounding. */
#define iq16_mulq12(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 12))
/** @brief IQ16 Fixed point multiplication iq13 * iq13 without rounding. */
#define iq16_mulq13(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 13))
/** @brief IQ16 Fixed point multiplication iq14 * iq14 without rounding. */
#define iq16_mulq14(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 14))
/** @brief IQ16 Fixed point multiplication iq15 * iq15 without rounding. */
#define iq16_mulq15(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) >> 15))

/** @brief IQ16 Fixed point multiplication iq0 * iq0 with rounding. */
#define iq16_rmulq0(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)(((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1))))
/** @brief IQ16 Fixed point multiplication iq1 * iq1 with rounding. */
#define iq16_rmulq1(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 1) >> 1))
/** @brief IQ16 Fixed point multiplication iq2 * iq2 with rounding. */
#define iq16_rmulq2(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 2) >> 2))
/** @brief IQ16 Fixed point multiplication iq3 * iq3 with rounding. */
#define iq16_rmulq3(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 4) >> 3))
/** @brief IQ16 Fixed point multiplication iq4 * iq4 with rounding. */
#define iq16_rmulq4(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 8) >> 4))
/** @brief IQ16 Fixed point multiplication iq5 * iq5 with rounding. */
#define iq16_rmulq5(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 16) >> 5))
/** @brief IQ16 Fixed point multiplication iq6 * iq6 with rounding. */
#define iq16_rmulq6(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 32) >> 6))
/** @brief IQ16 Fixed point multiplication iq7 * iq7 with rounding. */
#define iq16_rmulq7(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 64) >> 7))
/** @brief IQ16 Fixed point multiplication iq8 * iq8 with rounding. */
#define iq16_rmulq8(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 128) >> 8))
/** @brief IQ16 Fixed point multiplication iq9 * iq9 with rounding. */
#define iq16_rmulq9(iq_in0, iq_in1)                                            \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 256) >> 9))
/** @brief IQ16 Fixed point multiplication iq10 * iq10 with rounding. */
#define iq16_rmulq10(iq_in0, iq_in1)                                           \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 512) >> 10))
/** @brief IQ16 Fixed point multiplication iq11 * iq11 with rounding. */
#define iq16_rmulq11(iq_in0, iq_in1)                                           \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 1024) >> 11))
/** @brief IQ16 Fixed point multiplication iq12 * iq12 with rounding. */
#define iq16_rmulq12(iq_in0, iq_in1)                                           \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 2048) >> 12))
/** @brief IQ16 Fixed point multiplication iq13 * iq13 with rounding. */
#define iq16_rmulq13(iq_in0, iq_in1)                                           \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 4096) >> 13))
/** @brief IQ16 Fixed point multiplication iq14 * iq14 with rounding. */
#define iq16_rmulq14(iq_in0, iq_in1)                                           \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 8192) >> 14))
/** @brief IQ16 Fixed point multiplication iq15 * iq15 with rounding. */
#define iq16_rmulq15(iq_in0, iq_in1)                                           \
    ((pdsp_i16_t)((((pdsp_i32_t)(iq_in0) * (pdsp_i32_t)(iq_in1)) + 16384) >>   \
                  15))

/** @brief IQ32 Fixed point multiplication iq0 * iq0 without rounding. */
#define iq32_mulq0(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1))))
/** @brief IQ32 Fixed point multiplication iq1 * iq1 without rounding. */
#define iq32_mulq1(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 1))
/** @brief IQ32 Fixed point multiplication iq2 * iq2 without rounding. */
#define iq32_mulq2(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 2))
/** @brief IQ32 Fixed point multiplication iq3 * iq3 without rounding. */
#define iq32_mulq3(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 3))
/** @brief IQ32 Fixed point multiplication iq4 * iq4 without rounding. */
#define iq32_mulq4(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 4))
/** @brief IQ32 Fixed point multiplication iq5 * iq5 without rounding. */
#define iq32_mulq5(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 5))
/** @brief IQ32 Fixed point multiplication iq6 * iq6 without rounding. */
#define iq32_mulq6(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 6))
/** @brief IQ32 Fixed point multiplication iq7 * iq7 without rounding. */
#define iq32_mulq7(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 7))
/** @brief IQ32 Fixed point multiplication iq8 * iq8 without rounding. */
#define iq32_mulq8(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 8))
/** @brief IQ32 Fixed point multiplication iq9 * iq9 without rounding. */
#define iq32_mulq9(iq_in0, iq_in1)                                             \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 9))
/** @brief IQ32 Fixed point multiplication iq10 * iq10 without rounding. */
#define iq32_mulq10(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 10))
/** @brief IQ32 Fixed point multiplication iq11 * iq11 without rounding. */
#define iq32_mulq11(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 11))
/** @brief IQ32 Fixed point multiplication iq12 * iq12 without rounding. */
#define iq32_mulq12(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 12))
/** @brief IQ32 Fixed point multiplication iq13 * iq13 without rounding. */
#define iq32_mulq13(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 13))
/** @brief IQ32 Fixed point multiplication iq14 * iq14 without rounding. */
#define iq32_mulq14(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 14))
/** @brief IQ32 Fixed point multiplication iq15 * iq15 without rounding. */
#define iq32_mulq15(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 15))
/** @brief IQ32 Fixed point multiplication iq16 * iq16 without rounding. */
#define iq32_mulq16(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 16))
/** @brief IQ32 Fixed point multiplication iq17 * iq17 without rounding. */
#define iq32_mulq17(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 17))
/** @brief IQ32 Fixed point multiplication iq18 * iq18 without rounding. */
#define iq32_mulq18(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 18))
/** @brief IQ32 Fixed point multiplication iq19 * iq19 without rounding. */
#define iq32_mulq19(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 19))
/** @brief IQ32 Fixed point multiplication iq20 * iq20 without rounding. */
#define iq32_mulq20(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 20))
/** @brief IQ32 Fixed point multiplication iq21 * iq21 without rounding. */
#define iq32_mulq21(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 21))
/** @brief IQ32 Fixed point multiplication iq22 * iq22 without rounding. */
#define iq32_mulq22(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 22))
/** @brief IQ32 Fixed point multiplication iq23 * iq23 without rounding. */
#define iq32_mulq23(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 23))
/** @brief IQ32 Fixed point multiplication iq24 * iq24 without rounding. */
#define iq32_mulq24(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 24))
/** @brief IQ32 Fixed point multiplication iq25 * iq25 without rounding. */
#define iq32_mulq25(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 25))
/** @brief IQ32 Fixed point multiplication iq26 * iq26 without rounding. */
#define iq32_mulq26(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 26))
/** @brief IQ32 Fixed point multiplication iq27 * iq27 without rounding. */
#define iq32_mulq27(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 27))
/** @brief IQ32 Fixed point multiplication iq28 * iq28 without rounding. */
#define iq32_mulq28(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 28))
/** @brief IQ32 Fixed point multiplication iq29 * iq29 without rounding. */
#define iq32_mulq29(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 29))
/** @brief IQ32 Fixed point multiplication iq30 * iq30 without rounding. */
#define iq32_mulq30(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) >> 30))

/** @brief IQ32 Fixed point multiplication iq0 * iq0 with rounding. */
#define iq32_rmulq0(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)(((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1))))
/** @brief IQ32 Fixed point multiplication iq1 * iq1 with rounding. */
#define iq32_rmulq1(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 1) >> 1))
/** @brief IQ32 Fixed point multiplication iq2 * iq2 with rounding. */
#define iq32_rmulq2(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 2) >> 2))
/** @brief IQ32 Fixed point multiplication iq3 * iq3 with rounding. */
#define iq32_rmulq3(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 4) >> 3))
/** @brief IQ32 Fixed point multiplication iq4 * iq4 with rounding. */
#define iq32_rmulq4(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 8) >> 4))
/** @brief IQ32 Fixed point multiplication iq5 * iq5 with rounding. */
#define iq32_rmulq5(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 16) >> 5))
/** @brief IQ32 Fixed point multiplication iq6 * iq6 with rounding. */
#define iq32_rmulq6(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 32) >> 6))
/** @brief IQ32 Fixed point multiplication iq7 * iq7 with rounding. */
#define iq32_rmulq7(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 64) >> 7))
/** @brief IQ32 Fixed point multiplication iq8 * iq8 with rounding. */
#define iq32_rmulq8(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 128) >> 8))
/** @brief IQ32 Fixed point multiplication iq9 * iq9 with rounding. */
#define iq32_rmulq9(iq_in0, iq_in1)                                            \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 256) >> 9))
/** @brief IQ32 Fixed point multiplication iq10 * iq10 with rounding. */
#define iq32_rmulq10(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 512) >> 10))
/** @brief IQ32 Fixed point multiplication iq11 * iq11 with rounding. */
#define iq32_rmulq11(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 1024) >> 11))
/** @brief IQ32 Fixed point multiplication iq12 * iq12 with rounding. */
#define iq32_rmulq12(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 2048) >> 12))
/** @brief IQ32 Fixed point multiplication iq13 * iq13 with rounding. */
#define iq32_rmulq13(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 4096) >> 13))
/** @brief IQ32 Fixed point multiplication iq14 * iq14 with rounding. */
#define iq32_rmulq14(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 8192) >> 14))
/** @brief IQ32 Fixed point multiplication iq15 * iq15 with rounding. */
#define iq32_rmulq15(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 16384) >>   \
                  15))
/** @brief IQ32 Fixed point multiplication iq16 * iq16 with rounding. */
#define iq32_rmulq16(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 32768) >>   \
                  16))
/** @brief IQ32 Fixed point multiplication iq17 * iq17 with rounding. */
#define iq32_rmulq17(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 65536) >>   \
                  17))
/** @brief IQ32 Fixed point multiplication iq18 * iq19 with rounding. */
#define iq32_rmulq18(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 131072) >>  \
                  18))
/** @brief IQ32 Fixed point multiplication iq19 * iq19 with rounding. */
#define iq32_rmulq19(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 262144) >>  \
                  19))
/** @brief IQ32 Fixed point multiplication iq20 * iq20 with rounding. */
#define iq32_rmulq20(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 524288) >>  \
                  20))
/** @brief IQ32 Fixed point multiplication iq21 * iq21 with rounding. */
#define iq32_rmulq21(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 1048576) >> \
                  21))
/** @brief IQ32 Fixed point multiplication iq22 * iq22 with rounding. */
#define iq32_rmulq22(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 2097152) >> \
                  22))
/** @brief IQ32 Fixed point multiplication iq23 * iq23 with rounding. */
#define iq32_rmulq23(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 4194304) >> \
                  23))
/** @brief IQ32 Fixed point multiplication iq24 * iq24 with rounding. */
#define iq32_rmulq24(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) + 8388608) >> \
                  24))
/** @brief IQ32 Fixed point multiplication iq25 * iq25 with rounding. */
#define iq32_rmulq25(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) +             \
                   16777216) >>                                                \
                  25))
/** @brief IQ32 Fixed point multiplication iq26 * iq26 with rounding. */
#define iq32_rmulq26(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) +             \
                   33554432) >>                                                \
                  26))
/** @brief IQ32 Fixed point multiplication iq27 * iq27 with rounding. */
#define iq32_rmulq27(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) +             \
                   67108864) >>                                                \
                  27))
/** @brief IQ32 Fixed point multiplication iq28 * iq28 with rounding. */
#define iq32_rmulq28(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) +             \
                   134217728) >>                                               \
                  28))
/** @brief IQ32 Fixed point multiplication iq29 * iq29 with rounding. */
#define iq32_rmulq29(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) +             \
                   268435456) >>                                               \
                  29))
/** @brief IQ32 Fixed point multiplication iq30 * iq30 with rounding. */
#define iq32_rmulq30(iq_in0, iq_in1)                                           \
    ((pdsp_i32_t)((((pdsp_i64_t)(iq_in0) * (pdsp_i64_t)(iq_in1)) +             \
                   536870912) >>                                               \
                  30))
#else
#if defined(__TMS320C2000__)
/* Specific intrinsics for C28x */

#elif defined(__TMS320C28XX_CLA__)
/* Specific intrinsics for CLA */

#elif defined(__arm__)
/* Specific intrinsics for ARM */

#endif
#endif /* PDSP_HOST */

/** @}*/

/**
 * @defgroup fixsqrt Fixed point integer square root.
 * @brief Fixed point integer square root.
 * @param i16_in First fixed point integer input.
 * @return pdsp_i16_t Square root output.
 * @{
 */
/** @brief Fixed point square root (no rounding). */
#define iq16_sqrtq0(iq_in) 0
/** @}*/

/**
 * @defgroup fixtrig Fixed point integer trigonometry.
 * @brief Fixed point integer trigonometry.
 * @param i16_in First fixed point integer input.
 * @return pdsp_i16_t Square root output.
 * @{
 */
/** @brief Fixed point sine (no rounding). */
#define iq16_sinq0(iq_in) 0
/** @}*/

/** @} fixmath */

#endif /* PDSP_MATH_H */
