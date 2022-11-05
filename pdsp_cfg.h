/** @file pdsp_cfg.h
 *
 * @author Falk Kyburz
 * @brief Configuration for pdsp module. This file is meant to be edited by the
 * user.
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

#ifndef PDSP_CFG_H
#define PDSP_CFG_H

/*==============================================================================
 USER CONFIGURATION
 =============================================================================*/
/** Uncomment to disable assert */
// #define PDSP_DISABLE_ASSERT

/** Uncomment to define custom assert function. */
#define PDSP_CUSTOM_ASSERT
#include <stdio.h>
#define PDSP_ASSERT(b_in) \
    if (!(b_in)) printf("Assert failed: %s:%i\n", __FILE__, __LINE__)

/** Uncomment to set all functions to static and include them in the psdp.h file. */
// #define PDSP_STATIC_FUNCTIONS

/** Fixed point math integer size*/
#define PDSP_FIXMATH_I32
//#define PDSP_FIXMATH_I16

/** Place PRAGMAs for TMS320 DSP optimization here */
#if defined(__TMS320C2000__)
#pragma CODE_SECTION(pdsp_stopwatch_start, ".TI.ramfunc")
#pragma CODE_SECTION(pdsp_stopwatch_stop, ".TI.ramfunc")
#endif



#endif /* PDSP_CFG_H */
