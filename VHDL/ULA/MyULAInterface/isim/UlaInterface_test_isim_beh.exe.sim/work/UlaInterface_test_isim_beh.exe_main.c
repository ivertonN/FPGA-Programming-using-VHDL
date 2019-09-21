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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_0627919576_3212880686_init();
    work_a_0124385653_3212880686_init();
    work_a_2030967454_3212880686_init();
    work_a_1608692698_3212880686_init();
    work_a_4263187633_3212880686_init();
    work_a_3029094910_3212880686_init();
    work_a_1616432906_3212880686_init();
    work_a_3714424518_3212880686_init();
    work_a_1166477939_3212880686_init();
    work_a_2115425239_3212880686_init();
    work_a_1251135576_3212880686_init();
    work_a_2357585714_3212880686_init();
    work_a_1127154973_2120109608_init();
    work_a_3582044870_2372691052_init();


    xsi_register_tops("work_a_3582044870_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
