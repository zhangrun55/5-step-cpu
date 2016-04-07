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
static const char *ng0 = "%h:%b:";
static const char *ng1 = "D:/14-15autumn/digital system design/yxq_cpu/test2.v";
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};

void Monitor_64_1(char *);
void Monitor_64_1(char *);


static void Monitor_64_1_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 8084);
    t2 = *((char **)t1);
    t3 = ((((char*)(t2))) + 40U);
    t4 = *((char **)t3);
    t3 = (t0 + 8108);
    t5 = *((char **)t3);
    t6 = ((((char*)(t5))) + 40U);
    t7 = *((char **)t6);
    xsi_vlogfile_write(1, 0, 3, ng0, 3, t0, (char)118, t4, 8, (char)118, t7, 16);

LAB1:    return;
}

static void Initial_63_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng1);

LAB4:    xsi_set_current_line(64, ng1);
    Monitor_64_1(t0);
    xsi_set_current_line(68, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(69, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(70, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(71, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(73, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(76, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(79, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(80, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(81, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(83, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(84, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(85, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(87, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(88, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(89, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(90, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(91, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(93, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(94, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(95, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(96, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(97, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(98, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(99, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(100, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(101, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(102, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(103, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(104, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(105, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(106, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(107, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(108, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(109, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(110, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(111, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(112, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(113, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(115, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(116, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(117, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(118, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(119, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(120, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(122, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(123, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(124, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(125, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(126, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(127, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(128, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(129, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(130, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(131, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(132, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(133, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(134, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(135, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(136, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(137, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(138, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(139, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(140, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(141, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(142, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(143, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(144, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB35:    xsi_set_current_line(145, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(146, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB36:    xsi_set_current_line(147, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(148, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB37:    xsi_set_current_line(149, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(150, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB38:    xsi_set_current_line(151, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(152, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB39:    xsi_set_current_line(153, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(154, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB40:    xsi_set_current_line(155, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(156, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB41:    xsi_set_current_line(157, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(158, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB42:    xsi_set_current_line(159, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(160, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB43:    xsi_set_current_line(161, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(162, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB44:    xsi_set_current_line(163, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(164, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB45:    xsi_set_current_line(165, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(166, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB46:    xsi_set_current_line(167, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(168, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB47:    xsi_set_current_line(170, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(171, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB48;
    goto LAB1;

LAB48:    xsi_set_current_line(172, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(173, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB49:    xsi_set_current_line(174, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(175, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB50:    xsi_set_current_line(176, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(177, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB51:    xsi_set_current_line(178, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(179, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB52:    xsi_set_current_line(180, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(181, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB53:    xsi_set_current_line(182, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(183, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB54:    xsi_set_current_line(184, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(185, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB55:    xsi_set_current_line(186, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(187, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB56:    xsi_set_current_line(188, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(189, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB57:    xsi_set_current_line(190, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(191, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB58:    xsi_set_current_line(192, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(193, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB59:    xsi_set_current_line(194, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(195, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB60:    xsi_set_current_line(196, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(197, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB61:    xsi_set_current_line(198, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(199, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB62:    xsi_set_current_line(200, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(201, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB63:    xsi_set_current_line(202, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(203, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB64:    xsi_set_current_line(204, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(205, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB65;
    goto LAB1;

LAB65:    xsi_set_current_line(206, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(207, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB66;
    goto LAB1;

LAB66:    xsi_set_current_line(208, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(209, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB67:    xsi_set_current_line(210, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(211, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB68;
    goto LAB1;

LAB68:    xsi_set_current_line(212, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(213, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB69;
    goto LAB1;

LAB69:    xsi_set_current_line(214, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(215, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB70:    xsi_set_current_line(216, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(217, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB71:    xsi_set_current_line(218, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(219, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB72;
    goto LAB1;

LAB72:    xsi_set_current_line(220, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(221, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB73;
    goto LAB1;

LAB73:    xsi_set_current_line(223, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(224, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB74;
    goto LAB1;

LAB74:    xsi_set_current_line(225, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(226, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB75:    xsi_set_current_line(227, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(228, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB76:    xsi_set_current_line(229, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(230, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB77;
    goto LAB1;

LAB77:    xsi_set_current_line(231, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(232, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(233, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB78;
    goto LAB1;

LAB78:    xsi_set_current_line(234, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(235, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB79:    xsi_set_current_line(236, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(237, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB80:    xsi_set_current_line(238, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(239, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB81;
    goto LAB1;

LAB81:    xsi_set_current_line(240, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(241, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB82;
    goto LAB1;

LAB82:    xsi_set_current_line(242, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(243, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB83:    xsi_set_current_line(244, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(245, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB84;
    goto LAB1;

LAB84:    xsi_set_current_line(246, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(247, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB85;
    goto LAB1;

LAB85:    xsi_set_current_line(248, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(249, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB86;
    goto LAB1;

LAB86:    xsi_set_current_line(250, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(251, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB87:    xsi_set_current_line(252, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(253, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB88;
    goto LAB1;

LAB88:    xsi_set_current_line(254, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(255, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB89;
    goto LAB1;

LAB89:    xsi_set_current_line(256, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(257, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB90;
    goto LAB1;

LAB90:    xsi_set_current_line(258, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(259, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB91:    xsi_set_current_line(260, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(261, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB92;
    goto LAB1;

LAB92:    xsi_set_current_line(262, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(263, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB93;
    goto LAB1;

LAB93:    xsi_set_current_line(264, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(265, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB94;
    goto LAB1;

LAB94:    xsi_set_current_line(266, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(267, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB95:    xsi_set_current_line(268, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(269, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB96;
    goto LAB1;

LAB96:    xsi_set_current_line(271, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(272, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB97;
    goto LAB1;

LAB97:    xsi_set_current_line(273, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(274, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB98;
    goto LAB1;

LAB98:    xsi_set_current_line(275, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(276, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB99;
    goto LAB1;

LAB99:    xsi_set_current_line(277, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(278, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB100;
    goto LAB1;

LAB100:    xsi_set_current_line(279, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(280, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB101;
    goto LAB1;

LAB101:    xsi_set_current_line(281, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(282, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB102;
    goto LAB1;

LAB102:    xsi_set_current_line(283, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(284, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB103:    xsi_set_current_line(285, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(286, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB104;
    goto LAB1;

LAB104:    xsi_set_current_line(287, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(288, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB105;
    goto LAB1;

LAB105:    xsi_set_current_line(289, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(290, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB106;
    goto LAB1;

LAB106:    xsi_set_current_line(291, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(292, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB107;
    goto LAB1;

LAB107:    xsi_set_current_line(293, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(294, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB108;
    goto LAB1;

LAB108:    xsi_set_current_line(295, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(296, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB109;
    goto LAB1;

LAB109:    xsi_set_current_line(297, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(298, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB110;
    goto LAB1;

LAB110:    xsi_set_current_line(299, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(300, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB111;
    goto LAB1;

LAB111:    xsi_set_current_line(301, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(302, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB112;
    goto LAB1;

LAB112:    xsi_set_current_line(303, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(304, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB113;
    goto LAB1;

LAB113:    xsi_set_current_line(305, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(306, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB114;
    goto LAB1;

LAB114:    xsi_set_current_line(307, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(308, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB115;
    goto LAB1;

LAB115:    xsi_set_current_line(309, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(310, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB116;
    goto LAB1;

LAB116:    xsi_set_current_line(311, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(312, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB117;
    goto LAB1;

LAB117:    xsi_set_current_line(313, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(314, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB118;
    goto LAB1;

LAB118:    xsi_set_current_line(315, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(316, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB119;
    goto LAB1;

LAB119:    xsi_set_current_line(317, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(318, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB120;
    goto LAB1;

LAB120:    xsi_set_current_line(319, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(320, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB121;
    goto LAB1;

LAB121:    xsi_set_current_line(321, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(322, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB122;
    goto LAB1;

LAB122:    xsi_set_current_line(324, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(325, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB123;
    goto LAB1;

LAB123:    xsi_set_current_line(326, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(327, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB124;
    goto LAB1;

LAB124:    xsi_set_current_line(328, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(329, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB125;
    goto LAB1;

LAB125:    xsi_set_current_line(330, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(331, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB126;
    goto LAB1;

LAB126:    xsi_set_current_line(332, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(333, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(334, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB127;
    goto LAB1;

LAB127:    xsi_set_current_line(335, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(336, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB128;
    goto LAB1;

LAB128:    xsi_set_current_line(337, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(338, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB129;
    goto LAB1;

LAB129:    xsi_set_current_line(339, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(340, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB130;
    goto LAB1;

LAB130:    xsi_set_current_line(341, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(342, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB131;
    goto LAB1;

LAB131:    xsi_set_current_line(343, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(344, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB132;
    goto LAB1;

LAB132:    xsi_set_current_line(345, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(346, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB133;
    goto LAB1;

LAB133:    xsi_set_current_line(347, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(348, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB134;
    goto LAB1;

LAB134:    xsi_set_current_line(349, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(350, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB135;
    goto LAB1;

LAB135:    xsi_set_current_line(351, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(352, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB136;
    goto LAB1;

LAB136:    xsi_set_current_line(353, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(354, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB137;
    goto LAB1;

LAB137:    xsi_set_current_line(355, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(356, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB138;
    goto LAB1;

LAB138:    xsi_set_current_line(357, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(358, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB139;
    goto LAB1;

LAB139:    xsi_set_current_line(359, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(360, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB140;
    goto LAB1;

LAB140:    xsi_set_current_line(361, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(362, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB141;
    goto LAB1;

LAB141:    xsi_set_current_line(363, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(364, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB142;
    goto LAB1;

LAB142:    xsi_set_current_line(365, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(366, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB143;
    goto LAB1;

LAB143:    xsi_set_current_line(367, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(368, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB144;
    goto LAB1;

LAB144:    xsi_set_current_line(369, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(370, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB145;
    goto LAB1;

LAB145:    xsi_set_current_line(372, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(373, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB146;
    goto LAB1;

LAB146:    xsi_set_current_line(374, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(375, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB147;
    goto LAB1;

LAB147:    xsi_set_current_line(376, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(377, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB148;
    goto LAB1;

LAB148:    xsi_set_current_line(378, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(379, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB149;
    goto LAB1;

LAB149:    xsi_set_current_line(380, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(381, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB150;
    goto LAB1;

LAB150:    xsi_set_current_line(382, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(383, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB151;
    goto LAB1;

LAB151:    xsi_set_current_line(384, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(385, ng1);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB152;
    goto LAB1;

LAB152:    goto LAB1;

}

static void Always_387_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(387, ng1);
    t2 = (t0 + 4344);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(387, ng1);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2728);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

void Monitor_64_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 4592);
    t2 = (t0 + 5104);
    xsi_vlogfile_monitor((void *)Monitor_64_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000003877749518_0494531893_init()
{
	static char *pe[] = {(void *)Initial_63_0,(void *)Always_387_2,(void *)Monitor_64_1};
	xsi_register_didat("work_m_00000000003877749518_0494531893", "isim/test2_isim_beh.exe.sim/work/m_00000000003877749518_0494531893.didat");
	xsi_register_executes(pe);
}
