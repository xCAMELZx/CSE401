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
static const char *ng0 = "C:/Users/004173090/pipeline/control.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {12U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {43U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {35U, 0U};
static unsigned int ng8[] = {9U, 8U};
static unsigned int ng9[] = {1U, 1U};
static unsigned int ng10[] = {4U, 0U};
static unsigned int ng11[] = {10U, 8U};
static const char *ng12 = "Error";



static void Always_30_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3552);
    *((int *)t2) = 1;
    t3 = (t0 + 3264);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1592U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB12;

LAB13:
LAB15:
LAB14:    xsi_set_current_line(49, ng0);
    xsi_vlogfile_write(1, 0, 0, ng12, 1, t0);

LAB16:    goto LAB2;

LAB6:    xsi_set_current_line(34, ng0);

LAB17:    xsi_set_current_line(35, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1992);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB16;

LAB8:    xsi_set_current_line(38, ng0);

LAB18:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1992);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB16;

LAB10:    xsi_set_current_line(42, ng0);

LAB19:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1992);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB16;

LAB12:    xsi_set_current_line(46, ng0);

LAB20:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1992);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB16;

}


extern void work_m_00000000001233043008_3037777339_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000001233043008_3037777339", "isim/pipeline_tb_isim_beh.exe.sim/work/m_00000000001233043008_3037777339.didat");
	xsi_register_executes(pe);
}
