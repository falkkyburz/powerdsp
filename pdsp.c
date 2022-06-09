/** @file pdsp.c
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

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/
#include "pdsp.h"
#include <math.h>
#include <stdbool.h>
#include <stddef.h>

/*==============================================================================
 GLOBAL CONSTANTS
 =============================================================================*/
static const pdsp_u16_t pdsp_mask_i16[16] = {
    0x0001, 0x0003, 0x0007, 0x000F, 0x001F, 0x003F, 0x007F, 0x00FF,
    0x01FF, 0x03FF, 0x07FF, 0x0FFF, 0x1FFF, 0x3FFF, 0x7FFF, 0xFFFF};

/*==============================================================================
 PRIVATE FUNCTIOS PROTOTYPES
 =============================================================================*/

/*==============================================================================
 PRIVATE FUNCTIO PROTOTYPES
 =============================================================================*/

/*==============================================================================
 GLOBAL FUNCTIOS
 =============================================================================*/

/*-----------------------------------------------------------------------------
UTIL
-----------------------------------------------------------------------------*/

pdsp_extern void pdsp_stopwatch_start(const pdsp_stopwatch_t *ps_data,
                                      pdsp_u32_t u32_hw_now)
{
    PDSP_ASSERT(ps_data != NULL);
    ps_data->ps_var->u32_time_mem = u32_hw_now;
}

pdsp_extern pdsp_u32_t pdsp_stopwatch_stop(const pdsp_stopwatch_t *ps_data,
                                           pdsp_u32_t u32_hw_now)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    if (ps_data->ps_var->u32_time_mem < u32_hw_now)
    {
        return u32_hw_now - ps_data->ps_var->u32_time_mem;
    }
    else
    {
        return u32_hw_now - ps_data->ps_var->u32_time_mem + ps_data->u32_hw_max;
    }
}

pdsp_extern pdsp_i16_t pdsp_call_i16_func(const pdsp_pi16_func_t apf_list[],
                                          pdsp_size_t s_size,
                                          pdsp_i16_t i16_idx,
                                          pdsp_i16_t *i16_out)
{
    PDSP_ASSERT((apf_list != NULL) && (i16_out != NULL) && s_size);
    if ((apf_list[i16_idx] != PDSP_NULL) && (i16_idx < s_size))
    {
        *i16_out = apf_list[i16_idx]();
        return PDSP_OK;
    }
    return PDSP_ILLEGAL;
}

/* TODO */
pdsp_extern pdsp_char_t *pdsp_srec_encode(pdsp_char_t *ac_start,
                                          pdsp_srec_t *ps_data)
{
    PDSP_ASSERT((ac_start != NULL) && (ps_data != NULL));
    // pdsp_u16_t checksum = 0;
    // pdsp_u16_t data_idx = 0;

    // if (ps_data->e_type == PDSP_SREC_S0_HEADER)
    // {
    //     PDSP_ASSERT(ps_data->u32_address == 0);
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '0';

    //     (*ac_start++) = '0';
    //     (*ac_start++) = '0';
    //     (*ac_start++) = '0';
    //     (*ac_start++) = '0';

    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S1_DATA16)
    // {
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '1';
    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S2_DATA24)
    // {
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '2';
    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S3_DATA32)
    // {
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '3';
    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S5_COUNT16)
    // {
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '5';
    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S6_COUNT32)
    // {
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '6';
    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S7_TERM16)
    // {
    //     PDSP_ASSERT(ps_data->u16_size == 0);
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '7';
    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S8_TERM24)
    // {
    //      PDSP_ASSERT(ps_data->u16_size == 0);
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '8';
    //     return ac_start;
    // }
    // else if (ps_data->e_type == PDSP_SREC_S9_TERM32)
    // {
    //      PDSP_ASSERT(ps_data->u16_size == 0);
    //     (*ac_start++) = 'S';
    //     (*ac_start++) = '9';
    //     return ac_start;
    // }
    // else
    // {
    //     return ac_start;
    // }
    return ac_start;
}

pdsp_extern pdsp_char_t *pdsp_i16_to_string(pdsp_i16_t i16_in,
                                            pdsp_char_t *a6c_out)
{
    pdsp_i16_t idx = 5;
    pdsp_i16_t rem = 0;
    pdsp_bool_t neg = PDSP_FALSE;
    PDSP_ASSERT(a6c_out != NULL);
    /* Clamp to -32767 */
    if (i16_in == -32768)
    {
        i16_in = -32767;
    }
    /* Handle negative numbers. */
    if (i16_in < 0)
    {
        i16_in = -i16_in;
        neg = PDSP_TRUE;
    }
    /* Handle 0. */
    if (i16_in == 0)
    {
        a6c_out[idx--] = '0';
        a6c_out[idx--] = ' ';
        a6c_out[idx--] = ' ';
        a6c_out[idx--] = ' ';
        a6c_out[idx--] = ' ';
        a6c_out[idx--] = ' ';
    }
    else
    {
        /* Convert digits */
        while (idx >= 0)
        {
            if (i16_in != 0)
            {
                rem = i16_in % 10;
                a6c_out[idx--] = rem + '0';
                i16_in = i16_in / 10;
            }
            else
            {
                if (neg)
                {
                    a6c_out[idx--] = '-';
                    neg = PDSP_FALSE;
                }
                else
                {
                    a6c_out[idx--] = ' ';
                }
            }
        }
    }
    return &a6c_out[6];
}

pdsp_extern pdsp_char_t *
pdsp_u16_to_hex(pdsp_u16_t u16_in, pdsp_char_t *ach_out, pdsp_bool_t b_len4)
{
    static pdsp_char_t ch_nibble;
    PDSP_ASSERT(ach_out != NULL);
    if (b_len4 | (u16_in > 0xFFF))
    {
        /* First digit (left to right). Hint: 'A' - 10 = '7' */
        ch_nibble = (pdsp_char_t)((u16_in >> 12) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        /* Second digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 8) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        /* Third digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        /* Fourth digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        return ach_out;
    }
    if (u16_in > 0xFF)
    {
        /* First digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 8) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        /* Second digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        /* Third digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        return ach_out;
    }
    if (u16_in > 0xF)
    {
        /* First digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        /* Second digit (left to right) */
        ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
        *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
        return ach_out;
    }
    /* Single digit (left to right) */
    ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
    *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
    return ach_out;
}

pdsp_extern pdsp_char_t *pdsp_u64_to_hex(pdsp_u64_t u64_in,
                                         pdsp_char_t *ach_out)
{
    PDSP_ASSERT(ach_out != NULL);
    ach_out = pdsp_u16_to_hex((pdsp_u16_t)((u64_in >> 48) & 0xFFFF), ach_out,
                              PDSP_TRUE);
    ach_out = pdsp_u16_to_hex((pdsp_u16_t)((u64_in >> 32) & 0xFFFF), ach_out,
                              PDSP_TRUE);
    ach_out = pdsp_u16_to_hex((pdsp_u16_t)((u64_in >> 16) & 0xFFFF), ach_out,
                              PDSP_TRUE);
    ach_out = pdsp_u16_to_hex((pdsp_u16_t)((u64_in >> 0) & 0xFFFF), ach_out,
                              PDSP_TRUE);
    return ach_out;
}

pdsp_extern pdsp_f32_t pdsp_map(pdsp_f32_t f32_in, pdsp_f32_t f32_in_lo,
                                pdsp_f32_t f32_in_hi, pdsp_f32_t f32_out_lo,
                                pdsp_f32_t f32_out_hi)
{
    if ((f32_in_hi - f32_in_lo) == 0.0f)
    {
        return (f32_out_hi + f32_out_lo) * 0.5f;
    }
    else
    {
        return (pdsp_divf((f32_out_hi - f32_out_lo), (f32_in_hi - f32_in_lo)) *
                    (f32_in - f32_in_lo) +
                f32_out_lo);
    }
}

pdsp_extern pdsp_u16_t pdsp_map_idx(pdsp_f32_t f32_in, pdsp_f32_t f32_in_lo,
                                    pdsp_f32_t f32_in_hi, pdsp_f32_t f32_idx_hi)
{
    pdsp_f32_t f32_index;
    f32_in = pdsp_minf(pdsp_maxf(f32_in, f32_in_lo), f32_in_hi);
    if ((f32_in_hi - f32_in_lo) == 0.0f)
    {
        f32_index = f32_idx_hi * 0.5f;
    }
    else
    {
        f32_index =
            pdsp_divf(f32_idx_hi, f32_in_hi - f32_in_lo) * (f32_in - f32_in_lo);
    }
    /* Float to int conversion is implementation specific. */
#if defined(F32_TO_INT_ROUNDS_TO_NEAREST)
    return (pdsp_u16_t)(f32_index - 0.5);
#elif defined(F32_TO_INT_ROUNDS_TOWARDS_ZERO)
    return (pdsp_u16_t)(f32_index);
#endif
}

pdsp_extern pdsp_f32_t pdsp_interpollate_2d(const pdsp_f32_t af32_x[],
                                            const pdsp_f32_t af32_y[],
                                            pdsp_u32_t u32_size,
                                            pdsp_f32_t f32_x_in)
{
    /* Index of higher array element. */
    pdsp_u32_t u32_idx_hi = 1U;
    /* Validate inputs. */
    PDSP_ASSERT((af32_x != NULL) && (af32_y != NULL) && u32_size);
    /* Find the higher array index >= 1. */
    while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
    {
        u32_idx_hi++;
    }
    /* Calculate the output. */
    return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
                    af32_y[u32_idx_hi - 1U], af32_y[u32_idx_hi]);
}

pdsp_extern void pdsp_array_set_f32(pdsp_f32_t af32_array[], pdsp_size_t s_size,
                                    pdsp_f32_t f32_value)
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT((af32_array != NULL) && s_size);
    for (u32_idx = 0; u32_idx < s_size; u32_idx++)
    {
        af32_array[u32_idx] = f32_value;
    }
}

pdsp_extern void pdsp_array_set_i16(pdsp_i16_t ai16_array[], pdsp_size_t s_size,
                                    pdsp_i16_t i16_value)
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT((ai16_array != NULL) && s_size);
    for (u32_idx = 0; u32_idx < s_size; u32_idx++)
    {
        ai16_array[u32_idx] = i16_value;
    }
}

pdsp_extern void pdsp_array_apply_f32(const pdsp_f32_t af32_in[],
                                      pdsp_f32_t af32_out[],
                                      pdsp_u32_t u32_size,
                                      pdsp_f32_t p_func(pdsp_f32_t))
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT((af32_in != NULL) && (af32_out != NULL) && u32_size &&
                (p_func != NULL));
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = p_func(af32_in[u32_idx]);
    }
}

pdsp_extern void pdsp_array_apply_i16(const pdsp_i16_t ai16_in[],
                                      pdsp_i16_t ai16_out[],
                                      pdsp_u32_t u32_size,
                                      pdsp_i16_t p_func(pdsp_i16_t))
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT((ai16_in != NULL) && (ai16_out != NULL) && u32_size &&
                (p_func != NULL));
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        ai16_out[u32_idx] = p_func(ai16_in[u32_idx]);
    }
}

pdsp_extern void pdsp_array_linspace_f32(pdsp_f32_t af32_out[],
                                         pdsp_u32_t u32_size,
                                         pdsp_f32_t f32_start,
                                         pdsp_f32_t f32_end)
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT((af32_out != NULL) && u32_size);
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] =
            pdsp_map((pdsp_f32_t)u32_idx, 0.0f, (pdsp_f32_t)u32_size - 1.0f,
                     f32_start, f32_end);
    }
}

pdsp_extern void pdsp_array_logspace_f32(pdsp_f32_t af32_out[],
                                         pdsp_u32_t u32_size,
                                         pdsp_f32_t f32_start,
                                         pdsp_f32_t f32_end)
{
    pdsp_u32_t u32_idx = 0;
    PDSP_ASSERT((af32_out != NULL) && u32_size);
    for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
    {
        af32_out[u32_idx] = powf(10.0f, pdsp_map((pdsp_f32_t)u32_idx, 0.0f,
                                                 (pdsp_f32_t)u32_size - 1.0f,
                                                 f32_start, f32_end));
    }
}

pdsp_extern void pdsp_hysteresis_value_clear(const pdsp_hyst_t *ps_data)
{
    PDSP_ASSERT(ps_data != NULL);
    ps_data->ps_var->b_state = PDSP_FALSE;
}

pdsp_extern pdsp_bool_t pdsp_hysteresis_value(const pdsp_hyst_t *ps_data,
                                              pdsp_f32_t f32_in)
{
    static pdsp_hyst_var_t *ps_var;
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_var = ps_data->ps_var;
    /* PDSP_FALSE or OFF state */
    if (f32_in > ps_data->f32_high)
    {
        ps_var->b_state = PDSP_TRUE;
    }
    /* PDSP_TRUE or ON state */
    else if (f32_in < ps_data->f32_low)
    {
        ps_var->b_state = PDSP_FALSE;
    }
    /* else: state does not change */
    return ps_var->b_state;
}

pdsp_extern void pdsp_hysteresis_list_clear(const pdsp_hyst_list_t *ps_data)
{
    PDSP_ASSERT(ps_data != NULL);
    ps_data->ps_var->u16_state = 0U;
}

pdsp_extern pdsp_u16_t pdsp_hysteresis_list(const pdsp_hyst_list_t *ps_data,
                                            pdsp_f32_t f32_in)
{
    static pdsp_hyst_list_var_t *ps_var;
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_var = ps_data->ps_var;
    /* upper boundary breached --> */
    if (f32_in >
        (ps_data->af32_thres[ps_var->u16_state + 1] + ps_data->f32_hyst))
    {
        if (ps_var->u16_state < ps_data->u16_size - 2)
        {
            ps_var->u16_state++;
        }
    }
    /* <-- lower boundary breached */
    else if (f32_in <
             (ps_data->af32_thres[ps_var->u16_state] - ps_data->f32_hyst))
    {
        if (ps_var->u16_state > 0U)
        {
            ps_var->u16_state--;
        }
    }
    /* else: state does not change */
    return ps_var->u16_state;
}

pdsp_extern void pdsp_hysteresis_time_clear(const pdsp_hyst_time_t *ps_data)
{
    PDSP_ASSERT(ps_data != NULL);
    ps_data->ps_var->b_state = PDSP_FALSE;
    ps_data->ps_var->f32_time = 0.0f;
}

pdsp_extern pdsp_bool_t pdsp_hysteresis_time(const pdsp_hyst_time_t *ps_data,
                                             pdsp_bool_t b_in)
{
    static pdsp_hyst_time_var_t *ps_var;
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_var = ps_data->ps_var;
    /* PDSP_FALSE or OFF state */
    if (!(ps_var->b_state) && b_in)
    {
        ps_var->f32_time += ps_data->f32_t_step;
        if (ps_var->f32_time > ps_data->f32_t_high)
        {
            ps_var->b_state = PDSP_TRUE;
            ps_var->f32_time = 0.0f;
            /* State change actions */
        }
        else
        {
            /* do nothing */
        }
    }
    /* PDSP_TRUE or ON state */
    else if ((ps_var->b_state) && !b_in)
    {
        ps_var->f32_time += ps_data->f32_t_step;
        if (ps_var->f32_time > ps_data->f32_t_low)
        {
            ps_var->b_state = PDSP_FALSE;
            ps_var->f32_time = 0.0f;
            /* State change actions */
        }
        else
        {
            /* do nothing */
        }
    }
    /* PDSP_FALSE && !b_in || PDSP_TRUE && b_in */
    else
    {
        ps_var->f32_time = 0.0f;
    }
    return ps_var->b_state;
}

pdsp_extern void pdsp_bit_write_u16(pdsp_u16_t *pu16_mem, pdsp_u16_t u16_bit,
                                    pdsp_bool_t b_value)
{
    PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
    if (b_value)
    {
        *pu16_mem |= (1 << u16_bit);
    }
    else
    {
        *pu16_mem &= ~(1 << u16_bit);
    }
}

pdsp_extern void pdsp_bit_write_u32(pdsp_u32_t *pu32_mem, pdsp_u16_t u16_bit,
                                    pdsp_bool_t b_value)
{
    PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
    if (b_value)
    {
        *pu32_mem |= (1 << u16_bit);
    }
    else
    {
        *pu32_mem &= ~(1 << u16_bit);
    }
}

pdsp_extern pdsp_bool_t pdsp_bit_read_u16(const pdsp_u16_t *pu16_mem,
                                          pdsp_u16_t u16_bit)
{
    PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
    return (pdsp_bool_t)((*pu16_mem >> u16_bit) & 1U);
}

pdsp_extern pdsp_bool_t pdsp_bit_read_u32(const pdsp_u32_t *pu32_mem,
                                          pdsp_u16_t u16_bit)
{
    PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
    return (pdsp_bool_t)((*pu32_mem >> u16_bit) & 1U);
}

pdsp_extern void pdsp_status_set(pdsp_u32_t *pu32_mem, pdsp_u32_t u32_mask)
{
    PDSP_ASSERT(pu32_mem != NULL);
    (*pu32_mem) |= u32_mask;
}

pdsp_extern void pdsp_status_clear(pdsp_u32_t *pu32_mem, pdsp_u32_t u32_mask)
{
    PDSP_ASSERT(pu32_mem != NULL);
    (*pu32_mem) &= ~u32_mask;
}

pdsp_extern pdsp_bool_t pdsp_status_get(pdsp_u32_t *pu32_mem,
                                        pdsp_u32_t u32_mask_true,
                                        pdsp_u32_t u32_mask_false)
{
    PDSP_ASSERT(pu32_mem != NULL);
    return ((*pu32_mem) & u32_mask_true) | ((~(*pu32_mem)) & u32_mask_false);
}

pdsp_extern void pdsp_signal_write_f32(const pdsp_signal_prop_t *ps_prop,
                                       pdsp_u64_t *pu64_mem,
                                       pdsp_f32_t f32_data)
{
    PDSP_ASSERT(ps_prop != NULL);
    pdsp_signal_write_u16(
        ps_prop, pu64_mem,
        (pdsp_u16_t)((f32_data * ps_prop->f32_gain) + ps_prop->f32_offset));
}

pdsp_extern pdsp_f32_t pdsp_signal_read_f32(const pdsp_signal_prop_t *ps_prop,
                                            pdsp_u64_t *pu64_mem)
{
    return pdsp_divf(((pdsp_f32_t)pdsp_signal_read_u16(ps_prop, pu64_mem) -
                      ps_prop->f32_offset),
                     ps_prop->f32_gain);
}

pdsp_extern void pdsp_signal_write_u16(const pdsp_signal_prop_t *ps_prop,
                                       pdsp_u64_t *pu64_mem,
                                       pdsp_u16_t u16_data)
{
    PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
    *pu64_mem |= ((pdsp_u64_t)(u16_data & pdsp_mask_i16[ps_prop->u16_length])
                  << ps_prop->u16_start);
}

pdsp_extern pdsp_u16_t pdsp_signal_read_u16(const pdsp_signal_prop_t *ps_prop,
                                            pdsp_u64_t *pu64_mem)
{
    PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
    return (pdsp_u16_t)((*pu64_mem >> ps_prop->u16_start) &
                        (pdsp_u64_t)pdsp_mask_i16[ps_prop->u16_length]);
}

pdsp_extern pdsp_f32_t pdsp_mean2w_f32(pdsp_f32_t f32_in0, pdsp_f32_t f32_in1,
                                       pdsp_f32_t f32_weight0)
{
    return (f32_in0 * f32_weight0) + (f32_in1 * (1.0f - f32_weight0));
}

pdsp_extern pdsp_f32_t pdsp_mean4_u16(pdsp_u16_t a4u16_in[])
{
    PDSP_ASSERT(a4u16_in != NULL);
    return 0.25f *
           (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
                        (pdsp_u32_t)a4u16_in[2] + (pdsp_u32_t)a4u16_in[3]);
}

pdsp_extern pdsp_f32_t pdsp_mean8_u16(pdsp_u16_t a8u16_in[])
{
    PDSP_ASSERT(a8u16_in != NULL);
    return 0.125f *
           (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
                        (pdsp_u32_t)a8u16_in[2] + (pdsp_u32_t)a8u16_in[3] +
                        (pdsp_u32_t)a8u16_in[4] + (pdsp_u32_t)a8u16_in[5] +
                        (pdsp_u32_t)a8u16_in[6] + (pdsp_u32_t)a8u16_in[7]);
}

pdsp_extern void pdsp_queue_init(const pdsp_queue_t *ps_data)
{
    PDSP_ASSERT(ps_data != NULL);
    ps_data->ps_var->i16_count = 0;
    ps_data->ps_var->i16_head = ps_data->i16_size - 1;
    ps_data->ps_var->i16_tail = 0;
}

pdsp_extern pdsp_bool_t pdsp_queue_is_not_empty(const pdsp_queue_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    return ps_data->ps_var->i16_count > 0;
}

pdsp_extern pdsp_bool_t pdsp_queue_is_not_full(const pdsp_queue_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    return ps_data->ps_var->i16_count < ps_data->i16_size;
}

pdsp_extern void pdsp_queue_advance_head(const pdsp_queue_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_data->ps_var->i16_head++;
    if (ps_data->ps_var->i16_head >= ps_data->i16_size)
    {
        ps_data->ps_var->i16_head = 0;
    }
    ps_data->ps_var->i16_count++;
}

pdsp_extern void pdsp_queue_advance_tail(const pdsp_queue_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_data->ps_var->i16_tail++;
    if (ps_data->ps_var->i16_tail >= ps_data->i16_size)
    {
        ps_data->ps_var->i16_tail = 0;
    }
    ps_data->ps_var->i16_count--;
}

pdsp_extern void pdsp_queue_push_ch(const pdsp_queue_t *ps_data,
                                    pdsp_char_t ch_in)
{
    PDSP_ASSERT(ps_data != NULL);
    pdsp_queue_advance_head(ps_data);
    ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = ch_in;
}

pdsp_extern void pdsp_queue_push_i16(const pdsp_queue_t *ps_data,
                                     pdsp_i16_t i16_in)
{
    PDSP_ASSERT(ps_data != NULL);
    pdsp_queue_advance_head(ps_data);
    ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i16_in;
}

pdsp_extern void pdsp_queue_push_i32(const pdsp_queue_t *ps_data,
                                     pdsp_i32_t i32_in)
{
    PDSP_ASSERT(ps_data != NULL);
    pdsp_queue_advance_head(ps_data);
    ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i32_in;
}

pdsp_extern void pdsp_queue_push_f32(const pdsp_queue_t *ps_data,
                                     pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_data != NULL);
    pdsp_queue_advance_head(ps_data);
    ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = f32_in;
}

pdsp_extern void pdsp_queue_push_u64(const pdsp_queue_t *ps_data,
                                     pdsp_u64_t u64_in)
{
    PDSP_ASSERT(ps_data != NULL);
    pdsp_queue_advance_head(ps_data);
    ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = u64_in;
}

pdsp_extern pdsp_char_t pdsp_queue_pop_ch(const pdsp_queue_t *ps_data)
{
    pdsp_char_t ch_out;
    PDSP_ASSERT(ps_data != NULL);
    ch_out = ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
    pdsp_queue_advance_tail(ps_data);
    return ch_out;
}

pdsp_extern pdsp_i16_t pdsp_queue_pop_i16(const pdsp_queue_t *ps_data)
{
    pdsp_i16_t i16_out;
    PDSP_ASSERT(ps_data != NULL);
    i16_out = ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
    pdsp_queue_advance_tail(ps_data);
    return i16_out;
}

pdsp_extern pdsp_i32_t pdsp_queue_pop_i32(const pdsp_queue_t *ps_data)
{
    pdsp_i32_t i32_out;
    PDSP_ASSERT(ps_data != NULL);
    i32_out = ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
    pdsp_queue_advance_tail(ps_data);
    return i32_out;
}

pdsp_extern pdsp_f32_t pdsp_queue_pop_f32(const pdsp_queue_t *ps_data)
{
    pdsp_f32_t f32_out;
    PDSP_ASSERT(ps_data != NULL);
    f32_out = ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
    pdsp_queue_advance_tail(ps_data);
    return f32_out;
}

pdsp_extern pdsp_u64_t pdsp_queue_pop_u64(const pdsp_queue_t *ps_data)
{
    pdsp_u64_t u64_out;
    PDSP_ASSERT(ps_data != NULL);
    u64_out = ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
    pdsp_queue_advance_tail(ps_data);
    return u64_out;
}

/*-----------------------------------------------------------------------------
SIGNAL
-----------------------------------------------------------------------------*/

pdsp_extern pdsp_f32_t pdsp_ain(const pdsp_ain_t *ps_data, pdsp_f32_t f32_raw)
{
    PDSP_ASSERT(ps_data != NULL);
    if (ps_data->ps_ovr->u23_ovr_mode == PDSP_OVERRIDE_OFF)
    {
        return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset);
    }
    else if (ps_data->ps_ovr->u23_ovr_mode == PDSP_OVERRIDE_ON)
    {
        return ps_data->ps_ovr->f32_value;
    }
    else if (ps_data->ps_ovr->u23_ovr_mode == PDSP_OVERRIDE_INJECT)
    {
        return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
               ps_data->ps_ovr->f32_value;
    }
    else /* (ps_data->ps_ovr->u23_ovr_mode == PDSP_OVERRIDE_RAW) */
    {
        return f32_raw;
    }
}

pdsp_extern void pdsp_ain_ovr_enable(const pdsp_ain_t *ps_data,
                                     pdsp_f32_t f32_value)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_ovr != NULL));
    ps_data->ps_ovr->u23_ovr_mode = PDSP_OVERRIDE_ON;
    ps_data->ps_ovr->f32_value = f32_value;
}

pdsp_extern void pdsp_ain_ovr_disable(const pdsp_ain_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_ovr != NULL));
    ps_data->ps_ovr->u23_ovr_mode = PDSP_OVERRIDE_OFF;
}

pdsp_extern void pdsp_ain_ovr_inject(const pdsp_ain_t *ps_data,
                                     pdsp_f32_t f32_value)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_ovr != NULL));
    ps_data->ps_ovr->u23_ovr_mode = PDSP_OVERRIDE_INJECT;
    ps_data->ps_ovr->f32_value = f32_value;
}

pdsp_extern pdsp_f32_t pdsp_ain_calibrate_gain(pdsp_f32_t f32_gain_old,
                                               pdsp_f32_t f32_ref,
                                               pdsp_f32_t f32_raw)
{
    if (f32_raw == 0.0f)
    {
        f32_raw = f32_ref;
    }
    return pdsp_divf(f32_gain_old * f32_ref, f32_raw);
}

pdsp_extern pdsp_f32_t pdsp_ain_calibrate_offset(pdsp_f32_t f32_offset_old,
                                                 pdsp_f32_t f32_ref,
                                                 pdsp_f32_t f32_raw)
{
    return f32_offset_old + (f32_ref - f32_raw);
}

pdsp_extern void pdsp_minmax_clear(pdsp_minmax_var_t *ps_var)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_min = PDSP_POS_INF;
    ps_var->f32_max = PDSP_NEG_INF;
    ps_var->f32_delta = 0.0f;
}

pdsp_extern void pdsp_minmax(pdsp_minmax_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_min = pdsp_minf(ps_var->f32_min, f32_in);
    ps_var->f32_max = pdsp_maxf(ps_var->f32_max, f32_in);
    ps_var->f32_delta = ps_var->f32_max - ps_var->f32_min;
}

pdsp_extern void pdsp_expavg_clear(const pdsp_expavg_t *ps_data)
{
    PDSP_ASSERT(ps_data != NULL);
    ps_data->ps_var->f32_x1 = 0.0f;
}

pdsp_extern pdsp_f32_t pdsp_expavg(const pdsp_expavg_t *ps_data,
                                   pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_data->ps_var->f32_x1 +=
        ps_data->f32_tau * (f32_in - ps_data->ps_var->f32_x1);
    return ps_data->ps_var->f32_x1;
}

pdsp_extern void pdsp_1p1z_c2d(pdsp_1p1z_t *ps_coeff_in,
                               pdsp_1p1z_inv_t *ps_coeff_out, pdsp_f32_t f32_ts)
{
    pdsp_f32_t f32_K = pdsp_divf(2.0f, f32_ts);
    pdsp_f32_t f32_a0_inv =
        pdsp_divf(1.0f, ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
    ps_coeff_out->f32_b0 =
        f32_a0_inv * (ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
    ps_coeff_out->f32_b1 =
        f32_a0_inv * (ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K);
    ps_coeff_out->f32_a1 =
        f32_a0_inv * (ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K);
}

pdsp_extern void pdsp_2p2z_c2d(pdsp_2p2z_t *ps_coeff_in,
                               pdsp_2p2z_inv_t *ps_coeff_out, pdsp_f32_t f32_ts)
{
    pdsp_f32_t f32_K = pdsp_divf(2.0f, f32_ts);
    pdsp_f32_t f32_K2 = f32_K * f32_K;
    pdsp_f32_t f32_a0_inv =
        pdsp_divf(1.0f, ps_coeff_in->f32_a2 * f32_K2 +
                            ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
    /* coeff b0 */
    ps_coeff_out->f32_b0 =
        f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 +
                      ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
    /* coeff b1 */
    ps_coeff_out->f32_b1 = f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 -
                                         2.0f * ps_coeff_in->f32_b2 * f32_K2);
    /* coeff b2 */
    ps_coeff_out->f32_b2 =
        f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 -
                      ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
    /* coeff a1 */
    ps_coeff_out->f32_a1 = f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 -
                                         2.0f * ps_coeff_in->f32_a2 * f32_K2);
    /* coeff a2 */
    ps_coeff_out->f32_a2 =
        f32_a0_inv * (ps_coeff_in->f32_a2 * f32_K2 +
                      ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
}

pdsp_extern void pdsp_3p3z_c2d(pdsp_3p3z_t *ps_coeff_in,
                               pdsp_3p3z_inv_t *ps_coeff_out, pdsp_f32_t f32_ts)
{
    pdsp_f32_t f32_K = pdsp_divf(2.0f, f32_ts);
    pdsp_f32_t f32_K2 = f32_K * f32_K;
    pdsp_f32_t f32_K3 = f32_K * f32_K * f32_K;
    pdsp_f32_t f32_a0_inv = pdsp_divf(
        1.0f, ps_coeff_in->f32_a3 * f32_K3 + ps_coeff_in->f32_a2 * f32_K2 +
                  ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
    /* coeff b0 */
    ps_coeff_out->f32_b0 =
        f32_a0_inv *
        (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 +
         ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
    /* coeff b1 */
    ps_coeff_out->f32_b1 =
        f32_a0_inv * (-3.0f * ps_coeff_in->f32_b3 * f32_K3 -
                      2.0f * ps_coeff_in->f32_b2 * f32_K2 -
                      ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
    /* coeff b2 */
    ps_coeff_out->f32_b2 = f32_a0_inv * (3.0f * ps_coeff_in->f32_b3 * f32_K3 +
                                         ps_coeff_in->f32_b2 * f32_K2);
    /* coeff b3 */
    ps_coeff_out->f32_b3 = f32_a0_inv * (-3.0f * ps_coeff_in->f32_b3 * f32_K3);
    /* coeff a1 */
    ps_coeff_out->f32_a1 =
        f32_a0_inv * (-3.0f * ps_coeff_in->f32_a3 * f32_K3 -
                      2.0f * ps_coeff_in->f32_a2 * f32_K2 -
                      ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
    /* coeff a2 */
    ps_coeff_out->f32_a2 = f32_a0_inv * (3.0f * ps_coeff_in->f32_a3 * f32_K3 +
                                         ps_coeff_in->f32_a2 * f32_K2);
    /* coeff a3 */
    ps_coeff_out->f32_a3 = f32_a0_inv * (-3.0f * ps_coeff_in->f32_a3 * f32_K3);
}

pdsp_extern void pdsp_df21_clear(pdsp_1p1z_var_t *ps_var)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_x1 = 0.0f;
}

pdsp_extern pdsp_f32_t pdsp_df21(pdsp_1p1z_inv_t *ps_data,
                                 pdsp_1p1z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
    ps_var->f32_x1 =
        (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
    return ps_var->f32_out;
}

pdsp_extern pdsp_f32_t pdsp_df21_pre(pdsp_1p1z_inv_t *ps_data,
                                     pdsp_1p1z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
    return ps_var->f32_out;
}

pdsp_extern void pdsp_df21_post(pdsp_1p1z_inv_t *ps_data,
                                pdsp_1p1z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_x1 =
        (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
}

pdsp_extern void pdsp_df22_clear(pdsp_2p2z_var_t *ps_var)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_x1 = 0.0f;
    ps_var->f32_x2 = 0.0f;
}

pdsp_extern pdsp_f32_t pdsp_df22(pdsp_2p2z_inv_t *ps_data,
                                 pdsp_2p2z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
    ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
                     (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
    ps_var->f32_x2 =
        (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
    return ps_var->f32_out;
}

pdsp_extern pdsp_f32_t pdsp_df22_pre(pdsp_2p2z_inv_t *ps_data,
                                     pdsp_2p2z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
    return ps_var->f32_out;
}

pdsp_extern void pdsp_df22_post(pdsp_2p2z_inv_t *ps_data,
                                pdsp_2p2z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
                     (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
    ps_var->f32_x2 =
        (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
}

pdsp_extern void pdsp_df23_clear(pdsp_3p3z_var_t *ps_var)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_x1 = 0.0f;
    ps_var->f32_x2 = 0.0f;
    ps_var->f32_x3 = 0.0f;
}

pdsp_extern pdsp_f32_t pdsp_df23(pdsp_3p3z_inv_t *ps_data,
                                 pdsp_3p3z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
    ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
                     (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
    ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
                     (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
    ps_var->f32_x3 =
        (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
    return ps_var->f32_out;
}

pdsp_extern pdsp_f32_t pdsp_df23_pre(pdsp_3p3z_inv_t *ps_data,
                                     pdsp_3p3z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
    return ps_var->f32_out;
}

pdsp_extern void pdsp_df23_post(pdsp_3p3z_inv_t *ps_data,
                                pdsp_3p3z_var_t *ps_var, pdsp_f32_t f32_in)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
    ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
                     (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
    ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
                     (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
    ps_var->f32_x3 =
        (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
}

pdsp_extern void pdsp_med3_clear(pdsp_med3_var_t *ps_var)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_x1 = 0.0f;
    ps_var->f32_x2 = 0.0f;
}

pdsp_extern pdsp_f32_t pdsp_med3(pdsp_med3_var_t *ps_var, pdsp_f32_t f32_in)
{
    static pdsp_f32_t out;
    PDSP_ASSERT(ps_var != NULL);
    out = ((ps_var->f32_x2 + ps_var->f32_x1 + f32_in) -
           pdsp_minf(ps_var->f32_x2, pdsp_minf(ps_var->f32_x1, f32_in)) -
           pdsp_maxf(ps_var->f32_x2, pdsp_maxf(ps_var->f32_x1, f32_in)));
    /* store history x[k-2] = x[k-1] */
    ps_var->f32_x2 = ps_var->f32_x1;
    /* store history x[k-1] = x[k] */
    ps_var->f32_x1 = f32_in;
    /* Return median. */
    return out;
}

pdsp_extern void pdsp_rollsum_init(const pdsp_rollsum_t *ps_data,
                                   pdsp_i16_t i16_win_size)
{
    static const pdsp_queue_t *ps_queue;
    static pdsp_queue_var_t *ps_queue_var;
    static pdsp_rollsum_var_t *ps_roll_var;
    PDSP_ASSERT(ps_data != NULL);
    ps_queue = ps_data->ps_queue;
    ps_queue_var = ps_queue->ps_var;
    ps_roll_var = ps_data->ps_var;

    ps_roll_var->f32_sum = 0.0f;
    ps_queue_var->i16_count = ps_queue->i16_size;
    ps_queue_var->i16_head = ps_queue->i16_size - 1;
    if (i16_win_size <= ps_queue->i16_size)
    {
        ps_queue_var->i16_tail = ps_queue->i16_size - i16_win_size;
        ps_roll_var->f32_win_size_inv =
            pdsp_divf(1.0f, (pdsp_f32_t)i16_win_size);
    }
    else
    {
        ps_queue_var->i16_tail = 0;
        ps_roll_var->f32_win_size_inv =
            pdsp_divf(1.0f, (pdsp_f32_t)ps_queue->i16_size);
    }
    pdsp_array_set_f32(ps_queue->pav_data, ps_queue->i16_size, 0.0f);
}

pdsp_extern pdsp_f32_t pdsp_rollsum(const pdsp_rollsum_t *ps_data,
                                    pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_data != NULL);
    /* Subtract tail and advance  */
    ps_data->ps_var->f32_sum -= pdsp_queue_pop_f32(ps_data->ps_queue);
    /* Add the head value to the sum state variable. */
    ps_data->ps_var->f32_sum += f32_in;
    /* Place new scaled value to head position. */
    pdsp_queue_push_f32(ps_data->ps_queue, f32_in);
    return ps_data->ps_var->f32_sum;
}

pdsp_extern void pdsp_rollavg_init(const pdsp_rollsum_t *ps_data,
                                   pdsp_i16_t i16_win_size)
{
    PDSP_ASSERT(ps_data != NULL);
    pdsp_rollsum_init(ps_data, i16_win_size);
}

pdsp_extern pdsp_f32_t pdsp_rollavg(const pdsp_rollsum_t *ps_data,
                                    pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_data != NULL);
    return pdsp_rollsum(ps_data, f32_in * ps_data->ps_var->f32_win_size_inv);
}

pdsp_extern void pdsp_rollrms_init(const pdsp_rollsum_t *ps_data,
                                   pdsp_i16_t i16_win_size)
{
    PDSP_ASSERT(ps_data != NULL);
    pdsp_rollsum_init(ps_data, i16_win_size);
}

pdsp_extern pdsp_f32_t pdsp_rollrms(const pdsp_rollsum_t *ps_data,
                                    pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_data != NULL);
    return pdsp_sqrtf(pdsp_rollsum(
        ps_data, f32_in * f32_in * ps_data->ps_var->f32_win_size_inv));
}

/*-----------------------------------------------------------------------------
CONTROL
-----------------------------------------------------------------------------*/

pdsp_extern void pdsp_abc_dq_clear(pdsp_abc_dq_var_t *ps_var)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_alpha = 0.0f;
    ps_var->f32_beta = 0.0f;
    ps_var->f32_d = 0.0f;
    ps_var->f32_q = 0.0f;
    ps_var->f32_zero = 0.0f;
}

pdsp_extern void pdsp_abc_dq_pos(pdsp_abc_dq_var_t *ps_var, pdsp_f32_t f32_a,
                                 pdsp_f32_t f32_b, pdsp_f32_t f32_c,
                                 pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
    ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
    ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
    ps_var->f32_d =
        ps_var->f32_alpha * f32_cos_val + ps_var->f32_beta * f32_sin_val;
    ps_var->f32_q =
        -ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
}

pdsp_extern void pdsp_abc_dq_neg(pdsp_abc_dq_var_t *ps_var, pdsp_f32_t f32_a,
                                 pdsp_f32_t f32_b, pdsp_f32_t f32_c,
                                 pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
    ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
    ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
    ps_var->f32_d =
        ps_var->f32_alpha * f32_cos_val - ps_var->f32_beta * f32_sin_val;
    ps_var->f32_q =
        ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
}

pdsp_extern void pdsp_dq0_abc_init(pdsp_dq_abc_var_t *ps_var)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_alpha = 0.0f;
    ps_var->f32_beta = 0.0f;
    ps_var->f32_a = 0.0f;
    ps_var->f32_b = 0.0f;
    ps_var->f32_c = 0.0f;
}

pdsp_extern void pdsp_dq0_abc(pdsp_dq_abc_var_t *ps_var, pdsp_f32_t f32_d,
                              pdsp_f32_t f32_q, pdsp_f32_t f32_z,
                              pdsp_f32_t f32_sin_val, pdsp_f32_t f32_cos_val)
{
    PDSP_ASSERT(ps_var != NULL);
    ps_var->f32_alpha = f32_d * f32_cos_val - f32_q * f32_sin_val;
    ps_var->f32_beta = f32_d * f32_sin_val + f32_q * f32_cos_val;
    ps_var->f32_a = ps_var->f32_alpha + 0.5f * f32_z;
    ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
                    0.5f * f32_z;
    ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
                    0.5f * f32_z;
}

pdsp_extern void pdsp_pi_clear(pdsp_pi_t *ps_data)
{
    static pdsp_pi_var_t *ps_var;
    PDSP_ASSERT(ps_data != NULL);
    ps_var = ps_data->ps_var;
    ps_var->i16_active = 0U;
    ps_var->i16_param_idx = 0U;
    ps_var->f32_x0 = 0.0f;
    ps_var->f32_x1 = 0.0f;
}

pdsp_extern void pdsp_pi2_clear(pdsp_pi2_t *ps_data)
{
    static pdsp_pi2_var_t *ps_var;
    PDSP_ASSERT(ps_data != NULL);
    ps_var = ps_data->ps_var;
    ps_var->i16_active = 0U;
    ps_var->i16_param_idx0 = 0U;
    ps_var->i16_param_idx1 = 0U;
    ps_var->f32_x0 = 0.0f;
    ps_var->f32_x1 = 0.0f;
}

pdsp_extern void pdsp_pi4_clear(pdsp_pi4_t *ps_data)
{
    static pdsp_pi4_var_t *ps_var;
    PDSP_ASSERT(ps_data != NULL);
    ps_var = ps_data->ps_var;
    ps_var->i16_active = 0U;
    ps_var->i16_param_idx0 = 0U;
    ps_var->i16_param_idx1 = 0U;
    ps_var->i16_param_idx2 = 0U;
    ps_var->i16_param_idx3 = 0U;
    ps_var->f32_x0 = 0.0f;
    ps_var->f32_x1 = 0.0f;
}

pdsp_extern pdsp_f32_t pdsp_pi(pdsp_pi_t *ps_data, pdsp_f32_t f32_error)
{
    static pdsp_f32_t f32_out;
    static pdsp_f32_t f32_sum;
    static pdsp_pi_var_t *ps_var;
    static pdsp_pi_err_param_t *ps_param;
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
                (ps_data->pas_param != NULL));
    ps_var = ps_data->ps_var;
    ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
    /* Calculate integral path, including saturation delta. */
    ps_var->f32_x0 +=
        (f32_error * ps_param->f32_ki + ps_var->f32_x1 * ps_param->f32_ks);
    /* Calculate the sum of integral and proportional part. */
    f32_sum = f32_error * ps_param->f32_kp + ps_var->f32_x0;
    /* Apply saturation. */
    f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
    /* Store saturation delta. */
    ps_var->f32_x1 = f32_out - f32_sum;
    return f32_out;
}

pdsp_extern pdsp_f32_t pdsp_pi2(pdsp_pi2_t *ps_data, pdsp_f32_t f32_error0,
                                pdsp_f32_t f32_error1)
{
    static pdsp_f32_t f32_out;
    static pdsp_f32_t f32_sum;
    static pdsp_pi_err_param_t *ps_param0;
    static pdsp_pi_err_param_t *ps_param1;
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
                (ps_data->pas_param0 != NULL) && (ps_data->pas_param1 != NULL));
    ps_param0 = &ps_data->pas_param0[ps_data->ps_var->i16_param_idx0];
    ps_param1 = &ps_data->pas_param1[ps_data->ps_var->i16_param_idx1];
    /* Run controller */
    if ((f32_error0 * ps_param0->f32_ka) < (f32_error1 * ps_param1->f32_ka))
    {
        ps_data->ps_var->i16_active = 0;
        /* Calculate integral path, including saturation delta. */
        ps_data->ps_var->f32_x0 += f32_error0 * ps_param0->f32_ki +
                                   ps_data->ps_var->f32_x1 * ps_param0->f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error0 * ps_param0->f32_kp + ps_data->ps_var->f32_x0;
    }
    else
    {
        ps_data->ps_var->i16_active = 1;
        /* Calculate integral path, including saturation delta. */
        ps_data->ps_var->f32_x0 += f32_error1 * ps_param1->f32_ki +
                                   ps_data->ps_var->f32_x1 * ps_param1->f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error1 * ps_param1->f32_kp + ps_data->ps_var->f32_x0;
    }
    /* Apply saturation. */
    f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
    /* Store saturation delta. */
    ps_data->ps_var->f32_x1 = f32_out - f32_sum;
    return f32_out;
}

pdsp_extern pdsp_f32_t pdsp_pi4(pdsp_pi4_t *ps_data, pdsp_f32_t f32_error0,
                                pdsp_f32_t f32_error1, pdsp_f32_t f32_error2,
                                pdsp_f32_t f32_error3)
{
    static pdsp_f32_t f32_out;
    static pdsp_f32_t f32_sum;
    static pdsp_pi4_var_t *ps_var;
    static pdsp_pi_err_param_t *ps_param0;
    static pdsp_pi_err_param_t *ps_param1;
    static pdsp_pi_err_param_t *ps_param2;
    static pdsp_pi_err_param_t *ps_param3;
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
                (ps_data->pas_param0 != NULL) &&
                (ps_data->pas_param1 != NULL) &&
                (ps_data->pas_param2 != NULL) && (ps_data->pas_param3 != NULL));
    ps_var = ps_data->ps_var;
    ps_param0 = &ps_data->pas_param0[ps_var->i16_param_idx0];
    ps_param1 = &ps_data->pas_param1[ps_var->i16_param_idx1];
    ps_param2 = &ps_data->pas_param2[ps_var->i16_param_idx2];
    ps_param3 = &ps_data->pas_param3[ps_var->i16_param_idx3];
    /* Active decision */
    ps_var->i16_active = 0;
    ps_var->i16_active +=
        (f32_error0 * ps_param0->f32_ka) > (f32_error1 * ps_param1->f32_ka);
    ps_var->i16_active +=
        (f32_error1 * ps_param1->f32_ka) > (f32_error2 * ps_param2->f32_ka);
    ps_var->i16_active +=
        (f32_error2 * ps_param2->f32_ka) > (f32_error3 * ps_param3->f32_ka);
    /* Run controller */
    if (ps_var->i16_active == 0)
    {
        /* Calculate integral path, including saturation delta. */
        ps_var->f32_x0 +=
            f32_error0 * ps_param0->f32_ki + ps_var->f32_x1 * ps_param0->f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error0 * ps_param0->f32_kp + ps_var->f32_x0;
    }
    if (ps_var->i16_active == 1)
    {
        /* Calculate integral path, including saturation delta. */
        ps_var->f32_x0 +=
            f32_error1 * ps_param1->f32_ki + ps_var->f32_x1 * ps_param1->f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error1 * ps_param1->f32_kp + ps_var->f32_x0;
    }
    if (ps_var->i16_active == 2)
    {
        /* Calculate integral path, including saturation delta. */
        ps_var->f32_x0 +=
            f32_error2 * ps_param2->f32_ki + ps_var->f32_x1 * ps_param2->f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error2 * ps_param2->f32_kp + ps_var->f32_x0;
    }
    if (ps_var->i16_active == 3)
    {
        /* Calculate integral path, including saturation delta. */
        ps_var->f32_x0 +=
            f32_error3 * ps_param3->f32_ki + ps_var->f32_x1 * ps_param3->f32_ks;
        /* Calculate the sum of integral and proportional part. */
        f32_sum = f32_error3 * ps_param3->f32_kp + ps_var->f32_x0;
    }
    /* Apply saturation. */
    f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
    /* Store saturation delta. */
    ps_var->f32_x1 = f32_out - f32_sum;
    return f32_out;
}

pdsp_extern void pdsp_pi_set(pdsp_pi_t *ps_data, pdsp_f32_t f32_out)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    /* Set integral value to out_value. */
    ps_data->ps_var->f32_x0 =
        pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_out));
    /* Set saturation memory to 0. */
    ps_data->ps_var->f32_x1 = 0.0f;
}

pdsp_extern void pdsp_pi2_set(pdsp_pi2_t *ps_data, pdsp_f32_t f32_out)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    /* Set integral value to out_value. */
    ps_data->ps_var->f32_x0 =
        pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_out));
    /* Set saturation memory to 0. */
    ps_data->ps_var->f32_x1 = 0.0f;
}

pdsp_extern void pdsp_pi4_set(pdsp_pi4_t *ps_data, pdsp_f32_t f32_out)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    /* Set integral value to out_value. */
    ps_data->ps_var->f32_x0 =
        pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_out));
    /* Set saturation memory to 0. */
    ps_data->ps_var->f32_x1 = 0.0f;
}

pdsp_extern void pdsp_setp_init(pdsp_setp_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->f32_x1 = 0.0f;
    ps_state->f32_dest = 0.0f;
}

pdsp_extern pdsp_f32_t pdsp_setp_ramp(pdsp_setp_t *ps_state,
                                      const pdsp_setp_param_t *ps_param)
{
    PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
    ps_state->f32_x1 =
        ps_state->f32_x1 +
        pdsp_maxf(pdsp_minf(ps_state->f32_dest - ps_state->f32_x1,
                            ps_param->f32_step),
                  -ps_param->f32_step);
    return ps_state->f32_x1;
}

pdsp_extern pdsp_f32_t pdsp_setp_exp(pdsp_setp_t *ps_state,
                                     const pdsp_setp_param_t *ps_param)
{
    PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
    ps_state->f32_x1 =
        ps_state->f32_x1 +
        ps_param->f32_step * (ps_state->f32_dest - ps_state->f32_x1);
    return ps_state->f32_x1;
}

pdsp_extern pdsp_status_t pdsp_setp_set_dest(pdsp_setp_t *ps_state,
                                             const pdsp_setp_param_t *ps_param,
                                             pdsp_f32_t f32_dest)
{
    PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
    ps_state->f32_dest =
        pdsp_maxf(pdsp_minf(f32_dest, ps_param->f32_max), ps_param->f32_min);
    return PDSP_OK;
}

pdsp_extern pdsp_f32_t pdsp_setp_step(pdsp_setp_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->f32_x1 = ps_state->f32_dest;
    return ps_state->f32_x1;
}

pdsp_extern pdsp_f32_t pdsp_setp_reset(pdsp_setp_t *ps_state,
                                       const pdsp_setp_param_t *ps_param,
                                       pdsp_f32_t f32_value)
{
    PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
    ps_state->f32_x1 =
        pdsp_maxf(pdsp_minf(f32_value, ps_param->f32_max), ps_param->f32_min);
    return ps_state->f32_x1;
}

pdsp_extern pdsp_bool_t pdsp_setp_reached(pdsp_setp_t *ps_state,
                                          pdsp_f32_t f32_tol)
{
    PDSP_ASSERT(ps_state != NULL);
    return (pdsp_bool_t)(fabsf(ps_state->f32_x1 - ps_state->f32_dest) <
                         f32_tol);
}

pdsp_extern pdsp_status_t pdsp_saw_init(pdsp_saw_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->f32_x0 = 0.0f;
    return PDSP_OK;
}

pdsp_extern pdsp_f32_t pdsp_saw(pdsp_saw_t *ps_state,
                                const pdsp_saw_param_t *ps_param)
{
    PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
    ps_state->f32_x0 += ps_param->f32_step;
    if (ps_state->f32_x0 > ps_param->f32_out_high)
    {
        ps_state->f32_x0 = 0.0f;
        return 0.0f;
    }
    else
    {
        return ps_state->f32_x0;
    }
}

pdsp_extern pdsp_f32_t pdsp_saw_shift(pdsp_f32_t f32_in,
                                      const pdsp_saw_param_t *ps_param,
                                      pdsp_f32_t f32_phase)
{
    PDSP_ASSERT(ps_param != NULL);
    f32_in += f32_phase;
    if (f32_in > ps_param->f32_out_high)
    {
        f32_in -= ps_param->f32_out_high;
        return f32_in;
    }
    else
    {
        return f32_in;
    }
}

pdsp_extern pdsp_status_t
pdsp_dpll_1ph_notch_init(pdsp_dpll_1ph_notch_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->upd[0] = 0.0f;
    ps_state->upd[1] = 0.0f;
    ps_state->upd[2] = 0.0f;
    ps_state->y_notch1[0] = 0.0f;
    ps_state->y_notch1[1] = 0.0f;
    ps_state->y_notch1[2] = 0.0f;
    ps_state->y_notch2[0] = 0.0f;
    ps_state->y_notch2[1] = 0.0f;
    ps_state->y_notch2[2] = 0.0f;
    ps_state->ylf[0] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->theta = 0.0f;
    ps_state->cosine = 0.0f;
    ps_state->sine = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

pdsp_extern pdsp_status_t pdsp_dpll_1ph_notch(pdsp_dpll_1ph_notch_t *ps_state,
                                              pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state != NULL);
    /* Phase detector */
    ps_state->upd[0] = f32_in * ps_state->cosine;
    /* Notch filter. */
    ps_state->y_notch1[0] =
        (-ps_state->y_notch1[1] * ps_state->notch_coeff.f32_a1 -
         ps_state->y_notch1[2] * ps_state->notch_coeff.f32_a2 +
         ps_state->upd[0] * ps_state->notch_coeff.f32_b0 +
         ps_state->upd[1] * ps_state->notch_coeff.f32_b1 +
         ps_state->upd[2] * ps_state->notch_coeff.f32_b2);
    ps_state->y_notch2[0] =
        (-ps_state->y_notch2[1] * ps_state->notch_coeff.f32_a1 -
         ps_state->y_notch2[2] * ps_state->notch_coeff.f32_a2 +
         ps_state->y_notch1[0] * ps_state->notch_coeff.f32_b0 +
         ps_state->y_notch1[1] * ps_state->notch_coeff.f32_b1 +
         ps_state->y_notch1[2] * ps_state->notch_coeff.f32_b2);
    /* Loop filter. */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->y_notch2[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->y_notch2[1]);
    // ps_state->ylf[0] = (ps_state->ylf[0]>100)?100:ps_state->ylf[0];
    // ps_state->ylf[0] = (ps_state->ylf[0]<-100)?-100:ps_state->ylf[0];

    /* Update array elements */
    ps_state->upd[2] = ps_state->upd[1];
    ps_state->upd[1] = ps_state->upd[0];
    ps_state->y_notch1[2] = ps_state->y_notch1[1];
    ps_state->y_notch1[1] = ps_state->y_notch1[0];
    ps_state->y_notch2[2] = ps_state->y_notch2[1];
    ps_state->y_notch2[1] = ps_state->y_notch2[0];
    ps_state->ylf[1] = ps_state->ylf[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta =
        ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
    if (ps_state->theta > PDSP_2_PI_F)
    {
        ps_state->theta = ps_state->theta - PDSP_2_PI_F;
    }
    ps_state->sine = (pdsp_f32_t)pdsp_sinf(ps_state->theta);
    ps_state->cosine = (pdsp_f32_t)pdsp_cosf(ps_state->theta);
    return PDSP_OK;
}

pdsp_extern pdsp_status_t
pdsp_dpll_1ph_sogi_init(pdsp_dpll_1ph_sogi_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->u[0] = 0.0f;
    ps_state->u[1] = 0.0f;
    ps_state->u[2] = 0.0f;
    ps_state->osg_u[0] = 0.0f;
    ps_state->osg_u[1] = 0.0f;
    ps_state->osg_u[2] = 0.0f;
    ps_state->osg_qu[0] = 0.0f;
    ps_state->osg_qu[1] = 0.0f;
    ps_state->osg_qu[2] = 0.0f;
    ps_state->u_Q[0] = 0.0f;
    ps_state->u_Q[1] = 0.0f;
    ps_state->u_D[0] = 0.0f;
    ps_state->u_D[1] = 0.0f;
    ps_state->ylf[0] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->theta = 0.0f;
    ps_state->cosine = 0.0f;
    ps_state->sine = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

pdsp_extern pdsp_status_t pdsp_dpll_1ph_sogi(pdsp_dpll_1ph_sogi_t *ps_state,
                                             pdsp_f32_t f32_in)
{
    PDSP_ASSERT(ps_state != NULL);
    // Update the ps_state->u[0] with the grid value
    ps_state->u[0] = f32_in;
    /* Orthogonal sitgnal generator */
    ps_state->osg_u[0] =
        (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
        (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
        (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
    ps_state->osg_u[2] = ps_state->osg_u[1];
    ps_state->osg_u[1] = ps_state->osg_u[0];
    ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
                          (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
                          (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
                          (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
                          (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
    ps_state->osg_qu[2] = ps_state->osg_qu[1];
    ps_state->osg_qu[1] = ps_state->osg_qu[0];
    ps_state->u[2] = ps_state->u[1];
    ps_state->u[1] = ps_state->u[0];
    /* Park transform */
    ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
                       (ps_state->sine * ps_state->osg_qu[0]);
    ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
                       (ps_state->sine * ps_state->osg_u[0]);
    /* Loop filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    ps_state->u_Q[1] = ps_state->u_Q[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta =
        ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
    if (ps_state->theta > PDSP_2_PI_F)
    {
        ps_state->theta = ps_state->theta - PDSP_2_PI_F;
        // ps_state->theta=0;
    }
    ps_state->sine = (pdsp_f32_t)pdsp_sinf(ps_state->theta);
    ps_state->cosine = (pdsp_f32_t)pdsp_cosf(ps_state->theta);
    return PDSP_OK;
}

pdsp_extern pdsp_status_t
pdsp_dpll_1ph_sogi_fll_init(pdsp_dpll_1ph_sogi_fll_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->u[0] = 0.0f;
    ps_state->u[1] = 0.0f;
    ps_state->u[2] = 0.0f;
    ps_state->osg_u[0] = 0.0f;
    ps_state->osg_u[1] = 0.0f;
    ps_state->osg_u[2] = 0.0f;
    ps_state->osg_qu[0] = 0.0f;
    ps_state->osg_qu[1] = 0.0f;
    ps_state->osg_qu[2] = 0.0f;
    ps_state->u_Q[0] = 0.0f;
    ps_state->u_Q[1] = 0.0f;
    ps_state->u_D[0] = 0.0f;
    ps_state->u_D[1] = 0.0f;
    ps_state->ylf[0] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->wc = 0.0f;
    ps_state->theta = 0.0f;
    ps_state->cosine = 0.0f;
    ps_state->sine = 0.0f;
    ps_state->delta_t = 0.0f;
    ps_state->ef2 = 0.0f;
    ps_state->x3[0] = 0.0f;
    ps_state->x3[1] = 0.0f;
    ps_state->w_dash = 0.0f;
    ps_state->gamma = 0.0f;
    ps_state->k = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

pdsp_extern pdsp_status_t
pdsp_dpll_1ph_sogi_fll(pdsp_dpll_1ph_sogi_fll_t *ps_state, pdsp_f32_t f32_in)
{
    pdsp_f32_t osgx, osgy, temp;
    PDSP_ASSERT(ps_state != NULL);

    /* Update the ps_state->u[0] with the grid value */
    ps_state->u[0] = f32_in;
    /* Orthogonal Signal Generator */
    ps_state->osg_u[0] =
        (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
        (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
        (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
    ps_state->osg_u[2] = ps_state->osg_u[1];
    ps_state->osg_u[1] = ps_state->osg_u[0];
    ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
                          (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
                          (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
                          (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
                          (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
    ps_state->osg_qu[2] = ps_state->osg_qu[1];
    ps_state->osg_qu[1] = ps_state->osg_qu[0];
    ps_state->u[2] = ps_state->u[1];
    ps_state->u[1] = ps_state->u[0];
    /* Park Transform from alpha beta to d-q axis */
    ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
                       (ps_state->sine * ps_state->osg_qu[0]);
    ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
                       (ps_state->sine * ps_state->osg_u[0]);
    /* Loop Filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    // ps_state->ylf[0] = (ps_state->ylf[0]>0.5)?0.5:ps_state->ylf[0];
    // ps_state->ylf[0] = (ps_state->ylf[0]<-0.5)?-0.5:ps_state->ylf[0];
    ps_state->u_Q[1] = ps_state->u_Q[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta =
        ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
    if (ps_state->theta > PDSP_2_PI_F)
    {
        ps_state->theta = ps_state->theta - PDSP_2_PI_F;
    }
    ps_state->sine = pdsp_sinf(ps_state->theta);
    ps_state->cosine = pdsp_cosf(ps_state->theta);
    /* FLL */
    ps_state->ef2 =
        ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
        ps_state->gamma * ps_state->delta_t * -1.0f;
    ps_state->x3[0] = ps_state->x3[1] + ps_state->ef2;
    // ps_state->x3[0]= (ps_state->x3[0]>1.0)?1.0:ps_state->x3[0];
    // ps_state->x3[0]= (ps_state->x3[0]<-1.0)?-1.0:ps_state->x3[0];
    ps_state->x3[1] = ps_state->x3[0];
    ps_state->w_dash = ps_state->wc + ps_state->x3[0];
    ps_state->fn = ps_state->w_dash * PDSP_2_PI_INV_F;
    osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
    osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
            ps_state->delta_t);
    temp = pdsp_divf(1.0f, (osgx + osgy + 4.0f));
    ps_state->osg_coeff.osg_b0 = osgx * temp;
    ps_state->osg_coeff.osg_b2 = -1.0f * ps_state->osg_coeff.osg_b0;
    ps_state->osg_coeff.osg_a1 = ((2.0f * (4.0f - osgy)) * temp);
    ps_state->osg_coeff.osg_a2 = ((osgx - osgy - 4.0f) * temp);
    ps_state->osg_coeff.osg_qb0 = (ps_state->k * osgy * temp);
    ps_state->osg_coeff.osg_qb1 = (ps_state->osg_coeff.osg_qb0 * 2.0f);
    ps_state->osg_coeff.osg_qb2 = ps_state->osg_coeff.osg_qb0;
    return PDSP_OK;
}

pdsp_extern pdsp_status_t
pdsp_dpll_3ph_ddsrf_init(pdsp_dpll_3ph_ddsrf_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->d_p_decoupl = 0.0f;
    ps_state->d_n_decoupl = 0.0f;
    ps_state->q_p_decoupl = 0.0f;
    ps_state->q_n_decoupl = 0.0f;
    ps_state->cos_2theta = 0.0f;
    ps_state->sin_2theta = 0.0f;
    ps_state->y[0] = 0.0f;
    ps_state->y[1] = 0.0f;
    ps_state->x[0] = 0.0f;
    ps_state->x[1] = 0.0f;
    ps_state->w[0] = 0.0f;
    ps_state->w[1] = 0.0f;
    ps_state->z[0] = 0.0f;
    ps_state->z[1] = 0.0f;
    ps_state->k1 = 0.0f;
    ps_state->k2 = 0.0f;
    ps_state->d_p_decoupl_lpf = 0.0f;
    ps_state->d_n_decoupl_lpf = 0.0f;
    ps_state->q_p_decoupl_lpf = 0.0f;
    ps_state->q_n_decoupl_lpf = 0.0f;
    ps_state->v_q[0] = 0.0f;
    ps_state->v_q[1] = 0.0f;
    ps_state->theta[0] = 0.0f;
    ps_state->theta[1] = 0.0f;
    ps_state->ylf[0] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

pdsp_extern pdsp_status_t pdsp_dpll_3ph_ddsrf(pdsp_dpll_3ph_ddsrf_t *ps_state,
                                              pdsp_f32_t d_p, pdsp_f32_t d_n,
                                              pdsp_f32_t q_p, pdsp_f32_t q_n)
{
    PDSP_ASSERT(ps_state != NULL);
    /*
     * before calling this routine run the ABC_DQ0_Pos & Neg run routines
     * pass updated values for d_p,d_n,q_p,q_n
     * and update the cos_2theta and sin_2theta values with the prev angle
     */
    /* Decoupling Network */
    ps_state->d_p_decoupl = d_p -
                            (ps_state->d_n_decoupl_lpf * ps_state->cos_2theta) -
                            (ps_state->q_n_decoupl * ps_state->sin_2theta);
    ps_state->q_p_decoupl = q_p +
                            (ps_state->d_n_decoupl_lpf * ps_state->sin_2theta) -
                            (ps_state->q_n_decoupl * ps_state->cos_2theta);

    ps_state->d_n_decoupl = d_n -
                            (ps_state->d_p_decoupl_lpf * ps_state->cos_2theta) +
                            (ps_state->q_p_decoupl * ps_state->sin_2theta);
    ps_state->q_n_decoupl = q_n -
                            (ps_state->d_p_decoupl_lpf * ps_state->sin_2theta) -
                            (ps_state->q_p_decoupl * ps_state->cos_2theta);
    /* Low pass filter */
    ps_state->y[1] = (ps_state->d_p_decoupl * ps_state->k1) -
                     (ps_state->y[0] * ps_state->k2);
    ps_state->d_p_decoupl_lpf = ps_state->y[1] + ps_state->y[0];
    ps_state->y[0] = ps_state->y[1];
    ps_state->x[1] = (ps_state->q_p_decoupl * ps_state->k1) -
                     (ps_state->x[0] * ps_state->k2);
    ps_state->q_p_decoupl_lpf = ps_state->x[1] + ps_state->x[0];
    ps_state->x[0] = ps_state->x[1];
    ps_state->w[1] = (ps_state->d_n_decoupl * ps_state->k1) -
                     (ps_state->w[0] * ps_state->k2);
    ps_state->d_n_decoupl_lpf = ps_state->w[1] + ps_state->w[0];
    ps_state->w[0] = ps_state->w[1];
    ps_state->z[1] = (ps_state->q_n_decoupl * ps_state->k1) -
                     (ps_state->z[0] * ps_state->k2);
    ps_state->q_n_decoupl_lpf = ps_state->z[1] + ps_state->z[0];
    ps_state->z[0] = ps_state->z[1];
    ps_state->v_q[0] = ps_state->q_p_decoupl;
    /* Loop Filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    ps_state->v_q[1] = ps_state->v_q[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta[0] =
        ps_state->theta[1] +
        ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0f * 3.1415926f));
    if (ps_state->theta[0] > (pdsp_f32_t)(2.0f * 3.1415926f))
    {
        ps_state->theta[0] =
            ps_state->theta[0] - (pdsp_f32_t)(2.0f * 3.1415926f);
    }
    ps_state->theta[1] = ps_state->theta[0];
    ps_state->cos_2theta = pdsp_cosf(ps_state->theta[1] * 2.0f);
    ps_state->sin_2theta = pdsp_sinf(ps_state->theta[1] * 2.0f);
    return PDSP_OK;
}

pdsp_extern pdsp_status_t pdsp_dpll_3ph_srf_init(pdsp_dpll_3ph_srf_t *ps_state)
{
    PDSP_ASSERT(ps_state != NULL);
    ps_state->v_q[0] = 0.0f;
    ps_state->v_q[1] = 0.0f;
    ps_state->ylf[0] = 0.0f;
    ps_state->ylf[1] = 0.0f;
    ps_state->fo = 0.0f;
    ps_state->fn = 0.0f;
    ps_state->theta[0] = 0.0f;
    ps_state->theta[1] = 0.0f;
    ps_state->delta_t = 0.0f;
    /* TODO Init coefficients */
    return PDSP_OK;
}

pdsp_extern pdsp_status_t pdsp_dpll_3ph_srf(pdsp_dpll_3ph_srf_t *ps_state,
                                            pdsp_f32_t f32_vq)
{
    PDSP_ASSERT(ps_state != NULL);
    /* Update the ps_state->v_q[0] with the grid value */
    ps_state->v_q[0] = f32_vq;
    /* Loop Filter */
    ps_state->ylf[0] = ps_state->ylf[1] +
                       (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
                       (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
    ps_state->ylf[1] = ps_state->ylf[0];
    ps_state->v_q[1] = ps_state->v_q[0];
    ps_state->ylf[0] = (ps_state->ylf[0] > (pdsp_f32_t)(200.0))
                           ? (pdsp_f32_t)(200.0)
                           : ps_state->ylf[0];
    /* VCO */
    ps_state->fo = ps_state->fn + ps_state->ylf[0];
    ps_state->theta[0] =
        ps_state->theta[1] +
        ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0 * 3.1415926));
    if (ps_state->theta[0] > (pdsp_f32_t)(2.0 * 3.1415926))
    {
        ps_state->theta[0] = ps_state->theta[0] - (pdsp_f32_t)(2.0 * 3.1415926);
    }
    ps_state->theta[1] = ps_state->theta[0];
    return PDSP_OK;
}

pdsp_extern void pdsp_sfra_clear(pdsp_sfra_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_data->ps_var->b_running = PDSP_FALSE;
    ps_data->ps_var->f32_sin_val = 0.0f;
    ps_data->ps_var->f32_cos_val = 0.0f;
    ps_data->ps_var->f32_phase = 0.0f;
    ps_data->ps_var->f32_phase_step = 0.0f;
    ps_data->ps_var->u16_cycle_cnt = 0.0f;
    ps_data->ps_var->u16_bode_cnt = 0.0f;
    ps_data->ps_var->f32_avg_tau = 0.0f;
    ps_data->ps_var->f32_avg_in_sin = 0.0f;
    ps_data->ps_var->f32_avg_in_cos = 0.0f;
    ps_data->ps_var->f32_avg_out_sin = 0.0f;
    ps_data->ps_var->f32_avg_out_cos = 0.0f;
}

pdsp_extern void pdsp_sfra_start(pdsp_sfra_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    pdsp_sfra_clear(ps_data);
    ps_data->ps_var->b_running = PDSP_TRUE;
}

pdsp_extern pdsp_bool_t pdsp_sfra_running(pdsp_sfra_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    return ps_data->ps_var->b_running;
}

pdsp_extern void pdsp_sfra_inject(pdsp_sfra_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    *ps_data->f32_inject += ps_data->ps_var->f32_sin_val;
}

pdsp_extern void pdsp_sfra_process(pdsp_sfra_t *ps_data)
{
    pdsp_sfra_var_t *ps_var;
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
    ps_var = ps_data->ps_var;
    /* ----- Calculate result for current cycle: ----- */
    /* Add input results to filter. */
    ps_var->f32_avg_in_sin +=
        ps_var->f32_avg_tau *
        ((*ps_data->f32_input * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
    ps_var->f32_avg_in_cos +=
        ps_var->f32_avg_tau *
        ((*ps_data->f32_input * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
    /* Add output results to filter. */
    ps_var->f32_avg_out_sin +=
        ps_var->f32_avg_tau *
        ((*ps_data->f32_output * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
    ps_var->f32_avg_out_cos +=
        ps_var->f32_avg_tau *
        ((*ps_data->f32_output * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
    /* ----------- Updates for next cycle: ----------- */
    /* Update sin / cos */
    ps_var->f32_sin_val = pdsp_sinf(ps_var->f32_phase);
    ps_var->f32_cos_val = pdsp_cosf(ps_var->f32_phase);
    /* Update and wrap phase */
    ps_var->f32_phase += ps_var->f32_phase_step;
    if (ps_var->f32_phase > PDSP_2_PI_F)
    {
        ps_var->f32_phase = 0.0f;
        ps_var->u16_cycle_cnt++;
        /* Increment bode index */
        if (ps_var->u16_cycle_cnt > ps_data->f32_avg_cyc)
        {
            ps_var->u16_bode_cnt++;
        }
        /* Stop once all bode steps are done */
        if (ps_var->u16_bode_cnt >= ps_data->ps_bode->u16_bode_size)
        {
            ps_data->ps_var->b_running = PDSP_FALSE;
        }
    }
}

/*-----------------------------------------------------------------------------
FAULT
-----------------------------------------------------------------------------*/

pdsp_extern void pdsp_fault_init(pdsp_fault_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
                (ps_data->ps_hyst != NULL));
    ps_data->ps_var->b_ena = 0U;
    pdsp_hysteresis_time_clear(ps_data->ps_hyst);
}

pdsp_extern pdsp_bool_t pdsp_fault_check_over(pdsp_fault_t *ps_data,
                                              pdsp_f32_t f32_in)
{
    static pdsp_bool_t b_status_out;
    PDSP_ASSERT(ps_data != NULL);
    b_status_out =
        pdsp_hysteresis_time(ps_data->ps_hyst, f32_in > ps_data->f32_value);
    pdsp_bit_write_u32(ps_data->b_group, ps_data->u16_bit, b_status_out);
    return b_status_out;
}

pdsp_extern pdsp_bool_t pdsp_fault_check_under(pdsp_fault_t *ps_data,
                                               pdsp_f32_t f32_in)
{
    static pdsp_bool_t b_status_out;
    PDSP_ASSERT(ps_data != NULL);
    b_status_out =
        pdsp_hysteresis_time(ps_data->ps_hyst, f32_in < ps_data->f32_value);
    pdsp_bit_write_u32(ps_data->b_group, ps_data->u16_bit, b_status_out);
    return b_status_out;
}

pdsp_extern pdsp_bool_t pdsp_fault_check_equal(pdsp_fault_t *ps_data,
                                               pdsp_f32_t f32_in)
{
    static pdsp_bool_t b_status_out;
    PDSP_ASSERT(ps_data != NULL);
    b_status_out =
        pdsp_hysteresis_time(ps_data->ps_hyst, f32_in == ps_data->f32_value);
    pdsp_bit_write_u32(ps_data->b_group, ps_data->u16_bit, b_status_out);
    return b_status_out;
}

pdsp_extern pdsp_bool_t pdsp_fault_check_true(pdsp_fault_t *ps_data)
{
    static pdsp_bool_t b_status_out;
    PDSP_ASSERT(ps_data != NULL);
    b_status_out = pdsp_hysteresis_time(ps_data->ps_hyst, PDSP_TRUE);
    pdsp_bit_write_u32(ps_data->b_group, ps_data->u16_bit, b_status_out);
    return b_status_out;
}

pdsp_extern pdsp_bool_t pdsp_fault_check_false(pdsp_fault_t *ps_data)
{
    static pdsp_bool_t b_status_out;
    PDSP_ASSERT(ps_data != NULL);
    b_status_out = pdsp_hysteresis_time(ps_data->ps_hyst, PDSP_FALSE);
    pdsp_bit_write_u32(ps_data->b_group, ps_data->u16_bit, b_status_out);
    return b_status_out;
}

pdsp_extern void pdsp_fault_process_group(pdsp_bool_t b_group,
                                          void pf_callback(void))
{
    PDSP_ASSERT(pf_callback != NULL);
    if (b_group)
    {
        pf_callback();
    }
}

// pdsp_extern void pdsp_log_init(pdsp_logger_t *ps_data)
// {
//     pdsp_logger_var_t *ps_var;
//     PDSP_ASSERT(ps_data && ps_data->ps_var && ps_data->ai16_history);
//     ps_var = ps_data->ps_var;
//     pdsp_array_set_i16(ps_data->ai16_history, ps_data->i16_size, 0);
//     ps_var->e_trig_mode = PDSP_LOG_MODE_TRIG_NONE;
//     ps_var->i16_trig_channel = 0;
//     ps_var->f23_trig_value = 0.0f;
//     ps_var->f23_trig_offset = 0.5f;
//     ps_var->u23_counter = 1U;
//     ps_var->b_triggered = PDSP_FALSE;
//     ps_var->u32_head = 0U;
// }

// pdsp_extern void pdsp_log_set_trigger(pdsp_logger_t *ps_data,
//                                    pdsp_i16_t i16_trig_channel,
//                                    pdsp_f32_t f32_value, pdsp_f32_t
//                                    f32_offset)
// {
//     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
//     ps_data->ps_var->i16_trig_channel = i16_trig_channel;
//     ps_data->ps_var->f23_trig_value = f32_value;
//     ps_data->ps_var->f23_trig_offset = f32_offset;
// }

// pdsp_extern void pdsp_log_set_mode(pdsp_logger_t *ps_data,
//                                 pdsp_logger_mode_e e_mode)
// {
//     PDSP_ASSERT(ps_data != NULL);
//     ps_data->ps_var->e_trig_mode = e_mode;
// }

// pdsp_extern pdsp_status_t pdsp_sfra_init(pdsp_sfra_t *ps_state)
// {
//     PDSP_ASSERT(ps_state != NULL);
//     return PDSP_OK;
// }

// pdsp_extern pdsp_status_t pdsp_sfra_start(pdsp_sfra_t *ps_state,
//                                        pdsp_f32_t f32_amp, pdsp_f32_t
//                                        f32_freq)
// {
//     PDSP_ASSERT(ps_state && (f32_amp >= 0.9f) && (f32_freq > 0.0f));
//     return PDSP_OK;
// }

// pdsp_extern pdsp_bool_t pdsp_sfra_finished(pdsp_sfra_t *ps_state)
// {
//     PDSP_ASSERT(ps_state != NULL);
//     return PDSP_FALSE;
// }

// pdsp_extern pdsp_f32_t pdsp_sfra_perturb(pdsp_sfra_t *ps_state)
// {
//     PDSP_ASSERT(ps_state != NULL);
//     return 0.0f;
// }

// pdsp_extern pdsp_status_t pdsp_sfra_collect(pdsp_sfra_t *ps_state)
// {
//     PDSP_ASSERT(ps_state != NULL);
//     return PDSP_OK;
// }

pdsp_extern pdsp_u16_t pdsp_aout(const pdsp_aout_t *ps_data)
{
    PDSP_ASSERT((ps_data != NULL) && (ps_data->pv_data != NULL));
    if (ps_data->e_type == PDSP_AOUT_F32)
    {
        return (pdsp_u16_t)(*(pdsp_f32_t *)ps_data->pv_data *
                                ps_data->f32_gain +
                            ps_data->f32_offset);
    }
    if (ps_data->e_type == PDSP_AOUT_I16)
    {
        return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_i16_t *)ps_data->pv_data) *
                                ps_data->f32_gain +
                            ps_data->f32_offset);
    }
    if (ps_data->e_type == PDSP_AOUT_U16)
    {
        return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_u16_t *)ps_data->pv_data) *
                                ps_data->f32_gain +
                            ps_data->f32_offset);
    }
    return 0;
}

/*==============================================================================
 ENF OF FILE
 =============================================================================*/
