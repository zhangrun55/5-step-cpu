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
static const char *ng0 = "D:/14-15autumn/digital system design/yxq_cpu/segment.v";
static int ng1[] = {0, 0};
static int ng2[] = {3000, 0};
static unsigned int ng3[] = {7U, 0U};
static int ng4[] = {1, 0};
static int ng5[] = {6000, 0};
static unsigned int ng6[] = {11U, 0U};
static int ng7[] = {9000, 0};
static unsigned int ng8[] = {13U, 0U};
static int ng9[] = {12000, 0};
static unsigned int ng10[] = {14U, 0U};
static unsigned int ng11[] = {1U, 0U};
static unsigned int ng12[] = {79U, 0U};
static int ng13[] = {2, 0};
static unsigned int ng14[] = {18U, 0U};
static int ng15[] = {3, 0};
static unsigned int ng16[] = {6U, 0U};
static int ng17[] = {4, 0};
static unsigned int ng18[] = {76U, 0U};
static int ng19[] = {5, 0};
static unsigned int ng20[] = {36U, 0U};
static int ng21[] = {6, 0};
static unsigned int ng22[] = {32U, 0U};
static int ng23[] = {7, 0};
static unsigned int ng24[] = {15U, 0U};
static int ng25[] = {8, 0};
static unsigned int ng26[] = {0U, 0U};
static int ng27[] = {9, 0};
static unsigned int ng28[] = {4U, 0U};
static int ng29[] = {10, 0};
static unsigned int ng30[] = {8U, 0U};
static int ng31[] = {11, 0};
static unsigned int ng32[] = {96U, 0U};
static int ng33[] = {12, 0};
static unsigned int ng34[] = {49U, 0U};
static int ng35[] = {13, 0};
static unsigned int ng36[] = {66U, 0U};
static int ng37[] = {14, 0};
static unsigned int ng38[] = {48U, 0U};
static int ng39[] = {15, 0};
static unsigned int ng40[] = {56U, 0U};
static unsigned int ng41[] = {127U, 0U};



static void Always_36_0(char *t0)
{
    char t13[8];
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
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4376);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB10;

LAB9:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB10;

LAB13:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;

LAB12:    t15 = (t13 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB19;

LAB18:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB19;

LAB22:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB21;

LAB20:    *((unsigned int *)t13) = 1;

LAB21:    t15 = (t13 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB28;

LAB27:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB28;

LAB31:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB30;

LAB29:    *((unsigned int *)t13) = 1;

LAB30:    t15 = (t13 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB37;

LAB36:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB37;

LAB40:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB39;

LAB38:    *((unsigned int *)t13) = 1;

LAB39:    t15 = (t13 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(68, ng0);

LAB45:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 14, 0LL);

LAB43:
LAB34:
LAB25:
LAB16:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(38, ng0);

LAB8:    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 14, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB7;

LAB10:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB12;

LAB14:    xsi_set_current_line(44, ng0);

LAB17:    xsi_set_current_line(45, ng0);
    t16 = (t0 + 1848U);
    t17 = *((char **)t16);
    t16 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 4, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 14, t5, 32);
    t11 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 14, 0LL);
    goto LAB16;

LAB19:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB21;

LAB23:    xsi_set_current_line(50, ng0);

LAB26:    xsi_set_current_line(51, ng0);
    t16 = (t0 + 1688U);
    t17 = *((char **)t16);
    t16 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 4, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 14, t5, 32);
    t11 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 14, 0LL);
    goto LAB25;

LAB28:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB30;

LAB32:    xsi_set_current_line(56, ng0);

LAB35:    xsi_set_current_line(57, ng0);
    t16 = (t0 + 1528U);
    t17 = *((char **)t16);
    t16 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 4, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 14, t5, 32);
    t11 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 14, 0LL);
    goto LAB34;

LAB37:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB39;

LAB41:    xsi_set_current_line(62, ng0);

LAB44:    xsi_set_current_line(63, ng0);
    t16 = (t0 + 1368U);
    t17 = *((char **)t16);
    t16 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 4, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 14, t5, 32);
    t11 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 14, 0LL);
    goto LAB43;

}

static void Always_72_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4392);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB5:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 32);
    if (t8 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng19)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng21)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng23)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng25)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng27)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng29)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng31)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng33)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng35)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng37)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng39)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB36;

LAB37:
LAB39:
LAB38:    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng41)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);

LAB40:    goto LAB2;

LAB6:    xsi_set_current_line(74, ng0);
    t9 = ((char*)((ng11)));
    t10 = (t0 + 2408);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 7);
    goto LAB40;

LAB8:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB10:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB12:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB14:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB16:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB18:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB20:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB22:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB24:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB26:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB28:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB30:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB32:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng36)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB34:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng38)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

LAB36:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng40)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB40;

}


extern void work_m_00000000000312877639_1078596757_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)Always_72_1};
	xsi_register_didat("work_m_00000000000312877639_1078596757", "isim/test2_isim_beh.exe.sim/work/m_00000000000312877639_1078596757.didat");
	xsi_register_executes(pe);
}
