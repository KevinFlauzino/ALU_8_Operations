/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Usuario/OneDrive/FACUL/UFRJ/Repositorios_git/ALU_8_Operations_VHDL/Trabalho1_Kevin_Andre_Igor/main.vhd";



static void work_a_0286164271_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned char t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 >= 0);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 >= 1);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB17;

LAB19:
LAB18:    t1 = (t0 + 3752);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 3832);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t11 = (t10 + 1);
    t1 = (t0 + 2448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t11;
    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t12 = (t4 == (unsigned char)3);
    if (t12 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 3896);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t6, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t11 = (t10 + 1);
    t1 = (t0 + 2448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t11;
    goto LAB9;

LAB11:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t12 = (t4 == (unsigned char)3);
    if (t12 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t11 = (0 - 3);
    t14 = (t11 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t6 + t16);
    t17 = *((unsigned char *)t1);
    t7 = (t0 + 3960);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t18 = *((char **)t13);
    *((unsigned char *)t18) = t17;
    xsi_driver_first_trans_delta(t7, 2U, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t10 = (1 - 3);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t10 = (2 - 3);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t11 = (t10 + 1);
    t1 = (t0 + 2448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t11;
    goto LAB15;

LAB17:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 7032);
    t6 = (t0 + 3832);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 7036);
    t5 = (t0 + 3896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 7040);
    t5 = (t0 + 3960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 7043);
    t5 = (t0 + 4024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB18;

}


extern void work_a_0286164271_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0286164271_3212880686_p_0};
	xsi_register_didat("work_a_0286164271_3212880686", "isim/Main_isim_beh.exe.sim/work/a_0286164271_3212880686.didat");
	xsi_register_executes(pe);
}
