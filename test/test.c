#include "pdsp_types.h"
#include "pdsp_control.h"
#include "pdsp_dpll.h"
#include "pdsp_fault.h"
#include "pdsp_signal.h"
#include "pdsp_util.h"
#include <stdio.h>

static pdsp_raw_param_t s_vbus_raw_par = {.f32_gain = 1.0f, .f32_offset = 0.0f};
static pdsp_override_t s_vbus_ovr = {.u32_enable = 0U, .f32_value = 0.0f};
static pdsp_f32_t f32_vbus_act = 0.0f;
static pdsp_expavg_param_t f32_vbus_avg_par = 0.1f;
static pdsp_expavg_t f32_vbus_avg_state = 0.0f;
static pdsp_f32_t f32_vbus_avg = 0.0f;

void signal_read_task(void)
{
   f32_vbus_act = pdsp_raw_run(&s_vbus_raw_par, &s_vbus_ovr, 1000.0f);
}

void signal_filter_task(void)
{
   f32_vbus_avg = pdsp_expavg_run(&f32_vbus_avg_par, &f32_vbus_avg_state, f32_vbus_act);
}

void control_task(void)
{
}

void fault_task(void)
{
}

void test_linspace(void)
{
   pdsp_u32_t u32_idx = 0;
   pdsp_f32_t f32_arr[100];

   pdsp_linspace(f32_arr, 100, 11, 55);

   FILE *fptr;
   fptr = fopen("test.csv", "w");
   for (u32_idx = 0; u32_idx < 100; u32_idx++)
      fprintf(fptr, "%i, %f\n", u32_idx, f32_arr[u32_idx]);
   fclose(fptr);
}

void test_logspace(void)
{
   pdsp_u32_t u32_idx = 0;
   pdsp_f32_t f32_arr[100];

   pdsp_logspace(f32_arr, 100, 1, 4);

   FILE *fptr;
   fptr = fopen("test.csv", "w");
   for (u32_idx = 0; u32_idx < 100; u32_idx++)
      fprintf(fptr, "%i, %f\n", u32_idx, f32_arr[u32_idx]);
   fclose(fptr);
}

void test_saw(void)
{
   pdsp_u32_t u32_idx = 0;
   pdsp_f32_t f32_arr[100];

   pdsp_saw_param_t s_saw_param = {.f32_step = PDSP_2_PI / 50, .f32_out_low = 0.0f, .f32_out_high = PDSP_2_PI};
   pdsp_saw_t s_saw = {0};
   for (u32_idx = 1; u32_idx < 100; u32_idx++)
      f32_arr[u32_idx] = pdsp_saw_run(&s_saw, &s_saw_param);

   FILE *fptr;
   fptr = fopen("test.csv", "w");
   for (u32_idx = 0; u32_idx < 100; u32_idx++)
      fprintf(fptr, "%i, %f, %f\n",
              u32_idx, 
              f32_arr[u32_idx],
              sinf(f32_arr[u32_idx]));
   fclose(fptr);
}

int main()
{
   // signal_read_task();
   // signal_filter_task();

   // test_linspace();
   // test_logspace();
   test_saw();

   return 0;
}
