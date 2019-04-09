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
static const char *ng0 = "C:/Users/004173090/pipeline/alu_control.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {32U, 0U};
static unsigned int ng6[] = {34U, 0U};
static unsigned int ng7[] = {36U, 0U};
static unsigned int ng8[] = {37U, 0U};
static unsigned int ng9[] = {42U, 0U};
static unsigned int ng10[] = {7U, 0U};
static const char *ng11 = "functl Error";
static const char *ng12 = "alu_op Error";



static void Always_35_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;

LAB0:    t1 = (t0 + 3616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3936);
    *((int *)t2) = 1;
    t3 = (t0 + 3648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 2296U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB10;

LAB11:
LAB13:
LAB12:    xsi_set_current_line(72, ng0);
    xsi_vlogfile_write(1, 0, 0, ng12, 1, t0);

LAB14:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);

LAB15:    xsi_set_current_line(40, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 2696);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    goto LAB14;

LAB8:    xsi_set_current_line(43, ng0);

LAB16:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2696);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB14;

LAB10:    xsi_set_current_line(47, ng0);

LAB17:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 2136U);
    t4 = *((char **)t3);

LAB18:    t3 = ((char*)((ng5)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 6, t3, 6);
    if (t9 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB27;

LAB28:
LAB30:
LAB29:    xsi_set_current_line(69, ng0);
    xsi_vlogfile_write(1, 0, 0, ng11, 1, t0);

LAB31:    goto LAB14;

LAB19:    xsi_set_current_line(50, ng0);

LAB32:    xsi_set_current_line(51, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 2696);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    goto LAB31;

LAB21:    xsi_set_current_line(54, ng0);

LAB33:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng4)));
    t7 = (t0 + 2696);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 3);
    goto LAB31;

LAB23:    xsi_set_current_line(58, ng0);

LAB34:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng1)));
    t7 = (t0 + 2696);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 3);
    goto LAB31;

LAB25:    xsi_set_current_line(62, ng0);

LAB35:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng3)));
    t7 = (t0 + 2696);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 3);
    goto LAB31;

LAB27:    xsi_set_current_line(66, ng0);

LAB36:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng10)));
    t7 = (t0 + 2696);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 3);
    goto LAB31;

}


extern void work_m_00000000001649213697_1059438215_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000001649213697_1059438215", "isim/pipeline_tb_isim_beh.exe.sim/work/m_00000000001649213697_1059438215.didat");
	xsi_register_executes(pe);
}
