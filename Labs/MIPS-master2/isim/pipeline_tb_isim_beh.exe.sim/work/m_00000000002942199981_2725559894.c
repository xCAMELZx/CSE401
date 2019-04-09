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
static const char *ng0 = "C:/Users/004173090/pipeline/alu.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {0U, 4294967295U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {6U, 0U};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {7U, 0U};
static int ng8[] = {1, 0};
static unsigned int ng9[] = {269488144U, 0U};



static void Always_35_0(char *t0)
{
    char t9[8];
    char t20[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3984);
    *((int *)t2) = 1;
    t3 = (t0 + 3696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 2184U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB16;

LAB17:
LAB19:
LAB18:    xsi_set_current_line(79, ng0);

LAB73:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB20:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB21:    xsi_set_current_line(39, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 2744);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB20;

LAB8:    xsi_set_current_line(43, ng0);

LAB22:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1864U);
    t4 = *((char **)t3);
    t3 = (t0 + 2024U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 2744);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB20;

LAB10:    xsi_set_current_line(48, ng0);

LAB23:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1864U);
    t4 = *((char **)t3);
    t3 = (t0 + 2024U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 2744);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB20;

LAB12:    xsi_set_current_line(53, ng0);

LAB24:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1864U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t4 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t4);
    t13 = (t12 & t11);
    t14 = (t13 & 4294967295U);
    if (t14 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t3) != 0)
        goto LAB27;

LAB28:    t8 = (t9 + 4);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t8);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB29;

LAB30:    memcpy(t27, t9, 8);

LAB31:    t59 = (t0 + 2744);
    xsi_vlogvar_assign_value(t59, t27, 0, 0, 32);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB20;

LAB14:    xsi_set_current_line(58, ng0);

LAB39:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1864U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t4 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t4);
    t13 = (t12 & t11);
    t14 = (t13 & 4294967295U);
    if (t14 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t3) != 0)
        goto LAB42;

LAB43:    t8 = (t9 + 4);
    t15 = *((unsigned int *)t9);
    t16 = (!(t15));
    t17 = *((unsigned int *)t8);
    t21 = (t16 || t17);
    if (t21 > 0)
        goto LAB44;

LAB45:    memcpy(t27, t9, 8);

LAB46:    t59 = (t0 + 2744);
    xsi_vlogvar_assign_value(t59, t27, 0, 0, 32);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB20;

LAB16:    xsi_set_current_line(63, ng0);

LAB54:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1864U);
    t4 = *((char **)t3);
    t3 = (t0 + 2024U);
    t7 = *((char **)t3);
    memset(t27, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB56;

LAB55:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB56;

LAB59:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB57;

LAB58:    memset(t20, 0, 8);
    t19 = (t27 + 4);
    t10 = *((unsigned int *)t19);
    t11 = (~(t10));
    t12 = *((unsigned int *)t27);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t19) != 0)
        goto LAB62;

LAB63:    t31 = (t20 + 4);
    t15 = *((unsigned int *)t20);
    t16 = *((unsigned int *)t31);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB64;

LAB65:    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t31);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t31) > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t20) > 0)
        goto LAB70;

LAB71:    memcpy(t9, t33, 8);

LAB72:    t41 = (t0 + 2584);
    xsi_vlogvar_assign_value(t41, t9, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB20;

LAB25:    *((unsigned int *)t9) = 1;
    goto LAB28;

LAB27:    t7 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB28;

LAB29:    t18 = (t0 + 2024U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t21 = *((unsigned int *)t18);
    t22 = (~(t21));
    t23 = *((unsigned int *)t19);
    t24 = (t23 & t22);
    t25 = (t24 & 4294967295U);
    if (t25 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t18) != 0)
        goto LAB34;

LAB35:    t28 = *((unsigned int *)t9);
    t29 = *((unsigned int *)t20);
    t30 = (t28 & t29);
    *((unsigned int *)t27) = t30;
    t31 = (t9 + 4);
    t32 = (t20 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB36;

LAB37:
LAB38:    goto LAB31;

LAB32:    *((unsigned int *)t20) = 1;
    goto LAB35;

LAB34:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB35;

LAB36:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    t41 = (t9 + 4);
    t42 = (t20 + 4);
    t43 = *((unsigned int *)t9);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t20);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t55 & t53);
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t57 & t53);
    t58 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t58 & t54);
    goto LAB38;

LAB40:    *((unsigned int *)t9) = 1;
    goto LAB43;

LAB42:    t7 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB43;

LAB44:    t18 = (t0 + 2024U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t19);
    t25 = (t24 & t23);
    t28 = (t25 & 4294967295U);
    if (t28 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t18) != 0)
        goto LAB49;

LAB50:    t29 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t20);
    t34 = (t29 | t30);
    *((unsigned int *)t27) = t34;
    t31 = (t9 + 4);
    t32 = (t20 + 4);
    t33 = (t27 + 4);
    t35 = *((unsigned int *)t31);
    t36 = *((unsigned int *)t32);
    t37 = (t35 | t36);
    *((unsigned int *)t33) = t37;
    t38 = *((unsigned int *)t33);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB46;

LAB47:    *((unsigned int *)t20) = 1;
    goto LAB50;

LAB49:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB50;

LAB51:    t40 = *((unsigned int *)t27);
    t43 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t40 | t43);
    t41 = (t9 + 4);
    t42 = (t20 + 4);
    t44 = *((unsigned int *)t41);
    t45 = (~(t44));
    t46 = *((unsigned int *)t9);
    t51 = (t46 & t45);
    t47 = *((unsigned int *)t42);
    t48 = (~(t47));
    t49 = *((unsigned int *)t20);
    t52 = (t49 & t48);
    t50 = (~(t51));
    t53 = (~(t52));
    t54 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t54 & t50);
    t55 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t55 & t53);
    goto LAB53;

LAB56:    t18 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB58;

LAB57:    *((unsigned int *)t27) = 1;
    goto LAB58;

LAB60:    *((unsigned int *)t20) = 1;
    goto LAB63;

LAB62:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB63;

LAB64:    t32 = ((char*)((ng8)));
    goto LAB65;

LAB66:    t33 = ((char*)((ng3)));
    goto LAB67;

LAB68:    xsi_vlog_unsigned_bit_combine(t9, 32, t32, 32, t33, 32);
    goto LAB72;

LAB70:    memcpy(t9, t32, 8);
    goto LAB72;

}


extern void work_m_00000000002942199981_2725559894_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000002942199981_2725559894", "isim/pipeline_tb_isim_beh.exe.sim/work/m_00000000002942199981_2725559894.didat");
	xsi_register_executes(pe);
}
