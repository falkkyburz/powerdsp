/** @file pdsp_types.h
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

#ifndef PDSP_TYPES_H
#define PDSP_TYPES_H

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include <stdbool.h>
#include <stddef.h>

/*==============================================================================
 CONFIGURATION
 =============================================================================*/


/*==============================================================================
 PUBLIC TYPES
 =============================================================================*/

/* ------------------------------------------------------------------------ */
/** @addtogroup types Types
 *  @{
 */

/** True value. */
#define PDSP_TRUE 1
/** False value. */
#define PDSP_FALSE 0

/* Fixed and floating point types */
#if defined(_WIN64)
/** Defined if compiling on host */
#define PDSP_HOST
/** Floating point rounding behavior is set to round to nearest. */
#define F32_TO_INT_ROUNDS_TOWARDS_ZERO
/** 64bit unsigned integer type.  */
typedef unsigned long long pdsp_u64_t;
/** 64bit signed integer type.  */
typedef long long pdsp_i64_t;
/** 32bit floating point type. */
typedef float pdsp_f32_t;
/** 64bit floating point type. */
typedef double pdsp_f64_t;
/** 32bit integer type. */
typedef int pdsp_i32_t;
/** 32bit unsigned integer type.  */
typedef unsigned int pdsp_u32_t;
/** 16bit signed integer type. */
typedef short pdsp_i16_t;
/** 16bit unsigned signed integer type. */
typedef unsigned short pdsp_u16_t;
/** Boolean type. */
typedef bool pdsp_bool_t;
/** Size type. */
typedef size_t pdsp_size_t;
/** Char type. */
typedef char pdsp_char_t;
#elif defined(__TMS320C2000__)
#define PDSP_MCU
#define F32_TO_INT_ROUNDS_TOWARDS_ZERO
typedef unsigned long long pdsp_u64_t;
typedef long long pdsp_i64_t;
typedef float pdsp_f32_t;
typedef double pdsp_f64_t;
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

#endif /* PDSP_TYPES_H */
