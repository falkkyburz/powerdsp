/** @file pdsp_assert.h
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

#ifndef PDSP_ASSERT_H
#define PDSP_ASSERT_H

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include "pdsp_types.h"
#include <stdio.h>

/*==============================================================================
 CONFIGURATION
 =============================================================================*/

/*==============================================================================
 PUBLIC TYPES
 =============================================================================*/

/* -------------------------------------------------------------------------- */
/** @addtogroup assert Assert
 *  @{
 */

#ifdef PDSP_ASSERT_OFF
#define PDSP_ASSERT(x)
#endif /* PDSP_ASSERT_OFF */

#ifdef PDSP_ASSERT_PRINT
#define PDSP_ASSERT(b_in)                                                      \
    if (!(b_in))                                                               \
    printf("Assert failed: %s:%i\n", __FILE__, __LINE__)
#endif /* PDSP_ASSERT_PRINT */

#ifdef PDSP_ASSERT_LIST
#define PDSP_ASSERT_LIST_SIZE 10U
typedef struct pdsp_assert_tag
{
    pdsp_char_t *file;
    pdsp_u16_t line;
} pdsp_assert_t;

extern pdsp_assert_t pdsp_assert_list[PDSP_ASSERT_LIST_SIZE];
extern pdsp_u16_t pdsp_assert_idx;
extern void pdsp_assert_list_print(void);

#define PDSP_ASSERT(b_in)                                                      \
    if (!(b_in) && (pdsp_assert_idx < PDSP_ASSERT_LIST_SIZE))                  \
    {                                                                          \
        pdsp_assert_list[pdsp_assert_idx].file = pdsp_assert_filename;         \
        pdsp_assert_list[pdsp_assert_idx].line = __LINE__;                     \
        pdsp_assert_idx++;                                                     \
    }
#endif /* PDSP_ASSERT_LIST */

#ifdef PDSP_ASSERT_BLOCK
#define PDSP_ASSERT(b_in)                                                      \
    if (!(b_in))                                                               \
        while (1)
#endif

/** @} assert */

#endif /* PDSP_ASSERT_H */
