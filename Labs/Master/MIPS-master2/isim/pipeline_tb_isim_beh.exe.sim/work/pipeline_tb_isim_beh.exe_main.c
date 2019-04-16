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
    work_m_00000000000322214030_0469601827_init();
    work_m_00000000002370149516_1733832700_init();
    work_m_00000000001563024757_0001905836_init();
    work_m_00000000003994012639_2138213552_init();
    work_m_00000000004085385088_1245474888_init();
    work_m_00000000003429153283_0996826214_init();
    work_m_00000000001233043008_3037777339_init();
    work_m_00000000002230494792_3399339113_init();
    work_m_00000000001656624971_1995237902_init();
    work_m_00000000001512865579_3105375104_init();
    work_m_00000000002991032275_2901757263_init();
    work_m_00000000001174970703_2788366441_init();
    work_m_00000000001957077131_3938227180_init();
    work_m_00000000000852503546_2725559894_init();
    work_m_00000000001649213697_1059438215_init();
    work_m_00000000001957077131_3357154921_init();
    work_m_00000000001083058486_1660661757_init();
    work_m_00000000003404800643_1529130682_init();
    work_m_00000000003724238596_3409648901_init();
    work_m_00000000001298816648_1581380626_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001298816648_1581380626");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}