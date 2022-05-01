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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002209629687_1260294218_init();
    work_m_00000000002181727578_4270170368_init();
    work_m_00000000000972719871_2310265471_init();
    work_m_00000000004013586488_3508450092_init();
    work_m_00000000002691904738_1285264445_init();
    work_m_00000000000099326099_0795554703_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000099326099_0795554703");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
