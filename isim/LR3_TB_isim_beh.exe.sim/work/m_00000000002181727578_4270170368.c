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
static const char *ng0 = "C:/Users/Geralt/Desktop/LR3/LR3_Seq_Logic.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {14U, 0U};
static unsigned int ng5[] = {15U, 0U};
static int ng6[] = {4, 0};
static unsigned int ng7[] = {3U, 0U};



static void Cont_41_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 4608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 2888);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t8, 16, t5, 16);
    t9 = (t0 + 5800);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 8);
    xsi_driver_vfirst_trans(t9, 0, 31);
    t14 = (t0 + 5672);
    *((int *)t14) = 1;

LAB1:    return;
}

static void Cont_42_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    t1 = (t0 + 4856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3368);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 3208);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t3, 8, 8, 2U, t8, 4, t5, 4);
    t9 = (t0 + 5864);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t13, 0, 8);
    t14 = 255U;
    t15 = t14;
    t16 = (t3 + 4);
    t17 = *((unsigned int *)t3);
    t14 = (t14 & t17);
    t18 = *((unsigned int *)t16);
    t15 = (t15 & t18);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 | t14);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t21 | t15);
    xsi_driver_vfirst_trans(t9, 0, 7);
    t22 = (t0 + 5688);
    *((int *)t22) = 1;

LAB1:    return;
}

static void Cont_43_2(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 5104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 4, t5, 32);
    t7 = (t0 + 5928);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 15U;
    t13 = t12;
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 3);
    t20 = (t0 + 5704);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Always_48_3(char *t0)
{
    char t13[8];
    char t37[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;

LAB0:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 5720);
    *((int *)t2) = 1;
    t3 = (t0 + 5384);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(51, ng0);

LAB9:    xsi_set_current_line(52, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);

LAB13:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 2008U);
    t11 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t5 + 4);
    t12 = (t11 + 4);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t11);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t12);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t12);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB17;

LAB14:    if (t23 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t13) = 1;

LAB17:    t27 = (t13 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(74, ng0);

LAB42:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    xsi_vlogtype_concat(t13, 16, 16, 2U, t5, 12, t4, 4);
    t11 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 16, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 16, t4, 16, t5, 32);
    t11 = (t0 + 1528U);
    t12 = *((char **)t11);
    t6 = *((unsigned int *)t13);
    t7 = *((unsigned int *)t12);
    t8 = (t6 | t7);
    *((unsigned int *)t37) = t8;
    t11 = (t13 + 4);
    t26 = (t12 + 4);
    t27 = (t37 + 4);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t26);
    t14 = (t9 | t10);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t27);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB43;

LAB44:
LAB45:    t35 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t35, t37, 0, 0, 16, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 4, t4, 4, t5, 32);
    t11 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 4, t4, 4, t12, 2);
    t26 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t26, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB20:    goto LAB12;

LAB16:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(63, ng0);

LAB21:    xsi_set_current_line(64, ng0);
    t33 = (t0 + 3048);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = ((char*)((ng6)));
    memset(t37, 0, 8);
    xsi_vlog_unsigned_lshift(t37, 16, t35, 16, t36, 32);
    t38 = (t0 + 1528U);
    t39 = *((char **)t38);
    t41 = *((unsigned int *)t37);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t38 = (t37 + 4);
    t44 = (t39 + 4);
    t45 = (t40 + 4);
    t46 = *((unsigned int *)t38);
    t47 = *((unsigned int *)t44);
    t48 = (t46 | t47);
    *((unsigned int *)t45) = t48;
    t49 = *((unsigned int *)t45);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB22;

LAB23:
LAB24:    t67 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t67, t40, 0, 0, 16, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 16, t4, 16, t5, 32);
    t11 = (t0 + 2328U);
    t12 = *((char **)t11);
    t6 = *((unsigned int *)t13);
    t7 = *((unsigned int *)t12);
    t8 = (t6 | t7);
    *((unsigned int *)t37) = t8;
    t11 = (t13 + 4);
    t26 = (t12 + 4);
    t27 = (t37 + 4);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t26);
    t14 = (t9 | t10);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t27);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB25;

LAB26:
LAB27:    t35 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t35, t37, 0, 0, 16, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 15U);
    if (t10 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t5) == 0)
        goto LAB28;

LAB30:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB31:    t12 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 4, t4, 4, t5, 32);
    t11 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 4, 0LL);

LAB34:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 4, t4, 4, t5, 32);
    t11 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 4, t5, 32);
    t11 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB38;

LAB35:    if (t18 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t13) = 1;

LAB38:    t27 = (t13 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB39;

LAB40:
LAB41:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 2, t5, 32);
    t11 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 2, 0LL);
    goto LAB20;

LAB22:    t51 = *((unsigned int *)t40);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t40) = (t51 | t52);
    t53 = (t37 + 4);
    t54 = (t39 + 4);
    t55 = *((unsigned int *)t53);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = *((unsigned int *)t54);
    t60 = (~(t59));
    t61 = *((unsigned int *)t39);
    t62 = (t61 & t60);
    t63 = (~(t58));
    t64 = (~(t62));
    t65 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t65 & t63);
    t66 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t66 & t64);
    goto LAB24;

LAB25:    t17 = *((unsigned int *)t37);
    t18 = *((unsigned int *)t27);
    *((unsigned int *)t37) = (t17 | t18);
    t33 = (t13 + 4);
    t34 = (t12 + 4);
    t19 = *((unsigned int *)t33);
    t20 = (~(t19));
    t21 = *((unsigned int *)t13);
    t58 = (t21 & t20);
    t22 = *((unsigned int *)t34);
    t23 = (~(t22));
    t24 = *((unsigned int *)t12);
    t62 = (t24 & t23);
    t25 = (~(t58));
    t28 = (~(t62));
    t29 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t29 & t25);
    t30 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t30 & t28);
    goto LAB27;

LAB28:    *((unsigned int *)t13) = 1;
    goto LAB31;

LAB32:    xsi_set_current_line(66, ng0);
    t26 = ((char*)((ng4)));
    t27 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 4, 0LL);
    goto LAB34;

LAB37:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB38;

LAB39:    xsi_set_current_line(70, ng0);
    t33 = (t0 + 2328U);
    t34 = *((char **)t33);
    t33 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t33, t34, 0, 0, 4, 0LL);
    goto LAB41;

LAB43:    t17 = *((unsigned int *)t37);
    t18 = *((unsigned int *)t27);
    *((unsigned int *)t37) = (t17 | t18);
    t33 = (t13 + 4);
    t34 = (t12 + 4);
    t19 = *((unsigned int *)t33);
    t20 = (~(t19));
    t21 = *((unsigned int *)t13);
    t58 = (t21 & t20);
    t22 = *((unsigned int *)t34);
    t23 = (~(t22));
    t24 = *((unsigned int *)t12);
    t62 = (t24 & t23);
    t25 = (~(t58));
    t28 = (~(t62));
    t29 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t29 & t25);
    t30 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t30 & t28);
    goto LAB45;

}


extern void work_m_00000000002181727578_4270170368_init()
{
	static char *pe[] = {(void *)Cont_41_0,(void *)Cont_42_1,(void *)Cont_43_2,(void *)Always_48_3};
	xsi_register_didat("work_m_00000000002181727578_4270170368", "isim/LR3_TB_isim_beh.exe.sim/work/m_00000000002181727578_4270170368.didat");
	xsi_register_executes(pe);
}
