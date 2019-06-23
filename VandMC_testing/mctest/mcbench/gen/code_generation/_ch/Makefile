#=============================================================================
# File: Makefile
#
# Warnings:
#   !!! THIS IS AN AUTO-GENERATED FILE. PLEASE DO NOT EDIT. !!!
#=============================================================================

.POSIX:
.SCCS_GET:

# Displays the available targets in tabular format.
help :
    @echo "============================================================"
    @echo " Primary Targets       | Compile     Link"
    @echo "============================================================"
    @echo "   all                 |   YES        YES"
    @echo "   comp_src            |   YES         NO"
    @echo "   link_sys            |   YES        YES"
    @echo "   clean               |   "
    @echo "============================================================="

include /home/lee/git/models/VandMC_testing/mctest/mcbench/gen/code_generation/Makefile.in
include /home/lee/git/models/VandMC_testing/mctest/mcbench/gen/code_generation/Makefile.user

# use Target C Cross Compiler
CMD_TARGET_COMPILE    = ${CMD_COMPILE}
CMD_TARGET_ASSEMBLE   =
CMD_TARGET_PREPROCESS =
CMD_TARGET_LINK       = ${CMD_LINK}

# Relative paths for object and source files.
SRC_PATH=
OBJ_PATH=
#=============================================================================
# List of all object files to be compiled.
#=============================================================================
USER_OBJ_TARGETS = \
	${OBJ_PATH}perf_funcs_G_class.o \
	${OBJ_PATH}perf_funcs_A_class.o \
	${OBJ_PATH}perf_funcs_D_class.o \
	${OBJ_PATH}DELTA_bridge.orig.o \
	${OBJ_PATH}sys_user_co.o \
	${OBJ_PATH}perf_testloop_LOOP_class.o \
	${OBJ_PATH}sys_xtuml.o \
	${OBJ_PATH}perf_funcs_CBENCH_class.o \
	${OBJ_PATH}sys_user_co.orig.o \
	${OBJ_PATH}perf_testloop.o \
	${OBJ_PATH}mcbench_sys_main.o \
	${OBJ_PATH}perf_funcs.o \
	${OBJ_PATH}perf_funcs_BENCHMARK_class.o \
	${OBJ_PATH}perf_funcs_F_class.o \
	${OBJ_PATH}perf_funcs_C_class.o \
	${OBJ_PATH}DELTA_bridge.o \
	${OBJ_PATH}perf_funcs_B_class.o \
	${OBJ_PATH}ARCH_bridge.o \
	${OBJ_PATH}perf_funcs_CBENCHMARK_bridge.o \
	${OBJ_PATH}perf_funcs_E_class.o \
	${OBJ_PATH}TIM_bridge.o \

#=============================================================================
# Source file target recipes.
#=============================================================================
${OBJ_PATH}perf_funcs_G_class.o : ${SRC_PATH}perf_funcs_G_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_A_class.o : ${SRC_PATH}perf_funcs_A_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_D_class.o : ${SRC_PATH}perf_funcs_D_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}DELTA_bridge.orig.o : ${SRC_PATH}DELTA_bridge.c.orig
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}sys_user_co.o : ${SRC_PATH}sys_user_co.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_testloop_LOOP_class.o : ${SRC_PATH}perf_testloop_LOOP_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}sys_xtuml.o : ${SRC_PATH}sys_xtuml.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_CBENCH_class.o : ${SRC_PATH}perf_funcs_CBENCH_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}sys_user_co.orig.o : ${SRC_PATH}sys_user_co.c.orig
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_testloop.o : ${SRC_PATH}perf_testloop.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}mcbench_sys_main.o : ${SRC_PATH}mcbench_sys_main.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs.o : ${SRC_PATH}perf_funcs.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_BENCHMARK_class.o : ${SRC_PATH}perf_funcs_BENCHMARK_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_F_class.o : ${SRC_PATH}perf_funcs_F_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_C_class.o : ${SRC_PATH}perf_funcs_C_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}DELTA_bridge.o : ${SRC_PATH}DELTA_bridge.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_B_class.o : ${SRC_PATH}perf_funcs_B_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}ARCH_bridge.o : ${SRC_PATH}ARCH_bridge.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_CBENCHMARK_bridge.o : ${SRC_PATH}perf_funcs_CBENCHMARK_bridge.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}perf_funcs_E_class.o : ${SRC_PATH}perf_funcs_E_class.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

${OBJ_PATH}TIM_bridge.o : ${SRC_PATH}TIM_bridge.c
	${CMD_TARGET_COMPILE}
	${CMD_TARGET_ASSEMBLE}

#=============================================================================
# Build environment targets.
#=============================================================================
# Clean out compiled object files.
clean :
    @'rm' -f ${OBJ_PATH}*.o

# Target for compiling objects.
comp_src : ${USER_OBJ_TARGETS}

# Target for link system.
link_sys : ${USER_OBJ_TARGETS}
    $(CMD_TARGET_LINK) $(USER_OBJ_TARGETS)

all : comp_src link_sys
