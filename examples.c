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

#define pdsp_assert_true(x)                                                    \
    if (!(x))                                                                  \
        printf("Assert failed: %s:%i\n", __FILE__, __LINE__);

void example_assert_true(void)
{
    printf("-- void example_assert_true(void) --\n");
    PDSP_ASSERT(PDSP_TRUE);
    //PDSP_ASSERT(PDSP_FALSE);
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


void example_queue(void)
{
    printf("-- void example_queue(void) --\n");
    pdsp_char_t ch[4] = {0};
    pdsp_queue_var_t var = {0};
    pdsp_queue_t data = {.ps_var=&var, .pav_data=(void*)ch, .i16_size=4};
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

void example_rollsum(void)
{
    printf("-- void example_rollsum(void) --\n");
    pdsp_f32_t f32_history[4] = {1, 2, 3, 4};
    pdsp_rollsum_var_t roll_var = {0};
    const pdsp_rollsum_t roll = {.ps_var = &roll_var,
                                 .s_queue = {.ps_var = &roll_var.s_queue_var,
                                             .pav_data = (void *)f32_history,
                                             .i16_size = 4}};
    pdsp_rollsum_init(&roll, 4);
    PDSP_ASSERT((f32_history[0] == 0.0f) && (f32_history[1] == 0.0f) &&
                (f32_history[2] == 0.0f) && (f32_history[3] == 0.0f));
    pdsp_rollsum(&roll, 10.0);
    PDSP_ASSERT(roll_var.f32_sum == 10.0);
    pdsp_rollsum(&roll, 1.0);
    PDSP_ASSERT(roll_var.f32_sum == 11.0);
    pdsp_rollsum(&roll, 3.0);
    PDSP_ASSERT(roll_var.f32_sum == 14.0);
    pdsp_rollsum(&roll, 6.0);
    PDSP_ASSERT(roll_var.f32_sum == 20.0);
    pdsp_rollsum(&roll, 0.0);
    PDSP_ASSERT(roll_var.f32_sum == 10.0);

    pdsp_rollsum_init(&roll, 2);
    pdsp_rollsum(&roll, 10.0);
    PDSP_ASSERT(roll_var.f32_sum == 10.0);
    pdsp_rollsum(&roll, 1.0);
    PDSP_ASSERT(roll_var.f32_sum == 11.0);
    pdsp_rollsum(&roll, 1.0);
    PDSP_ASSERT(roll_var.f32_sum == 2.0);
}

int main()
{

    example_assert_true();
    example_stopwatch();

    example_queue();
    example_rollsum();

    return 0;
}
