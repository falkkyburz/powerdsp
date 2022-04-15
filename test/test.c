/*
 * 
 */

#include "pdsp.h"
#include <stdio.h>

static pdsp_sig_param_t s_vbus_raw_par = {.f32_gain = 1.0f, .f32_offset = 0.0f};
static pdsp_override_t s_vbus_ovr = {.u32_enable = 0U, .f32_value = 0.0f};
static pdsp_f32_t f32_vbus_act = 0.0f;
static pdsp_expavg_param_t f32_vbus_avg_par = {.f32_tau=0.1f};
static pdsp_expavg_t f32_vbus_avg_state = {0};
static pdsp_f32_t f32_vbus_avg = 0.0f;

void signal_read_task(void)
{
   f32_vbus_act = pdsp_sig_conv(&s_vbus_raw_par, &s_vbus_ovr, 1000.0f);
}

void signal_filter_task(void)
{
   f32_vbus_avg = pdsp_expavg(&f32_vbus_avg_state, &f32_vbus_avg_par, f32_vbus_act);
}

void control_task(void)
{
}

void fault_task(void)
{
}

void test_raw(void)
{
   pdsp_u32_t u32_idx = 0;
   pdsp_f32_t f32_arr[100];
   pdsp_f32_t f32_arr1[100];
   pdsp_sig_param_t s_raw_par = {.f32_gain = 2.0f, .f32_offset = -22.0f};
   pdsp_override_t s_ovr = {.u32_enable = 0U, .f32_value = 30.0f};

   pdsp_linspace(f32_arr, 100, 11, 55);

   for (u32_idx = 0; u32_idx < 100; u32_idx++)
   {
      if (u32_idx > 80)
         s_ovr.u32_enable = 1;
      f32_arr1[u32_idx] = pdsp_sig_conv(&s_raw_par, &s_ovr, f32_arr[u32_idx]);
   }

   FILE *fptr;
   fptr = fopen("test.csv", "w");
   for (u32_idx = 0; u32_idx < 100; u32_idx++)
      fprintf(fptr, "%i, %f, %f\n", u32_idx, f32_arr[u32_idx], f32_arr1[u32_idx]);
   fclose(fptr);
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
   pdsp_f32_t f32_arr1[100];

   pdsp_saw_param_t s_saw_param = {.f32_step = PDSP_2_PI / 10, .f32_out_low = 0.0f, .f32_out_high = PDSP_2_PI};
   pdsp_saw_t s_saw = {0};
   pdsp_saw_t s_saw1 = {PDSP_2_PI * 0.75};
   f32_arr1[0]=PDSP_2_PI * 0.75;
   for (u32_idx = 1; u32_idx < 100; u32_idx++){
      f32_arr[u32_idx] = pdsp_saw(&s_saw, &s_saw_param);
      f32_arr1[u32_idx] = pdsp_saw(&s_saw1, &s_saw_param);
   }

   FILE *fptr;
   fptr = fopen("test.csv", "w");
   for (u32_idx = 0; u32_idx < 100; u32_idx++)
      fprintf(fptr, "%i, %f, %f, %f\n",
              u32_idx,
              f32_arr[u32_idx],
              f32_arr1[u32_idx],
              sinf(f32_arr[u32_idx]));
   fclose(fptr);
}

void test_rolling_avg_rms(void)
{
   pdsp_u32_t u32_idx = 0;
   pdsp_f32_t f32_saw, f32_sin, f32_avg, f32_rms;
   pdsp_f32_t af32_arr[100] = {0};
   pdsp_f32_t af32_arr1[100] = {0};

   pdsp_saw_param_t s_saw_param = {.f32_step = PDSP_2_PI / 50, .f32_out_low = 0.0f, .f32_out_high = PDSP_2_PI};
   pdsp_saw_t s_saw = {0};
   pdsp_rollsum_t s_avg = {0};
   pdsp_rollsum_t s_rms = {0};

   FILE *fptr;
   fptr = fopen("test.csv", "w");
   for (u32_idx = 0; u32_idx < 200; u32_idx++)
   {
      f32_saw = pdsp_saw(&s_saw, &s_saw_param);
      f32_sin = sinf(f32_saw);
      f32_avg = pdsp_rollavg(&s_avg, af32_arr, 100, f32_saw);
      f32_rms = pdsp_rollrms(&s_rms, af32_arr1, 100, f32_sin);

      fprintf(fptr, "%i, %f, %f, %f, %f\n",
              u32_idx,
              f32_saw,
              f32_sin,
              f32_avg,
              f32_rms);
   }
   fclose(fptr);
}

void test_avg(void)
{
   pdsp_u32_t u32_idx = 0;
   pdsp_f32_t f32_saw;
   pdsp_f32_t f32_avg;

   pdsp_saw_param_t s_saw_param = {.f32_step = PDSP_2_PI / 25, .f32_out_low = 0.0f, .f32_out_high = PDSP_2_PI};
   pdsp_saw_t s_saw = {0};

   pdsp_expavg_t s_avg = {0};
   pdsp_expavg_param_t s_avg_param = {.f32_tau=0.005f};

   FILE *fptr;
   fptr = fopen("test.csv", "w");
   for (u32_idx = 0; u32_idx < 1000; u32_idx++)
   {
      f32_saw = pdsp_saw(&s_saw, &s_saw_param);
      f32_avg = pdsp_expavg(&s_avg, &s_avg_param, f32_saw);
      fprintf(fptr, "%i, %f, %f\n",
              u32_idx,
              f32_saw,
              f32_avg);
   }
   fclose(fptr);
}

int main()
{
   // signal_read_task();
   // signal_filter_task();

   // test_linspace();
   // test_logspace();
   test_saw();
   //test_raw();
   //test_rolling_avg_rms();
   //test_avg();

   return 0;
}
