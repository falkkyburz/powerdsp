/** @file pdsp_test.c
 *
 * @author Falk Kyburz
 * @brief Examples and tests.
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

#include "pdsp.h"
#include "pdsp_inline.h"
#include "pdsp_macro.h"
#include <stdio.h>
#include <string.h>
#include <time.h>

void test_assert_true(void)
{
    printf("-- void test_assert_true(void) --\n");
    PDSP_ASSERT(PDSP_TRUE);
    // PDSP_ASSERT(PDSP_FALSE);
}

void test_stopwatch(void)
{
    printf("-- void test_stopwatch(void) --\n");
    pdsp_stopwatch_var_t watch_var = {0};
    pdsp_stopwatch_t watch = {.ps_var = &watch_var, .u32_hw_max = 1000};
    pdsp_u32_t out;
    pdsp_stopwatch_start(&watch, 0U);
    out = pdsp_stopwatch_stop(&watch, 555U);
    PDSP_ASSERT(out == 555);
    pdsp_stopwatch_start(&watch, 889);
    out = pdsp_stopwatch_stop(&watch, 444U);
    PDSP_ASSERT(out == 555);
    // macro version
    pdsp_macro_stopwatch_t mwatch = {.u32_time_mem = 0, .u32_hw_max = 1000};
    pdsp_macro_stopwatch_start(mwatch, 0U);
    out = pdsp_macro_stopwatch_stop(mwatch, 555U);
    PDSP_ASSERT(out == 555);
    pdsp_macro_stopwatch_start(mwatch, 889);
    out = pdsp_macro_stopwatch_stop(mwatch, 444U);
    PDSP_ASSERT(out == 555);
}

enum funcs_e
{
    FUNC_NOP,
    FUNC_START,
    FUNC_STOP,
    FUNC_SIZE
};
pdsp_i16_t func_nop(void) { return 0; }
pdsp_i16_t func_start_converter(void) { return 1; }
pdsp_i16_t func_stop_converter(void) { return 2; }

void test_call_i16_func(void)
{
    printf("-- void test_call_i16_func(void) --\n");
    const pdsp_pi16_func_t flist[FUNC_SIZE] = {func_nop, func_start_converter,
                                               func_stop_converter};
    pdsp_i16_t ret;
    pdsp_call_i16_func(flist, FUNC_SIZE, FUNC_START, &ret);
    PDSP_ASSERT(ret == 1);
    pdsp_call_i16_func(flist, FUNC_SIZE, FUNC_STOP, &ret);
    PDSP_ASSERT(ret == 2);
}

void test_i16_to_string(void)
{
    printf("-- void test_i16_to_string(void) --\n");
    pdsp_char_t out[16] = {0};
    pdsp_char_t *pos = &out[0];
    *pos++ = ':';
    pos = pdsp_i16_to_string(6666, pos);
    *pos++ = ',';
    pos = pdsp_i16_to_string(-1111, pos);
    *pos++ = ':';
    PDSP_ASSERT(strcmp(out, ":  6666, -1111:") == 0);
}

void test_u16_to_hex(void)
{
    printf("-- void test_u16_to_hex(void) --\n");
    pdsp_char_t out[16] = {0};
    pdsp_char_t *pos = &out[0];
    *pos++ = ':';
    pos = pdsp_u16_to_hex(0x1337, pos, PDSP_FALSE);
    *pos++ = ',';
    pos = pdsp_u16_to_hex(0xB00B, pos, PDSP_FALSE);
    *pos++ = ',';
    pos = pdsp_u16_to_hex(0xB, pos, PDSP_FALSE);
    *pos++ = ',';
    pos = pdsp_u16_to_hex(0xBB, pos, PDSP_FALSE);
    *pos++ = ',';
    pos = pdsp_u16_to_hex(0xB0B, pos, PDSP_FALSE);
    *pos++ = ':';
    PDSP_ASSERT(strcmp(out, ":1337,B00B,B,BB,B0B:") == 0);
}

void test_u64_to_hex(void)
{
    printf("-- void test_u64_to_hex(void) --\n");
    pdsp_char_t out[64] = {0};
    pdsp_char_t *pos = &out[0];
    *pos++ = ':';
    pos = pdsp_u64_to_hex(0x0123456789ABCDEF, pos);
    *pos++ = ',';
    pos = pdsp_u64_to_hex(0xAFFAFFAFFAFFAFFA, pos);
    *pos++ = ':';
    PDSP_ASSERT(strcmp(out, ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:") == 0);
}

void test_map(void)
{
    printf("-- void test_map(void) --\n");
    PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 2.0f) == 1.5f);
    PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 1.0f, 1.0f, 2.0f) == 1.5f);
    PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 1.0f) == 1.0f);
    PDSP_ASSERT(pdsp_map(-1.0f, 0.0f, 1.0f, 0.0f, 1.0f) == -1.0f);
    // macro version
    PDSP_ASSERT(pdsp_macro_map(1.5f, 1.0f, 2.0f, 1.0f, 2.0f) == 1.5f);
    PDSP_ASSERT(pdsp_macro_map(1.5f, 1.0f, 1.0f, 1.0f, 2.0f) == 1.5f);
    PDSP_ASSERT(pdsp_macro_map(1.5f, 1.0f, 2.0f, 1.0f, 1.0f) == 1.0f);
    PDSP_ASSERT(pdsp_macro_map(-1.0f, 0.0f, 1.0f, 0.0f, 1.0f) == -1.0f);
}

void test_map_idx(void)
{
    printf("-- void test_map_idx(void) --\n");
    PDSP_ASSERT((pdsp_u16_t)(1.5f) == 1U);
    PDSP_ASSERT((pdsp_u16_t)(1.6f) == 1U);
    PDSP_ASSERT((pdsp_u16_t)(1.4f) == 1U);
    PDSP_ASSERT(pdsp_map_idx(1.5f, 1.0f, 2.0f, 10.0) == 5);
    PDSP_ASSERT(pdsp_map_idx(-1.5f, 1.0f, 2.0f, 10.0) == 0);
    PDSP_ASSERT(pdsp_map_idx(3.0f, 1.0f, 2.0f, 10.0) == 10);
}

void test_interpolate_2d(void)
{
    printf("-- void pdsp_interpolate_2d(void) --\n");
    const pdsp_f32_t xarr[5] = {0.0f, 1.0f, 2.0f, 3.0f, 4.0f};
    const pdsp_f32_t yarr[5] = {0.0f, 1.0f, 2.0f, 3.0f, 4.0f};
    const pdsp_f32_t yarrn[5] = {0.0f, -1.0f, -2.0f, -3.0f, -4.0f};
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, -0.5f) == -0.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 0.5f) == 0.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 1.5f) == 1.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 2.5f) == 2.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 3.5f) == 3.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 4.5f) == 4.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, -0.5f) == 0.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 0.5f) == -0.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 1.5f) == -1.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 2.5f) == -2.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 3.5f) == -3.5f);
    PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 4.5f) == -4.5f);
}

void test_array_set(void)
{
    printf("-- void test_array_set(void) --\n");
    pdsp_f32_t af32[5] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
    pdsp_i16_t ai16[5] = {1, 2, 3, 4, 5};
    pdsp_array_set_f32(af32, 4, 0.0f);
    pdsp_array_set_i16(ai16, 4, 0);
    PDSP_ASSERT(af32[0] == 0.0f);
    PDSP_ASSERT(af32[1] == 0.0f);
    PDSP_ASSERT(af32[2] == 0.0f);
    PDSP_ASSERT(af32[3] == 0.0f);
    PDSP_ASSERT(af32[4] == 5.0f);
    PDSP_ASSERT(ai16[0] == 0);
    PDSP_ASSERT(ai16[1] == 0);
    PDSP_ASSERT(ai16[2] == 0);
    PDSP_ASSERT(ai16[3] == 0);
    PDSP_ASSERT(ai16[4] == 5);
    pdsp_array_set_f32(af32, 4, 1.0f);
    pdsp_array_set_i16(ai16, 4, 1);
    PDSP_ASSERT(af32[0] == 1.0f);
    PDSP_ASSERT(af32[1] == 1.0f);
    PDSP_ASSERT(af32[2] == 1.0f);
    PDSP_ASSERT(af32[3] == 1.0f);
    PDSP_ASSERT(af32[4] == 5.0f);
    PDSP_ASSERT(ai16[0] == 1);
    PDSP_ASSERT(ai16[1] == 1);
    PDSP_ASSERT(ai16[2] == 1);
    PDSP_ASSERT(ai16[3] == 1);
    PDSP_ASSERT(ai16[4] == 5);
}

pdsp_f32_t app_f32(pdsp_f32_t in) { return in * 2.0f; }
pdsp_i16_t app_i16(pdsp_i16_t in) { return in * 2; }

void test_array_apply(void)
{
    printf("-- void test_array_apply(void) --\n");
    const pdsp_f32_t af32[5] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
    pdsp_f32_t af32_out[5] = {0};
    const pdsp_i16_t ai16[5] = {1, 2, 3, 4, 5};
    pdsp_i16_t ai16_out[5] = {0};
    pdsp_array_apply_f32(af32, af32_out, 4, app_f32);
    pdsp_array_apply_i16(ai16, ai16_out, 4, app_i16);
    PDSP_ASSERT(af32_out[0] == 2.0f);
    PDSP_ASSERT(af32_out[1] == 4.0f);
    PDSP_ASSERT(af32_out[2] == 6.0f);
    PDSP_ASSERT(af32_out[3] == 8.0f);
    PDSP_ASSERT(af32_out[4] == 0.0f);
    PDSP_ASSERT(af32_out[0] == 2);
    PDSP_ASSERT(af32_out[1] == 4);
    PDSP_ASSERT(af32_out[2] == 6);
    PDSP_ASSERT(af32_out[3] == 8);
    PDSP_ASSERT(af32_out[4] == 0);
}

void test_array_linlogspace(void)
{
    printf("-- void test_array_linlogspace(void) --\n");
    pdsp_f32_t af32_out[5] = {0};
    pdsp_array_linspace_f32(af32_out, 4, 10.0f, 40.0f);
    PDSP_ASSERT(af32_out[0] == 10.0f);
    PDSP_ASSERT(af32_out[1] == 20.0f);
    PDSP_ASSERT(af32_out[2] == 30.0f);
    PDSP_ASSERT(af32_out[3] == 40.0f);
    PDSP_ASSERT(af32_out[4] == 0.0f);
    pdsp_array_linspace_f32(af32_out, 5, 10.0f, 50.0f);
    PDSP_ASSERT(af32_out[0] == 10.0f);
    PDSP_ASSERT(af32_out[1] == 20.0f);
    PDSP_ASSERT(af32_out[2] == 30.0f);
    PDSP_ASSERT(af32_out[3] == 40.0f);
    PDSP_ASSERT(af32_out[4] == 50.0f);
    pdsp_array_logspace_f32(af32_out, 5, 1.0f, 2.0f);
    PDSP_ASSERT(af32_out[0] == powf(10.0f, 1.0f));
    PDSP_ASSERT(af32_out[1] == powf(10.0f, 1.25f));
    PDSP_ASSERT(af32_out[2] == powf(10.0f, 1.5f));
    PDSP_ASSERT(af32_out[3] == powf(10.0f, 1.75f));
    PDSP_ASSERT(af32_out[4] == powf(10.0f, 2.0f));
}

void test_hysteresis_value(void)
{
    printf("-- void test_hysteresis_value(void) --\n");
    pdsp_hyst_var_t hyst_var = {0};
    pdsp_hyst_t hyst = {
        .ps_var = &hyst_var, .f32_low = -1.0f, .f32_high = 1.0f};
    pdsp_hysteresis_value_clear(&hyst);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -1.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 1.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -1.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
    // macro version
    pdsp_macro_hyst_t mhyst = {
        .b_state = PDSP_FALSE, .f32_low = -1.0f, .f32_high = 1.0f};
    pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
    pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
    pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
    pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
    pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
    pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
    pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
    pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
    pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
    pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
    pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
    pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
    PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
}

void test_hysteresis_list(void)
{
    printf("-- void test_hysteresis_list(void) --\n");
    pdsp_f32_t af32_steps[4] = {0.0f, 1.0f, 2.0f, 3.0f};
    pdsp_hyst_list_var_t hyst_var = {0};
    pdsp_hyst_list_t hyst = {.ps_var = &hyst_var,
                             .f32_hyst = 0.2f,
                             .af32_thres = af32_steps,
                             .u16_size = 4};
    pdsp_hysteresis_list_clear(&hyst);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 0U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.0f) == 0U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.3f) == 1U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.0f) == 1U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 2.0f) == 1U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 2.3f) == 2U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 4.0f) == 2U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 1U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 0U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.3f) == 1U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.7f) == 0U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 1U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.7f) == 1U);
}

void test_debounce(void)
{
    printf("-- void test_debounce(void) --\n");
    pdsp_debounce_var_t hyst_var = {0};
    pdsp_debounce_t hyst = {.ps_var = &hyst_var,
                            .f32_t_step = 1.0f,
                            .f32_t_high = 2.0f,
                            .f32_t_low = 2.0f};
    pdsp_debounce_clear(&hyst);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
}

void test_robust(void)
{
    printf("-- void test_robust(void) --\n");
    pdsp_f32_t af32_thres_up[4] = {1.0f, 2.0f, 2.5f, 3.0f};
    pdsp_f32_t af32_thres_dn[4] = {0.0f, 0.5f, 1.5f, 2.0f};
    pdsp_f32_t af32_time_up[4] = {2.0f, 2.0f, 2.0f, 2.0f};
    pdsp_f32_t af32_time_dn[4] = {2.0f, 2.0f, 2.0f, 2.0f};
    pdsp_robust_var_t rbst_var = {0};
    pdsp_robust_t rbst = {.ps_var = &rbst_var,
                          .f32_t_step = 1.0f,
                          .af32_thres_up = af32_thres_up,
                          .af32_thres_dn = af32_thres_dn,
                          .af32_time_up = af32_time_up,
                          .af32_time_dn = af32_time_dn,
                          .u16_size = 4U};
    pdsp_robust_clear(&rbst);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
    pdsp_robust_clear(&rbst);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    pdsp_robust_clear(&rbst);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
    PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
    pdsp_robust_clear(&rbst);
    af32_time_up[0] = 0.0;
    af32_time_up[1] = 0.0;
    af32_time_up[2] = 0.0;
    af32_time_up[3] = 0.0;
    af32_time_dn[0] = 0.0;
    af32_time_dn[1] = 0.0;
    af32_time_dn[2] = 0.0;
    af32_time_dn[3] = 0.0;
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
    af32_time_up[0] = 0.0;
    af32_time_up[1] = 1.0;
    af32_time_up[2] = 2.0;
    af32_time_up[3] = 0.0;
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
    PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
}

void test_status(void)
{
    printf("-- void test_status(void) --\n");
    pdsp_u32_t u32_status = 0U;
    pdsp_u32_t *pu32_status = &u32_status;
    PDSP_ASSERT(u32_status == 0x0);
    pdsp_mask_set(pu32_status, 0x1);
    PDSP_ASSERT(u32_status == 0x1U);
    PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x1, 0x0) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x0, 0xFFFFFFFE) == PDSP_TRUE);
    pdsp_mask_clear(pu32_status, 0xFFFFFFFF);
    PDSP_ASSERT(u32_status == 0x0);
    pdsp_mask_set(pu32_status, 0x1000);
    PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x1000, 0x0) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x0, 0xFFFFEFFF) == PDSP_TRUE);
}

void test_mean(void)
{
    printf("-- void test_mean(void) --\n");
    pdsp_u16_t m4[4] = {1, 2, 3, 4};
    pdsp_u16_t m8[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 0.5f) == 1.5f);
    PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 1.0f) == 1.0f);
    PDSP_ASSERT(pdsp_mean4_u16(m4) == 2.5f);
    PDSP_ASSERT(pdsp_mean8_u16(m8) == 4.5f);
    // macro version
    PDSP_ASSERT(pdsp_macro_mean2w_f32(1.0f, 2.0f, 0.5f) == 1.5f);
    PDSP_ASSERT(pdsp_macro_mean2w_f32(1.0f, 2.0f, 1.0f) == 1.0f);
    PDSP_ASSERT(pdsp_macro_mean4_u16(1, 2, 3, 4) == 2.5f);
    PDSP_ASSERT(pdsp_macro_mean8_u16(1, 2, 3, 4, 5, 6, 7, 8) == 4.5f);
}

void test_queue(void)
{
    printf("-- void test_queue(void) --\n");
    pdsp_char_t ch[4] = {0};
    pdsp_queue_var_t var = {0};
    pdsp_queue_t data = {.ps_var = &var, .pav_data = (void *)ch, .i16_size = 4};
    pdsp_queue_init(&data);
    PDSP_ASSERT(var.i16_count == 0);
    PDSP_ASSERT(pdsp_queue_is_not_full(&data));
    pdsp_queue_push_ch(&data, 't');
    PDSP_ASSERT(var.i16_count == 1);
    PDSP_ASSERT(ch[0] == 't');
    pdsp_queue_push_ch(&data, 'e');
    pdsp_queue_push_ch(&data, 's');
    PDSP_ASSERT(pdsp_queue_is_not_full(&data));
    pdsp_queue_push_ch(&data, 't');
    PDSP_ASSERT(!pdsp_queue_is_not_full(&data));
    PDSP_ASSERT(ch[3] == 't');
    PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 't');
    PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 'e');
    PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 's');
    PDSP_ASSERT(pdsp_queue_is_not_empty(&data));
    PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 't');
    PDSP_ASSERT(!pdsp_queue_is_not_empty(&data));
    // macro version
    pdsp_macro_queue_t mdata = {
        .i16_head = 2, .i16_tail = 4, .i16_count = 4, .i16_size = 4};
    pdsp_macro_queue_init(mdata, 4);
    PDSP_ASSERT(mdata.i16_count == 0);
    PDSP_ASSERT(pdsp_macro_queue_is_not_full(mdata));
    pdsp_macro_queue_push(mdata, ch, 't');
    PDSP_ASSERT(mdata.i16_count == 1);
    PDSP_ASSERT(ch[0] == 't');
    pdsp_macro_queue_push(mdata, ch, 'e');
    pdsp_macro_queue_push(mdata, ch, 's');
    PDSP_ASSERT(pdsp_macro_queue_is_not_full(mdata));
    pdsp_macro_queue_push(mdata, ch, 't');
    PDSP_ASSERT(!pdsp_macro_queue_is_not_full(mdata));
    PDSP_ASSERT(ch[3] == 't');
    pdsp_char_t temp;
    temp = pdsp_macro_queue_pop(mdata, ch);
    PDSP_ASSERT(temp == 't');
    temp = pdsp_macro_queue_pop(mdata, ch);
    PDSP_ASSERT(temp == 'e');
    temp = pdsp_macro_queue_pop(mdata, ch);
    PDSP_ASSERT(temp == 's');
    PDSP_ASSERT(pdsp_macro_queue_is_not_empty(mdata));
    temp = pdsp_macro_queue_pop(mdata, ch);
    PDSP_ASSERT(temp == 't');
    PDSP_ASSERT(!pdsp_macro_queue_is_not_empty(mdata));
}

void test_ain(void)
{
    printf("-- void test_ain(void) --\n");
    pdsp_ain_var_t vin_ain = {.e_ovr_mode = PDSP_OVERRIDE_OFF,
                              .f32_ovr_value = 0.0f,
                              .f32_gain = 2.0f,
                              .f32_offset = 10.0f};
    pdsp_f32_t vin;
    vin = pdsp_ain(&vin_ain, 1.0f);
    PDSP_ASSERT(vin == 12.0f);
    vin = pdsp_ain(&vin_ain, -2.0f);
    PDSP_ASSERT(vin == 6.0f);
    pdsp_ain_ovr_enable(&vin_ain, 33.0f);
    vin = pdsp_ain(&vin_ain, -2.0f);
    PDSP_ASSERT(vin == 33.0f);
    pdsp_ain_ovr_disable(&vin_ain);
    vin = pdsp_ain(&vin_ain, -2.0f);
    PDSP_ASSERT(vin == 6.0f);
    pdsp_ain_ovr_inject(&vin_ain, 4.0f);
    vin = pdsp_ain(&vin_ain, -2.0f);
    PDSP_ASSERT(vin == 10.0f);
}

void test_ain_calibrate(void)
{
    printf("-- void test_ain_calibrate(void) --\n");
    pdsp_ain_var_t vin_ain = {.e_ovr_mode = PDSP_OVERRIDE_OFF,
                              .f32_ovr_value = 0.0f,
                              .f32_gain = 2.0f,
                              .f32_offset = 10.0f};
    pdsp_f32_t vin, new_gain, new_offset;
    vin = pdsp_ain(&vin_ain, 1.0f);
    PDSP_ASSERT(vin == 12.0f);
    new_gain = pdsp_ain_calibrate_gain(vin_ain.f32_gain, 10.0f, 20.0f);
    PDSP_ASSERT(new_gain == 2.0f * 10.0f / 20.0f);
    new_offset = pdsp_ain_calibrate_gain(vin_ain.f32_offset, 0.0f, 10.0f);
    PDSP_ASSERT(new_offset == 0.0f);
}

void test_minmax(void)
{
    printf("-- void test_minmax(void) --\n");
    pdsp_minmax_var_t mm_var = {0};
    pdsp_minmax_clear(&mm_var);
    pdsp_minmax(&mm_var, 0.0f);
    PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 0.0f) &&
                (mm_var.f32_delta == 0.0f));
    pdsp_minmax(&mm_var, 10.0f);
    PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 10.0f) &&
                (mm_var.f32_delta == 10.0f));
    pdsp_minmax(&mm_var, -10.0f);
    PDSP_ASSERT((mm_var.f32_min == -10.0f) && (mm_var.f32_max == 10.0f) &&
                (mm_var.f32_delta == 20.0f));
}

void test_expavg(void)
{
    printf("-- void test_expavg(void) --\n");
    pdsp_expavg_var_t expavg_var;
    const pdsp_expavg_t expavg = {.ps_var = &expavg_var, .f32_tau = 0.5f};
    pdsp_f32_t out;
    pdsp_expavg_clear(&expavg);
    PDSP_ASSERT(expavg_var.f32_x1 == 0.0f);
    out = pdsp_expavg(&expavg, 1.0);
    PDSP_ASSERT(out == 0.5f);
    out = pdsp_expavg(&expavg, 1.0);
    PDSP_ASSERT(out == 0.75f);
    for (int i = 0; i < 100; i++)
        pdsp_expavg(&expavg, 1.0);
    out = pdsp_expavg(&expavg, 1.0);
    PDSP_ASSERT(out >= 0.999f);
    /* Plot the exponential average function. */
    FILE *fp = fopen("./test/test_expavg.csv", "w");
    if (fp != NULL)
    {
        int i;
        pdsp_expavg_var_t expavg_var_csv;
        pdsp_expavg_t expavg_csv = {.ps_var = &expavg_var_csv, .f32_tau = 0.0f};
        /* Set tau to 1/(2*pi*1)=0.159s */
        pdsp_expavg_c2d(&expavg_csv, 0.01f, 1.0f);
        pdsp_expavg_clear(&expavg_csv);
        fprintf(fp, "X, Y\n");
        fprintf(fp, "%f, %f\n", 0.0f, 0.0f);
        for (i = 1; i < 100; i++)
        {
            fprintf(fp, "%f, %f\n", (pdsp_f32_t)i * 0.01f,
                    pdsp_expavg(&expavg_csv, 1.0f));
        }
        fclose(fp);
    }
    else
    {
        printf("fopen failed: %s\n", strerror(errno));
    }
}

void test_df2x(void)
{
    pdsp_1p1z_inv_t p1 = {.f32_b1 = 1.0f, .f32_b0 = 2.0f, .f32_a1 = 1.0f};
    pdsp_2p2z_inv_t p2 = {.f32_b2 = 1.0f,
                          .f32_b1 = 2.0f,
                          .f32_b0 = 3.0f,
                          .f32_a2 = 1.0f,
                          .f32_a1 = 2.0f};
    pdsp_3p3z_inv_t p3 = {.f32_b3 = 1.0f,
                          .f32_b2 = 2.0f,
                          .f32_b1 = 3.0f,
                          .f32_b0 = 4.0f,
                          .f32_a3 = 1.0f,
                          .f32_a2 = 2.0f,
                          .f32_a1 = 3.0f};
    pdsp_1p1z_var_t f1 = {0};
    pdsp_2p2z_var_t f2 = {0};
    pdsp_3p3z_var_t f3 = {0};
    pdsp_df21_clear(&f1);
    PDSP_ASSERT(f1.f32_out == 0.0f);
    PDSP_ASSERT(f1.f32_x1 == 0.0f);
    pdsp_df22_clear(&f2);
    PDSP_ASSERT(f2.f32_out == 0.0f);
    PDSP_ASSERT(f2.f32_x1 == 0.0f);
    PDSP_ASSERT(f2.f32_x2 == 0.0f);
    pdsp_df23_clear(&f3);
    PDSP_ASSERT(f3.f32_out == 0.0f);
    PDSP_ASSERT(f3.f32_x1 == 0.0f);
    PDSP_ASSERT(f3.f32_x2 == 0.0f);
    PDSP_ASSERT(f3.f32_x3 == 0.0f);
    pdsp_df21(&p1, &f1, 1.0f);
    PDSP_ASSERT(f1.f32_out == 2.0f);
    PDSP_ASSERT(f1.f32_x1 == 3.0f);
    pdsp_df21(&p1, &f1, 10.0f);
    PDSP_ASSERT(f1.f32_out == 23.0f);
    PDSP_ASSERT(f1.f32_x1 == 33.0f);
    pdsp_df22(&p2, &f2, 1.0f);
    PDSP_ASSERT(f2.f32_out == 3.0f);
    PDSP_ASSERT(f2.f32_x1 == 8.0f);
    PDSP_ASSERT(f2.f32_x2 == 4.0f);
    pdsp_df22(&p2, &f2, 10.0f);
    PDSP_ASSERT(f2.f32_out == 38.0f);
    PDSP_ASSERT(f2.f32_x1 == 100.0f);
    PDSP_ASSERT(f2.f32_x2 == 48.0f);
    pdsp_df23(&p3, &f3, 1.0f);
    PDSP_ASSERT(f3.f32_out == 4.0f);
    PDSP_ASSERT(f3.f32_x1 == 15.0f);
    PDSP_ASSERT(f3.f32_x2 == 10.0f);
    PDSP_ASSERT(f3.f32_x3 == 5.0f);
    pdsp_df23(&p3, &f3, 10.0f);
    PDSP_ASSERT(f3.f32_out == 55.0f);
    PDSP_ASSERT(f3.f32_x1 == 205.0f);
    PDSP_ASSERT(f3.f32_x2 == 135.0f);
    PDSP_ASSERT(f3.f32_x3 == 65.0f);
}

void test_med3(void)
{
    printf("-- void test_med3(void) --\n");
    pdsp_med3_var_t med3_var;
    pdsp_f32_t out;
    pdsp_med3_clear(&med3_var);
    out = pdsp_med3(&med3_var, 10.0);
    PDSP_ASSERT(out == 0.0f);
    out = pdsp_med3(&med3_var, 5.0);
    PDSP_ASSERT(out == 5.0f);
    out = pdsp_med3(&med3_var, 20.0);
    PDSP_ASSERT(out == 10.0f);
    out = pdsp_med3(&med3_var, 20.0);
    out = pdsp_med3(&med3_var, 20.0);
    PDSP_ASSERT(out == 20.0f);
}

void test_rollsum(void)
{
    printf("-- void test_rollsum(void) --\n");
    pdsp_f32_t out;
    pdsp_f32_t f32_history[4] = {1, 2, 3, 4};
    pdsp_queue_var_t queue_var = {0};
    pdsp_rollsum_var_t roll_var = {0};
    const pdsp_queue_t queue = {
        .ps_var = &queue_var, .pav_data = (void *)f32_history, .i16_size = 4};
    const pdsp_rollsum_t roll = {.ps_var = &roll_var, .ps_queue = &queue};
    pdsp_rollsum_init(&roll, 4);
    PDSP_ASSERT((f32_history[0] == 0.0f) && (f32_history[1] == 0.0f) &&
                (f32_history[2] == 0.0f) && (f32_history[3] == 0.0f));
    out = pdsp_rollsum(&roll, 10.0);
    PDSP_ASSERT(out == 10.0);
    out = pdsp_rollsum(&roll, 1.0);
    PDSP_ASSERT(out == 11.0);
    out = pdsp_rollsum(&roll, 3.0);
    PDSP_ASSERT(out == 14.0);
    out = pdsp_rollsum(&roll, 6.0);
    PDSP_ASSERT(out == 20.0);
    out = pdsp_rollsum(&roll, 0.0);
    PDSP_ASSERT(out == 10.0);

    pdsp_rollsum_init(&roll, 2);
    out = pdsp_rollsum(&roll, 10.0);
    PDSP_ASSERT(out == 10.0);
    out = pdsp_rollsum(&roll, 1.0);
    PDSP_ASSERT(out == 11.0);
    out = pdsp_rollsum(&roll, 1.0);
    PDSP_ASSERT(out == 2.0);
}

void test_rollavg(void)
{
    printf("-- void test_rollavg(void) --\n");
    pdsp_f32_t out;
    pdsp_f32_t f32_history[4] = {0};
    pdsp_queue_var_t queue_var = {0};
    pdsp_rollsum_var_t roll_var = {0};
    const pdsp_queue_t queue = {
        .ps_var = &queue_var, .pav_data = (void *)f32_history, .i16_size = 4};
    const pdsp_rollsum_t roll = {.ps_var = &roll_var, .ps_queue = &queue};
    pdsp_rollavg_init(&roll, 4);
    pdsp_rollavg_init(&roll, 5);
    out = pdsp_rollavg(&roll, 1.0f);
    PDSP_ASSERT(out == 0.25f);
    out = pdsp_rollavg(&roll, 1.0f);
    PDSP_ASSERT(out == 0.5f);
    out = pdsp_rollavg(&roll, 1.0f);
    PDSP_ASSERT(out == 0.75f);
    out = pdsp_rollavg(&roll, 1.0f);
    PDSP_ASSERT(out == 1.0f);
}

void test_rollrms(void)
{
    printf("-- void test_rollrms(void) --\n");
    pdsp_f32_t out;
    pdsp_f32_t f32_history[4] = {0};
    pdsp_queue_var_t queue_var = {0};
    pdsp_rollsum_var_t roll_var = {0};
    const pdsp_queue_t queue = {
        .ps_var = &queue_var, .pav_data = (void *)f32_history, .i16_size = 4};
    const pdsp_rollsum_t roll = {.ps_var = &roll_var, .ps_queue = &queue};
    pdsp_rollrms_init(&roll, 4);
    out = pdsp_rollrms(&roll, 1.0f);
    PDSP_ASSERT(out == 0.5f);
}

void test_delay(void)
{
    printf("-- void test_delay(void) --\n");
    pdsp_delayrf_bool_var_t delay_var = {0};
    pdsp_delayrf_bool_t delay = {.ps_var = &delay_var,
                               .u16_rising_delay_count = 2U,
                               .u16_falling_delay_count = 3U};
    pdsp_delayrf_bool_clear(&delay);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
    pdsp_delayrf_bool_t delay0 = {.ps_var = &delay_var,
                                .u16_rising_delay_count = 0U,
                                .u16_falling_delay_count = 0U};
    pdsp_delayrf_bool_clear(&delay0);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_TRUE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_TRUE) == PDSP_TRUE);
}

void test_pi(void)
{
    printf("-- void test_pi(void) --\n");
    pdsp_pi_var_t pi1_var = {2, 3, 33.0f, 66.0f};
    pdsp_pi_err_param_t pi1_param[2] = {
        {.f32_kp = 1.0f, .f32_ki = 2.0f, .f32_ks = 2.0f, .f32_ka = 1.0f},
        {.f32_kp = 1.5f, .f32_ki = 2.5f, .f32_ks = 2.5f, .f32_ka = 1.0f}};
    pdsp_pi_t pi1 = {.pas_param = pi1_param,
                     .i16_param_size = 2,
                     .ps_var = &pi1_var,
                     .f32_max = 5.0f,
                     .f32_min = -5.0f};
    pdsp_pi_clear(&pi1);
    PDSP_ASSERT(pi1_var.i16_active == 0);
    PDSP_ASSERT(pi1_var.i16_param_idx == 0);
    PDSP_ASSERT(pi1_var.f32_x0 == 0.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 3.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == 2.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == 6.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == -2.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, 0.0f) == 4.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == 1.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == 2.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -1.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == 0.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -3.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == -2.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -5.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == -4.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
    PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -5.0f);
    PDSP_ASSERT(pi1_var.f32_x0 == -6.0f);
    PDSP_ASSERT(pi1_var.f32_x1 == 2.0f);

    pdsp_f32_t f32_error2[2] = {0};
    pdsp_pi_var_t pi2_var = {2, 3, 33.0f, 66.0f};
    pdsp_pi_err_param_t pi2_param[4] = {
        {.f32_kp = 1.0f, .f32_ki = 2.0f, .f32_ks = 2.0f, .f32_ka = 1.0f}, // 0
        {.f32_kp = 1.5f, .f32_ki = 2.5f, .f32_ks = 2.5f, .f32_ka = 1.0f}, // 1
        {.f32_kp = 2.0f, .f32_ki = 1.0f, .f32_ks = 2.0f, .f32_ka = 1.0f},
        {.f32_kp = 2.5f, .f32_ki = 1.5f, .f32_ks = 2.5f, .f32_ka = 1.0f}};
    pdsp_pi_t pi2 = {.pas_param = pi2_param,
                     .i16_param_size = 2,
                     .ps_var = &pi2_var,
                     .f32_max = 10.0f,
                     .f32_min = -10.0f};
    pdsp_pi_clear(&pi2);
    PDSP_ASSERT(pi2_var.i16_active == 0);
    PDSP_ASSERT(pi2_var.i16_param_idx == 0);
    PDSP_ASSERT(pi2_var.f32_x0 == 0.0f);
    PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
    f32_error2[0] = 0.0f;
    f32_error2[1] = 0.0f;
    PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 0.0f);
    PDSP_ASSERT(pi2_var.i16_active == 0);
    PDSP_ASSERT(pi2_var.f32_x0 == 0.0f);
    PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
    f32_error2[0] = 1.0f;
    f32_error2[1] = 2.0f;
    PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 3.0f);
    PDSP_ASSERT(pi2_var.i16_active == 0);
    PDSP_ASSERT(pi2_var.f32_x0 == 2.0f);
    PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
    f32_error2[0] = 2.0f;
    f32_error2[1] = 1.0f;
    PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 6.0f);
    PDSP_ASSERT(pi2_var.i16_active == 1);
    PDSP_ASSERT(pi2_var.f32_x0 == 4.5f);
    PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
    f32_error2[0] = 2.0f;
    f32_error2[1] = -1.0f;
    PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 0.5f);
    PDSP_ASSERT(pi2_var.i16_active == 1);
    PDSP_ASSERT(pi2_var.f32_x0 == 2.0f);
    PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
}

void test_bit_read_write(void)
{
    printf("-- void test_bit_read_write(void) --\n");
    pdsp_u16_t u16_data = 0;
    pdsp_u32_t u32_data = 0;
    pdsp_bit_write_u16(&u16_data, 4U, PDSP_TRUE);
    pdsp_bit_write_u16(&u16_data, 8U, PDSP_TRUE);
    pdsp_bit_write_u16(&u16_data, 12U, PDSP_TRUE);
    PDSP_ASSERT(u16_data == (16 + 256 + 4096));
    PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 0U) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 4U) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 8U) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 12U) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 15U) == PDSP_FALSE);
    pdsp_bit_write_u16(&u16_data, 4U, PDSP_FALSE);
    pdsp_bit_write_u16(&u16_data, 8U, PDSP_FALSE);
    pdsp_bit_write_u16(&u16_data, 12U, PDSP_FALSE);
    PDSP_ASSERT(u16_data == 0);
    pdsp_bit_write_u32(&u32_data, 4U, PDSP_TRUE);
    pdsp_bit_write_u32(&u32_data, 8U, PDSP_TRUE);
    pdsp_bit_write_u32(&u32_data, 12U, PDSP_TRUE);
    pdsp_bit_write_u32(&u32_data, 24U, PDSP_TRUE);
    PDSP_ASSERT(u32_data == (16 + 256 + 4096 + 16777216));
    PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 0U) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 4U) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 8U) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 12U) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 24U) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 31U) == PDSP_FALSE);
    pdsp_bit_write_u32(&u32_data, 4U, PDSP_FALSE);
    pdsp_bit_write_u32(&u32_data, 8U, PDSP_FALSE);
    pdsp_bit_write_u32(&u32_data, 12U, PDSP_FALSE);
    pdsp_bit_write_u32(&u32_data, 24U, PDSP_FALSE);
    PDSP_ASSERT(u32_data == 0);
}

void test_signal_read_write(void)
{
    printf("-- void test_signal_read_write(void) --\n");
    pdsp_u64_t mem = 0;
    const pdsp_signal_prop_t sig1 = {
        .f32_gain = 2.0f, .f32_offset = 1.0f, .u16_start = 0, .u16_length = 8};
    const pdsp_signal_prop_t sig2 = {
        .f32_gain = 2.0f, .f32_offset = 1.0f, .u16_start = 8, .u16_length = 8};
    const pdsp_signal_prop_t sig3 = {
        .f32_gain = NAN, .f32_offset = NAN, .u16_start = 63, .u16_length = 1};
    pdsp_signal_write_f32(&sig1, &mem, 11.0);
    PDSP_ASSERT(mem == 23);
    PDSP_ASSERT(pdsp_signal_read_u16(&sig1, &mem) == 23);
    PDSP_ASSERT(pdsp_signal_read_f32(&sig1, &mem) == 11.0f);
    pdsp_signal_write_f32(&sig2, &mem, 11.0);
    PDSP_ASSERT(mem == 23 * 256 + 23);
    PDSP_ASSERT(pdsp_signal_read_u16(&sig2, &mem) == 23);
    PDSP_ASSERT(pdsp_signal_read_f32(&sig2, &mem) == 11.0f);
    mem = 0;
    pdsp_signal_write_u16(&sig3, &mem, 1);
    PDSP_ASSERT(mem == 0x8000000000000000);
    PDSP_ASSERT(pdsp_signal_read_u16(&sig3, &mem) == 1);
}

void test_fault(void)
{
    printf("-- void test_fault(void) --\n");
    pdsp_u32_t flt_status = 0;
    pdsp_u32_t flt_ena = 0;
    pdsp_fault_var_t flt_var = {0};
    pdsp_fault_t flt = {.ps_var = &flt_var,
                        .f32_time_step = 1.0f,
                        .f32_time_trip = 2.0f,
                        .f32_time_rec = 2.0f,
                        .f32_val_trip = 1.5f,
                        .f32_val_rec = 0.5f,
                        .u16_rec_limit = 1U,
                        .u32_status = &flt_status,
                        .u32_status_mask = 1U,
                        .u32_ena = &flt_ena,
                        .u32_ena_mask = 1};
    flt_ena = 1;
    pdsp_fault_init(&flt);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_status == 0);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_status == 0);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_status == 0);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_status == 1);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_status == 1);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_status == 1);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_status == 0);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_status == 0);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_status == 1);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_status == 1);

    pdsp_fault_init(&flt);
    flt_ena = 0;
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    flt_ena = 1;
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_status == 1);
    flt_ena = 0;
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_status == 0);
}

void test_fixmath(void)
{
    printf("-- void test_fixmath(void) --\n");
    PDSP_ASSERT(iq16_div2(2) == 1);
    PDSP_ASSERT(iq16_div4(4) == 1);
    PDSP_ASSERT(iq16_div8(8) == 1);
    PDSP_ASSERT(iq16_div16(16) == 1);
    PDSP_ASSERT(iq16_div32(32) == 1);
    PDSP_ASSERT(iq16_div64(64) == 1);
    PDSP_ASSERT(iq16_div2(-2) == -1);
    PDSP_ASSERT(iq16_div4(-4) == -1);
    PDSP_ASSERT(iq16_div8(-8) == -1);
    PDSP_ASSERT(iq16_div16(-16) == -1);
    PDSP_ASSERT(iq16_div32(-32) == -1);
    PDSP_ASSERT(iq16_div64(-64) == -1);
    PDSP_ASSERT(iq16_q0tof(iq16_mulq0(iq16_ftoq0(10.0f), iq16_ftoq0(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q1tof(iq16_mulq1(iq16_ftoq1(10.5f), iq16_ftoq1(10.5f))) ==
                110.0f);
    PDSP_ASSERT(iq16_q2tof(iq16_mulq2(iq16_ftoq2(10.5f), iq16_ftoq2(10.5f))) ==
                110.25f);
    PDSP_ASSERT(iq16_q3tof(iq16_mulq3(iq16_ftoq3(10.0f), iq16_ftoq3(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q4tof(iq16_mulq4(iq16_ftoq4(10.0f), iq16_ftoq4(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q5tof(iq16_mulq5(iq16_ftoq5(10.0f), iq16_ftoq5(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q6tof(iq16_mulq6(iq16_ftoq6(10.0f), iq16_ftoq6(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q7tof(iq16_mulq7(iq16_ftoq7(10.0f), iq16_ftoq7(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q8tof(iq16_mulq8(iq16_ftoq8(10.5f), iq16_ftoq8(10.5f))) ==
                110.25f);
    PDSP_ASSERT(iq16_q9tof(iq16_mulq9(iq16_ftoq9(1.0f), iq16_ftoq9(10.0f))) ==
                10.0f);
    PDSP_ASSERT(
        iq16_q10tof(iq16_mulq10(iq16_ftoq10(1.0f), iq16_ftoq10(2.0f))) == 2.0f);
    PDSP_ASSERT(
        iq16_q11tof(iq16_mulq11(iq16_ftoq11(1.0f), iq16_ftoq11(2.0f))) == 2.0f);
    PDSP_ASSERT(
        iq16_q12tof(iq16_mulq12(iq16_ftoq12(1.0f), iq16_ftoq12(2.0f))) == 2.0f);
    PDSP_ASSERT(iq16_q13tof(iq16_mulq13(iq16_ftoq13(0.25f),
                                        iq16_ftoq13(0.25f))) == 0.0625f);
    PDSP_ASSERT(iq16_q14tof(iq16_mulq14(iq16_ftoq14(0.25f),
                                        iq16_ftoq14(0.25f))) == 0.0625f);
    PDSP_ASSERT(iq16_q15tof(iq16_mulq15(iq16_ftoq15(0.25f),
                                        iq16_ftoq15(0.25f))) == 0.0625f);
    PDSP_ASSERT(iq16_q0tof(iq16_rmulq0(iq16_ftoq0(10.0f), iq16_ftoq0(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q1tof(iq16_rmulq1(iq16_ftoq1(10.5f), iq16_ftoq1(10.5f))) ==
                110.5f);
    PDSP_ASSERT(iq16_q2tof(iq16_rmulq2(iq16_ftoq2(10.0f), iq16_ftoq2(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q3tof(iq16_rmulq3(iq16_ftoq3(10.0f), iq16_ftoq3(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q4tof(iq16_rmulq4(iq16_ftoq4(10.0f), iq16_ftoq4(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q5tof(iq16_rmulq5(iq16_ftoq5(10.0f), iq16_ftoq5(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q6tof(iq16_rmulq6(iq16_ftoq6(10.0f), iq16_ftoq6(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q7tof(iq16_rmulq7(iq16_ftoq7(10.0f), iq16_ftoq7(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q8tof(iq16_rmulq8(iq16_ftoq8(10.0f), iq16_ftoq8(10.0f))) ==
                100.0f);
    PDSP_ASSERT(iq16_q9tof(iq16_rmulq9(iq16_ftoq9(1.0f), iq16_ftoq9(10.0f))) ==
                10.0f);
    PDSP_ASSERT(iq16_q10tof(iq16_rmulq10(iq16_ftoq10(1.0f),
                                         iq16_ftoq10(2.0f))) == 2.0f);
    PDSP_ASSERT(iq16_q11tof(iq16_rmulq11(iq16_ftoq11(1.0f),
                                         iq16_ftoq11(2.0f))) == 2.0f);
    PDSP_ASSERT(iq16_q12tof(iq16_rmulq12(iq16_ftoq12(1.0f),
                                         iq16_ftoq12(2.0f))) == 2.0f);
    PDSP_ASSERT(iq16_q13tof(iq16_rmulq13(iq16_ftoq13(0.25f),
                                         iq16_ftoq13(0.25f))) == 0.0625f);
    PDSP_ASSERT(iq16_q14tof(iq16_rmulq14(iq16_ftoq14(0.25f),
                                         iq16_ftoq14(0.25f))) == 0.0625f);
    PDSP_ASSERT(iq16_q15tof(iq16_rmulq15(iq16_ftoq15(0.25f),
                                         iq16_ftoq15(0.25f))) == 0.0625f);

    pdsp_i16_t test0 = iq16_ftoq8(1.5f);
    pdsp_i16_t test1 = iq16_ftoq8(10.5f);
    pdsp_i16_t test2 = 0;
    test2 = iq16_mulq8(test0, test1);
    test2 = iq16_mulq8(test1, test2);
    test2 = iq16_mulq8(test0, test1);
    test2 = iq16_mulq8(test1, test2);
}

void test_log32(void)
{
    printf("-- void test_log32(void) --\n");
    pdsp_f32_t src1[8] = {0.1f, 0.2f, 0.3f, 0.4f, 0.5f, 0.6f, 0.7f, 0.8f};
    pdsp_f32_t src2[8] = {1.1f, 1.2f, 1.3f, 1.4f, 1.5f, 1.6f, 1.7f, 1.8f};
    pdsp_f32_t src3[8] = {2.1f, 2.2f, 2.3f, 2.4f, 2.5f, 2.6f, 2.7f, 2.8f};
    pdsp_f32_t src4[8] = {3.1f, 3.2f, 3.3f, 3.4f, 3.5f, 3.6f, 3.7f, 3.8f};
    pdsp_f32_t log1;
    pdsp_f32_t log2;
    pdsp_f32_t log3;
    pdsp_f32_t log4;
    pdsp_f32_t *plog[4] = {&log1, &log2, &log3, &log4};
    pdsp_f32_t data[4][4] = {0};
    pdsp_f32_t data1[4][4] = {0};
    pdsp_macro_log32_t log = {0};
    pdsp_macro_log32_t loga = {0};
    pdsp_macro_log32_init(log, 2);
    pdsp_macro_log32_setup(log, 0, 1, 2, 3, 0, 10.0f);
    /* 0 */
    log1 = src1[0];
    log2 = src2[0];
    log3 = src3[0];
    log4 = src4[0];
    pdsp_macro_log32_run(log, plog, data);
    PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
                (data[0][2] == 2.1f) && (data[0][3] == 3.1f));
    PDSP_ASSERT((data[1][0] == 0.0f) && (data[1][1] == 0.0f) &&
                (data[1][2] == 0.0f) && (data[1][3] == 0.0f));
    PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
                (data[2][2] == 0.0f) && (data[2][3] == 0.0f));
    PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
                (data[3][2] == 0.0f) && (data[3][3] == 0.0f));
    PDSP_ASSERT(log.u16_count == 0U);
    PDSP_ASSERT(log.u16_index_add == 1U);
    PDSP_ASSERT(log.u16_count_add == 0U);
    /* 1 */
    log1 = src1[1];
    log2 = src2[1];
    log3 = src3[1];
    log4 = src4[1];
    pdsp_macro_log32_run(log, plog, data);
    PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
                (data[0][2] == 2.1f) && (data[0][3] == 3.1f));
    PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
                (data[1][2] == 2.2f) && (data[1][3] == 3.2f));
    PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
                (data[2][2] == 0.0f) && (data[2][3] == 0.0f));
    PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
                (data[3][2] == 0.0f) && (data[3][3] == 0.0f));
    PDSP_ASSERT(log.u16_count == 0U);
    PDSP_ASSERT(log.u16_index_add == 1U);
    PDSP_ASSERT(log.u16_count_add == 0U);
    /* 2 */
    log1 = src1[2];
    log2 = src2[2];
    log3 = src3[2];
    log4 = src4[2];
    pdsp_macro_log32_run(log, plog, data);
    PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
                (data[0][2] == 2.1f) && (data[0][3] == 3.1f));
    PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
                (data[1][2] == 2.2f) && (data[1][3] == 3.2f));
    PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
                (data[2][2] == 2.3f) && (data[2][3] == 3.3f));
    PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
                (data[3][2] == 0.0f) && (data[3][3] == 0.0f));
    PDSP_ASSERT(log.u16_count == 0U);
    PDSP_ASSERT(log.u16_index_add == 1U);
    PDSP_ASSERT(log.u16_count_add == 0U);
    /* 3 */
    log1 = src1[3];
    log2 = src2[3];
    log3 = src3[3];
    log4 = src4[3];
    pdsp_macro_log32_run(log, plog, data);
    PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
                (data[0][2] == 2.1f) && (data[0][3] == 3.1f));
    PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
                (data[1][2] == 2.2f) && (data[1][3] == 3.2f));
    PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
                (data[2][2] == 2.3f) && (data[2][3] == 3.3f));
    PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
                (data[3][2] == 2.4f) && (data[3][3] == 3.4f));
    PDSP_ASSERT(log.u16_count == 0U);
    PDSP_ASSERT(log.u16_index_add == 1U);
    PDSP_ASSERT(log.u16_count_add == 0U);
    /* 4 */
    log1 = src1[4];
    log2 = src2[4];
    log3 = src3[4];
    log4 = src4[4];
    pdsp_macro_log32_run(log, plog, data);
    PDSP_ASSERT((data[0][0] == 0.5f) && (data[0][1] == 1.5f) &&
                (data[0][2] == 2.5f) && (data[0][3] == 3.5f));
    PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
                (data[1][2] == 2.2f) && (data[1][3] == 3.2f));
    PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
                (data[2][2] == 2.3f) && (data[2][3] == 3.3f));
    PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
                (data[3][2] == 2.4f) && (data[3][3] == 3.4f));
    PDSP_ASSERT(log.u16_count == 0U);
    PDSP_ASSERT(log.u16_index_add == 1U);
    PDSP_ASSERT(log.u16_count_add == 0U);
    /* reset */
    pdsp_macro_log32_init(loga, 2);
    pdsp_macro_log32_setup(loga, 0, 1, 2, 3, 0, 0.1f);
    /* 0 */
    log1 = src1[0];
    log2 = src2[0];
    log3 = src3[0];
    log4 = src4[0];
    pdsp_macro_log32_run(loga, plog, data1);
    PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
                (data1[0][2] == 2.1f) && (data1[0][3] == 3.1f));
    PDSP_ASSERT((data1[1][0] == 0.0f) && (data1[1][1] == 0.0f) &&
                (data1[1][2] == 0.0f) && (data1[1][3] == 0.0f));
    PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
                (data1[2][2] == 0.0f) && (data1[2][3] == 0.0f));
    PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
                (data1[3][2] == 0.0f) && (data1[3][3] == 0.0f));
    PDSP_ASSERT(loga.u16_count == 0U);
    PDSP_ASSERT(loga.u16_index_add == 1U);
    PDSP_ASSERT(loga.u16_count_add == 0U);
    /* 1 */
    log1 = src1[1];
    log2 = src2[1];
    log3 = src3[1];
    log4 = src4[1];
    pdsp_macro_log32_run(loga, plog, data1);
    PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
                (data1[0][2] == 2.1f) && (data1[0][3] == 3.1f));
    PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
                (data1[1][2] == 2.2f) && (data1[1][3] == 3.2f));
    PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
                (data1[2][2] == 0.0f) && (data1[2][3] == 0.0f));
    PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
                (data1[3][2] == 0.0f) && (data1[3][3] == 0.0f));
    PDSP_ASSERT(loga.u16_count == 0U);
    PDSP_ASSERT(loga.u16_index_add == 1U);
    PDSP_ASSERT(loga.u16_count_add == 1U);
    /* 2 */
    log1 = src1[2];
    log2 = src2[2];
    log3 = src3[2];
    log4 = src4[2];
    pdsp_macro_log32_run(loga, plog, data1);
    PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
                (data1[0][2] == 2.1f) && (data1[0][3] == 3.1f));
    PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
                (data1[1][2] == 2.2f) && (data1[1][3] == 3.2f));
    PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
                (data1[2][2] == 2.3f) && (data1[2][3] == 3.3f));
    PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
                (data1[3][2] == 0.0f) && (data1[3][3] == 0.0f));
    PDSP_ASSERT(loga.u16_count == 1U);
    PDSP_ASSERT(loga.u16_index_add == 1U);
    PDSP_ASSERT(loga.u16_count_add == 1U);
    /* 3 */
    log1 = src1[3];
    log2 = src2[3];
    log3 = src3[3];
    log4 = src4[3];
    pdsp_macro_log32_run(loga, plog, data1);
    PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
                (data1[0][2] == 2.1f) && (data1[0][3] == 3.1f));
    PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
                (data1[1][2] == 2.2f) && (data1[1][3] == 3.2f));
    PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
                (data1[2][2] == 2.3f) && (data1[2][3] == 3.3f));
    PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
                (data1[3][2] == 2.4f) && (data1[3][3] == 3.4f));
    PDSP_ASSERT(loga.u16_count == 2U);
    PDSP_ASSERT(loga.u16_index_add == 1U);
    PDSP_ASSERT(loga.u16_count_add == 1U);
    /* 4 0*/
    log1 = src1[4];
    log2 = src2[4];
    log3 = src3[4];
    log4 = src4[4];
    pdsp_macro_log32_run(loga, plog, data1);
    PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
                (data1[0][2] == 2.5f) && (data1[0][3] == 3.5f));
    PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
                (data1[1][2] == 2.2f) && (data1[1][3] == 3.2f));
    PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
                (data1[2][2] == 2.3f) && (data1[2][3] == 3.3f));
    PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
                (data1[3][2] == 2.4f) && (data1[3][3] == 3.4f));
    PDSP_ASSERT(loga.u16_count == 3U);
    PDSP_ASSERT(loga.u16_index_add == 0U);
    PDSP_ASSERT(loga.u16_count_add == 0U);
    /* 5 1*/
    log1 = src1[5];
    log2 = src2[5];
    log3 = src3[5];
    log4 = src4[5];
    pdsp_macro_log32_run(loga, plog, data1);
    PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
                (data1[0][2] == 2.5f) && (data1[0][3] == 3.5f));
    PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
                (data1[1][2] == 2.2f) && (data1[1][3] == 3.2f));
    PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
                (data1[2][2] == 2.3f) && (data1[2][3] == 3.3f));
    PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
                (data1[3][2] == 2.4f) && (data1[3][3] == 3.4f));
    PDSP_ASSERT(loga.u16_count == 3U);
    PDSP_ASSERT(loga.u16_index_add == 0U);
    PDSP_ASSERT(loga.u16_count_add == 0U);
    /* 5 1*/
    log1 = src1[6];
    log2 = src2[6];
    log3 = src3[6];
    log4 = src4[6];
    pdsp_macro_log32_run(loga, plog, data1);
    PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
                (data1[0][2] == 2.5f) && (data1[0][3] == 3.5f));
    PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
                (data1[1][2] == 2.2f) && (data1[1][3] == 3.2f));
    PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
                (data1[2][2] == 2.3f) && (data1[2][3] == 3.3f));
    PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
                (data1[3][2] == 2.4f) && (data1[3][3] == 3.4f));
    PDSP_ASSERT(loga.u16_count == 3U);
    PDSP_ASSERT(loga.u16_index_add == 0U);
    PDSP_ASSERT(loga.u16_count_add == 0U);
}

int main()
{

    test_assert_true();
    test_stopwatch();
    test_call_i16_func();
    test_i16_to_string();
    test_u16_to_hex();
    test_u64_to_hex();
    test_map();
    test_map_idx();
    test_array_set();
    test_array_apply();
    test_array_linlogspace();
    test_interpolate_2d();
    test_hysteresis_value();
    test_hysteresis_list();
    test_debounce();
    test_robust();
    test_status();
    test_mean();
    test_queue();
    test_ain();
    test_ain_calibrate();
    test_minmax();
    test_expavg();
    test_df2x();
    test_med3();
    test_rollsum();
    test_rollavg();
    test_rollrms();
    test_delay();
    test_pi();
    test_bit_read_write();
    test_signal_read_write();
    test_fault();
    test_fixmath();
    test_log32();

    return 0;
}
