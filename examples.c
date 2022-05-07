/*
 *
 *
 *
 * FILE *fptr;
 * fptr = fopen("example_assert_true.txt", "w");
 * fprintf(fptr, "test\n", );
 * fclose(fptr);
 */

#include <stdio.h>
#include <time.h>
#define PDSP_CUSTOM_ASSERT
#include "pdsp.h"
#include "string.h"

#define pdsp_assert_true(x)                                                    \
    if (!(x))                                                                  \
        printf("Assert failed: %s:%i\n", __FILE__, __LINE__);

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

enum
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
    pos = pdsp_u16_to_hex(0x1337, pos);
    *pos++ = ',';
    pos = pdsp_u16_to_hex(0xB00B, pos);
    *pos++ = ':';
    PDSP_ASSERT(strcmp(out, ":1337,B00B:") == 0);
}

void example_u64_to_hex(void)
{
    printf("-- void example_u16_to_hex(void) --\n");
    pdsp_char_t out[64] = {0};
    pdsp_char_t *pos = &out[0];
    *pos++ = ':';
    pos = pdsp_u64_to_hex(0x0123456789ABCDEF, pos);
    *pos++ = ',';
    pos = pdsp_u64_to_hex(0xAFFAFFAFFAFFAFFA, pos);
    *pos++ = ':';
    PDSP_ASSERT(strcmp(out, ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:") == 0);
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

int main()
{

    example_assert_true();
    example_stopwatch();
    example_call_i16_func();
    example_i16_to_string();
    example_u16_to_hex();
    example_u64_to_hex();
    example_queue();
    example_ain();
    example_ain_calibrate();
    example_minmax();
    example_expavg();
    example_med3();
    example_rollsum();
    example_rollavg();
    example_rollrms();

    return 0;
}
