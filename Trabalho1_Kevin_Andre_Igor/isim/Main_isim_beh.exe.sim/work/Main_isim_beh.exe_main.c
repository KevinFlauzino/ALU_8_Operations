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

char *STD_STANDARD;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_3112044328_3990940387_init();
    work_a_0372911841_1181938964_init();
    work_a_0243310568_3212880686_init();
    work_a_0908563968_3212880686_init();
    work_a_2735068677_3990940387_init();
    work_a_1928377596_3212880686_init();
    work_a_3379653920_3212880686_init();
    work_a_2423606098_3990940387_init();
    work_a_0673370910_3212880686_init();
    work_a_2457339509_3990940387_init();
    work_a_1648490975_3212880686_init();
    work_a_3252079596_3990940387_init();
    work_a_0078310933_3212880686_init();
    work_a_2359482144_3990940387_init();
    work_a_2520061074_3212880686_init();
    work_a_1185003418_3990940387_init();
    work_a_3011484749_1181938964_init();
    work_a_3735238183_1181938964_init();
    work_a_0286164271_3212880686_init();


    xsi_register_tops("work_a_0286164271_3212880686");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
