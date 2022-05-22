/** @file examples.c
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
#include <stdio.h>
#include <string.h>
#include <time.h>

#define pdsp_assert(b_in)                                    \
    if (!(b_in)) printf("Assert failed: %s:%i\n", __FILE__, __LINE__)

void example_assert_true(void)
{
    printf("-- void example_assert_true(void) --\n");
    PDSP_ASSERT(PDSP_TRUE);
    // PDSP_ASSERT(PDSP_FALSE);
}

void example_stopwatch(void)
{
    printf("-- void example_stopwatch(void) --\n");
    pdsp_stopwatch_var_t watch_var = {0};
    pdsp_stopwatch_t watch = {.ps_var = &watch_var, .u32_hw_max = 1000};
    pdsp_u32_t out;
    pdsp_stopwatch_start(&watch, 0U);
    out = pdsp_stopwatch_stop(&watch, 555U);
    PDSP_ASSERT(out == 555);
    pdsp_stopwatch_start(&watch, 889);
    out = pdsp_stopwatch_stop(&watch, 444U);
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

void example_call_i16_func(void)
{
    printf("-- void example_call_i16_func(void) --\n");
    const pdsp_pi16_func_t flist[FUNC_SIZE] = {func_nop, func_start_converter,
                                               func_stop_converter};
    pdsp_i16_t ret;
    pdsp_call_i16_func(flist, FUNC_SIZE, FUNC_START, &ret);
    PDSP_ASSERT(ret == 1);
    pdsp_call_i16_func(flist, FUNC_SIZE, FUNC_STOP, &ret);
    PDSP_ASSERT(ret == 2);
}

void example_i16_to_string(void)
{
    printf("-- void example_i16_to_string(void) --\n");
    pdsp_char_t out[16] = {0};
    pdsp_char_t *pos = &out[0];
    *pos++ = ':';
    pos = pdsp_i16_to_string(6666, pos);
    *pos++ = ',';
    pos = pdsp_i16_to_string(-1111, pos);
    *pos++ = ':';
    PDSP_ASSERT(strcmp(out, ":  6666, -1111:") == 0);
}

void example_u16_to_hex(void)
{
    printf("-- void example_u16_to_hex(void) --\n");
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

void example_u64_to_hex(void)
{
    printf("-- void example_u64_to_hex(void) --\n");
    pdsp_char_t out[64] = {0};
    pdsp_char_t *pos = &out[0];
    *pos++ = ':';
    pos = pdsp_u64_to_hex(0x0123456789ABCDEF, pos);
    *pos++ = ',';
    pos = pdsp_u64_to_hex(0xAFFAFFAFFAFFAFFA, pos);
    *pos++ = ':';
    PDSP_ASSERT(strcmp(out, ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:") == 0);
}

void example_map(void)
{
    printf("-- void example_map(void) --\n");
    PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 2.0f) == 1.5f);
    PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 1.0f, 1.0f, 2.0f) == 1.5f);
    PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 1.0f) == 1.0f);
    PDSP_ASSERT(pdsp_map(-1.0f, 0.0f, 1.0f, 0.0f, 1.0f) == -1.0f);
}

void example_map_idx(void)
{
    printf("-- void example_map_idx(void) --\n");
    PDSP_ASSERT((pdsp_u16_t)(1.5f) == 1U);
    PDSP_ASSERT((pdsp_u16_t)(1.6f) == 1U);
    PDSP_ASSERT((pdsp_u16_t)(1.4f) == 1U);
    PDSP_ASSERT(pdsp_map_idx(1.5f, 1.0f, 2.0f, 10.0) == 5);
    PDSP_ASSERT(pdsp_map_idx(-1.5f, 1.0f, 2.0f, 10.0) == 0);
    PDSP_ASSERT(pdsp_map_idx(3.0f, 1.0f, 2.0f, 10.0) == 10);
}

void example_interpollate_2d(void)
{
    printf("-- void example_interpollate_2d(void) --\n");
    const pdsp_f32_t xarr[5] = {0.0f, 1.0f, 2.0f, 3.0f, 4.0f};
    const pdsp_f32_t yarr[5] = {0.0f, 1.0f, 2.0f, 3.0f, 4.0f};
    const pdsp_f32_t yarrn[5] = {0.0f, -1.0f, -2.0f, -3.0f, -4.0f};
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarr, 5, -0.5f) == -0.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarr, 5, 0.5f) == 0.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarr, 5, 1.5f) == 1.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarr, 5, 2.5f) == 2.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarr, 5, 3.5f) == 3.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarr, 5, 4.5f) == 4.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarrn, 5, -0.5f) == 0.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarrn, 5, 0.5f) == -0.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarrn, 5, 1.5f) == -1.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarrn, 5, 2.5f) == -2.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarrn, 5, 3.5f) == -3.5f);
    PDSP_ASSERT(pdsp_interpollate_2d(xarr, yarrn, 5, 4.5f) == -4.5f);
}

void example_array_set(void)
{
    printf("-- void example_array_set(void) --\n");
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

void example_array_apply(void)
{
    printf("-- void example_array_apply(void) --\n");
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

void example_array_linlogspace(void)
{
    printf("-- void example_array_linlogspace(void) --\n");
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

void example_hysteresis_value(void)
{
    printf("-- void example_hysteresis_value(void) --\n");
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
}

void example_hysteresis_time(void)
{
    printf("-- void example_hysteresis_time(void) --\n");
    pdsp_hyst_time_var_t hyst_var = {0};
    pdsp_hyst_time_t hyst = {.ps_var = &hyst_var,
                             .f32_t_step = 1.0f,
                             .f32_t_high = 2.0f,
                             .f32_t_low = 2.0f};
    pdsp_hysteresis_time_clear(&hyst);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_TRUE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_TRUE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_FALSE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_FALSE) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_FALSE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_TRUE) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_hysteresis_time(&hyst, PDSP_TRUE) == PDSP_TRUE);
}

void example_status(void)
{
    printf("-- void example_status(void) --\n");
    pdsp_u32_t u32_status = 0U;
    pdsp_u32_t *pu32_status = &u32_status;
    PDSP_ASSERT(u32_status == 0x0);
    pdsp_status_set(pu32_status, 0x1);
    PDSP_ASSERT(u32_status == 0x1U);
    PDSP_ASSERT(pdsp_status_get(pu32_status, 0x1, 0x0) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_status_get(pu32_status, 0x0, 0xFFFFFFFE) == PDSP_TRUE);
    pdsp_status_clear(pu32_status, 0xFFFFFFFF);
    PDSP_ASSERT(u32_status == 0x0);
    pdsp_status_set(pu32_status, 0x1000);
    PDSP_ASSERT(pdsp_status_get(pu32_status, 0x1000, 0x0) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_status_get(pu32_status, 0x0, 0xFFFFEFFF) == PDSP_TRUE);
}

void example_mean(void)
{
    printf("-- void example_mean(void) --\n");
    pdsp_u16_t m4[4] = {1, 2, 3, 4};
    pdsp_u16_t m8[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 0.5f) == 1.5f);
    PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 1.0f) == 1.0f);
    PDSP_ASSERT(pdsp_mean4_u16(m4) == 2.5f);
    PDSP_ASSERT(pdsp_mean8_u16(m8) == 4.5f);
}

void example_queue(void)
{
    printf("-- void example_queue(void) --\n");
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
}

void example_ain(void)
{
    printf("-- void example_ain(void) --\n");
    pdsp_ain_override_t vin_ovr = {0};
    const pdsp_ain_t vin_ain = {
        .ps_ovr = &vin_ovr, .f32_gain = 2.0f, .f32_offset = 10.0f};
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

void example_ain_calibrate(void)
{
    printf("-- void example_ain_calibrate(void) --\n");
    pdsp_ain_override_t vin_ovr = {0};
    const pdsp_ain_t vin_ain = {
        .ps_ovr = &vin_ovr, .f32_gain = 2.0f, .f32_offset = 10.0f};
    pdsp_f32_t vin, new_gain, new_offset;
    vin = pdsp_ain(&vin_ain, 1.0f);
    PDSP_ASSERT(vin == 12.0f);
    new_gain = pdsp_ain_calibrate_gain(vin_ain.f32_gain, 10.0f, 20.0f);
    PDSP_ASSERT(new_gain == 2.0f * 10.0f / 20.0f);
    new_offset = pdsp_ain_calibrate_gain(vin_ain.f32_offset, 0.0f, 10.0f);
    PDSP_ASSERT(new_offset == 0.0f);
}

void example_minmax(void)
{
    printf("-- void example_minmax(void) --\n");
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

void example_expavg(void)
{
    printf("-- void example_expavg(void) --\n");
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
}

void example_df2x(void)
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

void example_med3(void)
{
    printf("-- void example_med3(void) --\n");
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

void example_rollsum(void)
{
    printf("-- void example_rollsum(void) --\n");
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

void example_rollavg(void)
{
    printf("-- void example_rollavg(void) --\n");
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

void example_rollrms(void)
{
    printf("-- void example_rollrms(void) --\n");
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

void example_bit_read_write(void)
{
    printf("-- void example_bit_read_write(void) --\n");
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

void example_signal_read_write(void)
{
    printf("-- void example_signal_read_write(void) --\n");
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

void flt_group_cb(void) {}

void example_fault(void)
{
    printf("-- void example_fault(void) --\n");
    pdsp_u32_t flt_group = 0;
    pdsp_hyst_time_var_t flt_hyst_var = {0};
    pdsp_fault_var_t flt_var = {0};
    pdsp_hyst_time_t flt_hyst = {.ps_var = &flt_hyst_var,
                                 .f32_t_step = 1.0f,
                                 .f32_t_low = 2.0f,
                                 .f32_t_high = 2.0f};
    pdsp_fault_t flt = {.ps_var = &flt_var,
                        .ps_hyst = &flt_hyst,
                        .f32_value = 1.0f,
                        .b_group = &flt_group,
                        .u16_bit = 0};
    pdsp_fault_init(&flt);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_group == 0);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_group == 1);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_over(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_group == 0);

    PDSP_ASSERT(pdsp_fault_check_under(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_under(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_under(&flt, 0.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_group == 0);
    PDSP_ASSERT(pdsp_fault_check_under(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_group == 1);
    PDSP_ASSERT(pdsp_fault_check_under(&flt, 0.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_under(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_under(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_under(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_group == 0);

    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 1.0f) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 1.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_group == 0);
    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(flt_group == 1);
    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 1.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 2.0f) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_equal(&flt, 2.0f) == PDSP_FALSE);
    PDSP_ASSERT(flt_group == 0);

    PDSP_ASSERT(pdsp_fault_check_true(&flt) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_true(&flt) == PDSP_FALSE);
    PDSP_ASSERT(pdsp_fault_check_true(&flt) == PDSP_TRUE);
    PDSP_ASSERT(flt_group == 1);
    PDSP_ASSERT(pdsp_fault_check_false(&flt) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_false(&flt) == PDSP_TRUE);
    PDSP_ASSERT(pdsp_fault_check_false(&flt) == PDSP_FALSE);
    PDSP_ASSERT(flt_group == 0);

    pdsp_fault_process_group(flt_group, &flt_group_cb);
}

int main()
{

    example_assert_true();
    example_stopwatch();
    example_call_i16_func();
    example_i16_to_string();
    example_u16_to_hex();
    example_u64_to_hex();
    example_map();
    example_map_idx();
    example_array_set();
    example_array_apply();
    example_array_linlogspace();
    example_interpollate_2d();
    example_hysteresis_value();
    example_hysteresis_time();
    example_status();
    example_mean();
    example_queue();
    example_ain();
    example_ain_calibrate();
    example_minmax();
    example_expavg();
    example_df2x();
    example_med3();
    example_rollsum();
    example_rollavg();
    example_rollrms();
    example_bit_read_write();
    example_signal_read_write();
    example_fault();

    return 0;
}
