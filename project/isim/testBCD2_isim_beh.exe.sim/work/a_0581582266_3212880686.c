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
static const char *ng0 = "C:/Users/Mohamed/Desktop/Danie/EEProject/BCD2.vhd";



static void work_a_0581582266_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    int t55;
    char *t56;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;

LAB0:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2832);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    t4 = (t0 + 4641);
    t10 = xsi_mem_cmp(t4, t8, 4U);
    if (t10 == 1)
        goto LAB9;

LAB26:    t11 = (t0 + 4645);
    t13 = xsi_mem_cmp(t11, t8, 4U);
    if (t13 == 1)
        goto LAB10;

LAB27:    t14 = (t0 + 4649);
    t16 = xsi_mem_cmp(t14, t8, 4U);
    if (t16 == 1)
        goto LAB11;

LAB28:    t17 = (t0 + 4653);
    t19 = xsi_mem_cmp(t17, t8, 4U);
    if (t19 == 1)
        goto LAB12;

LAB29:    t20 = (t0 + 4657);
    t22 = xsi_mem_cmp(t20, t8, 4U);
    if (t22 == 1)
        goto LAB13;

LAB30:    t23 = (t0 + 4661);
    t25 = xsi_mem_cmp(t23, t8, 4U);
    if (t25 == 1)
        goto LAB14;

LAB31:    t26 = (t0 + 4665);
    t28 = xsi_mem_cmp(t26, t8, 4U);
    if (t28 == 1)
        goto LAB15;

LAB32:    t29 = (t0 + 4669);
    t31 = xsi_mem_cmp(t29, t8, 4U);
    if (t31 == 1)
        goto LAB16;

LAB33:    t32 = (t0 + 4673);
    t34 = xsi_mem_cmp(t32, t8, 4U);
    if (t34 == 1)
        goto LAB17;

LAB34:    t35 = (t0 + 4677);
    t37 = xsi_mem_cmp(t35, t8, 4U);
    if (t37 == 1)
        goto LAB18;

LAB35:    t38 = (t0 + 4681);
    t40 = xsi_mem_cmp(t38, t8, 4U);
    if (t40 == 1)
        goto LAB19;

LAB36:    t41 = (t0 + 4685);
    t43 = xsi_mem_cmp(t41, t8, 4U);
    if (t43 == 1)
        goto LAB20;

LAB37:    t44 = (t0 + 4689);
    t46 = xsi_mem_cmp(t44, t8, 4U);
    if (t46 == 1)
        goto LAB21;

LAB38:    t47 = (t0 + 4693);
    t49 = xsi_mem_cmp(t47, t8, 4U);
    if (t49 == 1)
        goto LAB22;

LAB39:    t50 = (t0 + 4697);
    t52 = xsi_mem_cmp(t50, t8, 4U);
    if (t52 == 1)
        goto LAB23;

LAB40:    t53 = (t0 + 4701);
    t55 = xsi_mem_cmp(t53, t8, 4U);
    if (t55 == 1)
        goto LAB24;

LAB41:
LAB25:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4817);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(21, ng0);
    t56 = (t0 + 4705);
    t58 = (t0 + 2912);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memcpy(t62, t56, 7U);
    xsi_driver_first_trans_fast_port(t58);
    goto LAB8;

LAB10:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 4712);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB11:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 4719);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB12:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 4726);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB13:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 4733);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB14:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 4740);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB15:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 4747);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB16:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 4754);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB17:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 4761);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB18:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 4768);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB19:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 4775);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB20:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 4782);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB21:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4789);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB22:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 4796);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB23:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4803);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB24:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4810);
    t5 = (t0 + 2912);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB42:;
}


extern void work_a_0581582266_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0581582266_3212880686_p_0};
	xsi_register_didat("work_a_0581582266_3212880686", "isim/testBCD2_isim_beh.exe.sim/work/a_0581582266_3212880686.didat");
	xsi_register_executes(pe);
}
