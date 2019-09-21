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
static const char *ng0 = "/home/centurio/SD projects/MyULA/MyULA.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1251135576_3212880686_p_0(char *t0)
{
    char t41[16];
    char t46[16];
    char t51[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned char t45;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned char t50;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned char t55;

LAB0:    t1 = (t0 + 4584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 8658);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 8661);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 8664);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 8667);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 8670);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 8673);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 8676);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 8679);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 8682);
    t4 = (t0 + 5248);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(119, ng0);

LAB27:    t2 = (t0 + 5152);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB28;

LAB1:    return;
LAB5:    xsi_set_current_line(120, ng0);
    t27 = (t0 + 1832U);
    t28 = *((char **)t27);
    t27 = (t0 + 5248);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 4U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB11:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB12:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t5 = (3 - 7);
    t33 = (t5 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t2 = (t3 + t35);
    t36 = *((unsigned char *)t2);
    t4 = (t0 + 2952U);
    t6 = *((char **)t4);
    t8 = (2 - 7);
    t37 = (t8 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t4 = (t6 + t39);
    t40 = *((unsigned char *)t4);
    t9 = ((IEEE_P_2592010699) + 4000);
    t7 = xsi_base_array_concat(t7, t41, t9, (char)99, t36, (char)99, t40, (char)101);
    t10 = (t0 + 2952U);
    t12 = *((char **)t10);
    t11 = (1 - 7);
    t42 = (t11 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t10 = (t12 + t44);
    t45 = *((unsigned char *)t10);
    t15 = ((IEEE_P_2592010699) + 4000);
    t13 = xsi_base_array_concat(t13, t46, t15, (char)97, t7, t41, (char)99, t45, (char)101);
    t16 = (t0 + 2952U);
    t18 = *((char **)t16);
    t14 = (0 - 7);
    t47 = (t14 * -1);
    t48 = (1U * t47);
    t49 = (0 + t48);
    t16 = (t18 + t49);
    t50 = *((unsigned char *)t16);
    t21 = ((IEEE_P_2592010699) + 4000);
    t19 = xsi_base_array_concat(t19, t51, t21, (char)97, t13, t46, (char)99, t50, (char)101);
    t52 = (1U + 1U);
    t53 = (t52 + 1U);
    t54 = (t53 + 1U);
    t55 = (4U != t54);
    if (t55 == 1)
        goto LAB23;

LAB24:    t22 = (t0 + 5248);
    t24 = (t22 + 56U);
    t25 = *((char **)t24);
    t27 = (t25 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t19, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB4;

LAB22:;
LAB23:    xsi_size_not_matching(4U, t54, 0);
    goto LAB24;

LAB25:    t3 = (t0 + 5152);
    *((int *)t3) = 0;
    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}

static void work_a_1251135576_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 4832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 8686);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 8689);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 8692);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5312);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(130, ng0);

LAB15:    t2 = (t0 + 5168);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(131, ng0);
    t12 = (t0 + 3112U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t12 = (t0 + 5312);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB4;

LAB6:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 3272U);
    t3 = *((char **)t2);
    t14 = *((unsigned char *)t3);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t14 = *((unsigned char *)t3);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 5168);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_1251135576_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1251135576_3212880686_p_0,(void *)work_a_1251135576_3212880686_p_1};
	xsi_register_didat("work_a_1251135576_3212880686", "isim/UlaInterface_test_isim_beh.exe.sim/work/a_1251135576_3212880686.didat");
	xsi_register_executes(pe);
}
