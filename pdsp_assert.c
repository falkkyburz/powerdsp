/** @file pdsp_assert.c
 *
 * @author Falk Kyburz
 * @brief On board charger power train control module.
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

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp_cfg.h"
#include "pdsp_types.h"
#include "pdsp_assert.h"



/*==============================================================================
 GLOBAL CONSTANTS
 =============================================================================*/
#ifdef PDSP_ASSERT_LIST
pdsp_assert_t pdsp_assert_list[PDSP_ASSERT_LIST_SIZE];
pdsp_u16_t pdsp_assert_idx;
#endif /* PDSP_ASSERT_LIST */

/*==============================================================================
 PRIVATE FUNCTIOS PROTOTYPES
 =============================================================================*/


/*==============================================================================
 PRIVATE FUNCTIO PROTOTYPES
 =============================================================================*/


/*==============================================================================
 GLOBAL FUNCTIOS
 =============================================================================*/

#ifdef PDSP_ASSERT_LIST
void pdsp_assert_list_print(void)
{
    pdsp_i16_t i = 0;
    for (i = 0; i < pdsp_assert_idx; i++)
    {
        printf("   #%i File: %s Line: %i", i, pdsp_assert_list[i].file,
               pdsp_assert_list[i].line);
    }
}
#endif /* PDSP_ASSERT_LIST */
