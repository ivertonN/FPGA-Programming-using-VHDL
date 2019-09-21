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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/centurio/SD projects/MyULAInterface/MyULAInterface.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1127154973_2120109608_p_0(char *t0)
{
    char t24[16];
    char t29[16];
    char t37[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned char t41;
    char *t42;
    static char *nl0[] = {&&LAB11, &&LAB12, &&LAB13, &&LAB14};

LAB0:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB23:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB38;

LAB39:
LAB22:    t1 = (t0 + 4904);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 8861);
    t6 = (t0 + 4984);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 8865);
    t5 = (t0 + 5048);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 8869);
    t5 = (t0 + 5176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 8871);
    t5 = (t0 + 5240);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 8874);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 8878);
    t5 = (t0 + 5176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2152U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t2 = (char *)((nl0) + t13);
    goto **((char **)t2);

LAB7:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    xsi_set_current_line(85, ng0);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 4984);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 8880);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 8884);
    t5 = (t0 + 5176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 5112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB10;

LAB12:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 8886);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 8890);
    t5 = (t0 + 5176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB10;

LAB13:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t16 = (2 - 3);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t20 = (1 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t5 = (t6 + t23);
    t4 = *((unsigned char *)t5);
    t8 = ((IEEE_P_2592010699) + 4000);
    t7 = xsi_base_array_concat(t7, t24, t8, (char)99, t3, (char)99, t4, (char)101);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t25 = (0 - 3);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t9 = (t10 + t28);
    t11 = *((unsigned char *)t9);
    t15 = ((IEEE_P_2592010699) + 4000);
    t14 = xsi_base_array_concat(t14, t29, t15, (char)97, t7, t24, (char)99, t11, (char)101);
    t30 = (1U + 1U);
    t31 = (t30 + 1U);
    t12 = (3U != t31);
    if (t12 == 1)
        goto LAB15;

LAB16:    t32 = (t0 + 5240);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t14, 3U);
    xsi_driver_first_trans_fast(t32);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 8892);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 8896);
    t5 = (t0 + 5176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t16 = (2 - 3);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t3 = *((unsigned char *)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t5 = xsi_base_array_concat(t5, t24, t6, (char)99, (unsigned char)2, (char)99, t3, (char)101);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t20 = (1 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t7 = (t8 + t23);
    t4 = *((unsigned char *)t7);
    t10 = ((IEEE_P_2592010699) + 4000);
    t9 = xsi_base_array_concat(t9, t29, t10, (char)97, t5, t24, (char)99, t4, (char)101);
    t14 = (t0 + 1512U);
    t15 = *((char **)t14);
    t25 = (0 - 3);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t14 = (t15 + t28);
    t11 = *((unsigned char *)t14);
    t33 = ((IEEE_P_2592010699) + 4000);
    t32 = xsi_base_array_concat(t32, t37, t33, (char)97, t9, t29, (char)99, t11, (char)101);
    t30 = (1U + 1U);
    t31 = (t30 + 1U);
    t38 = (t31 + 1U);
    t12 = (4U != t38);
    if (t12 == 1)
        goto LAB17;

LAB18:    t34 = (t0 + 5304);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t39 = (t36 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t32, 4U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB10;

LAB14:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t16 = (2 - 3);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t20 = (1 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t5 = (t6 + t23);
    t4 = *((unsigned char *)t5);
    t8 = ((IEEE_P_2592010699) + 4000);
    t7 = xsi_base_array_concat(t7, t24, t8, (char)99, t3, (char)99, t4, (char)101);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t25 = (0 - 3);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t9 = (t10 + t28);
    t11 = *((unsigned char *)t9);
    t15 = ((IEEE_P_2592010699) + 4000);
    t14 = xsi_base_array_concat(t14, t29, t15, (char)97, t7, t24, (char)99, t11, (char)101);
    t30 = (1U + 1U);
    t31 = (t30 + 1U);
    t12 = (3U != t31);
    if (t12 == 1)
        goto LAB19;

LAB20:    t32 = (t0 + 5240);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t14, 3U);
    xsi_driver_first_trans_fast(t32);
    goto LAB10;

LAB15:    xsi_size_not_matching(3U, t31, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(4U, t38, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(3U, t31, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 3272U);
    t5 = *((char **)t1);
    t16 = *((int *)t5);
    t11 = (t16 < 100000000);
    if (t11 != 0)
        goto LAB24;

LAB26:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t16 = *((int *)t2);
    t4 = (t16 >= 100000000);
    if (t4 == 1)
        goto LAB29;

LAB30:    t3 = (unsigned char)0;

LAB31:    if (t3 != 0)
        goto LAB27;

LAB28:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t16 = *((int *)t2);
    t3 = (t16 >= 200000000);
    if (t3 != 0)
        goto LAB32;

LAB33:
LAB25:    goto LAB22;

LAB24:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2472U);
    t6 = *((char **)t1);
    t1 = (t0 + 5304);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 8898);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB25;

LAB27:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2632U);
    t6 = *((char **)t1);
    t1 = (t0 + 5304);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 8902);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB25;

LAB29:    t1 = (t0 + 3272U);
    t5 = *((char **)t1);
    t20 = *((int *)t5);
    t11 = (t20 < 200000000);
    t3 = t11;
    goto LAB31;

LAB32:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3112U);
    t5 = *((char **)t1);
    t1 = (t0 + 5304);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 8906);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB25;

LAB34:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 5304);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB22;

LAB36:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 5304);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB22;

LAB38:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t16 = (2 - 3);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t5 + t19);
    t11 = *((unsigned char *)t1);
    t7 = ((IEEE_P_2592010699) + 4000);
    t6 = xsi_base_array_concat(t6, t24, t7, (char)99, (unsigned char)2, (char)99, t11, (char)101);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t20 = (1 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t8 = (t9 + t23);
    t12 = *((unsigned char *)t8);
    t14 = ((IEEE_P_2592010699) + 4000);
    t10 = xsi_base_array_concat(t10, t29, t14, (char)97, t6, t24, (char)99, t12, (char)101);
    t15 = (t0 + 1512U);
    t32 = *((char **)t15);
    t25 = (0 - 3);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t15 = (t32 + t28);
    t13 = *((unsigned char *)t15);
    t34 = ((IEEE_P_2592010699) + 4000);
    t33 = xsi_base_array_concat(t33, t37, t34, (char)97, t10, t29, (char)99, t13, (char)101);
    t30 = (1U + 1U);
    t31 = (t30 + 1U);
    t38 = (t31 + 1U);
    t41 = (4U != t38);
    if (t41 == 1)
        goto LAB40;

LAB41:    t35 = (t0 + 5304);
    t36 = (t35 + 56U);
    t39 = *((char **)t36);
    t40 = (t39 + 56U);
    t42 = *((char **)t40);
    memcpy(t42, t33, 4U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB22;

LAB40:    xsi_size_not_matching(4U, t38, 0);
    goto LAB41;

}


extern void work_a_1127154973_2120109608_init()
{
	static char *pe[] = {(void *)work_a_1127154973_2120109608_p_0};
	xsi_register_didat("work_a_1127154973_2120109608", "isim/UlaInterface_test_isim_beh.exe.sim/work/a_1127154973_2120109608.didat");
	xsi_register_executes(pe);
}
