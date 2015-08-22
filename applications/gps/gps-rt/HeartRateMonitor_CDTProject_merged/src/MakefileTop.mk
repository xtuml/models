# set default value for TARGETOS if is it not defined
ifeq ($(TARGETOS), )
$(warning warning: TARGETOS not defined. Choosing linux)
TARGETOS=linux
endif

# set default value for BUILDTOOLS if is it not defined
ifeq ($(BUILDTOOLS), )
$(warning warning: BUILDTOOLS not defined. Choosing x86-gcc-4.6.3)
BUILDTOOLS=x86-gcc-4.6.3
endif

# Location of RTS root.
UMLRTS_ROOT ?= /home/lee/eclipse/plugins/org.eclipse.papyrusrt.rts_0.5.0.201508180602/umlrts

CONFIG=$(TARGETOS).$(BUILDTOOLS)

# Destination directory for the RTS services library.
LIBDEST=$(UMLRTS_ROOT)/lib/$(CONFIG)

include $(UMLRTS_ROOT)/build/host/host.mk
include $(UMLRTS_ROOT)/build/buildtools/$(BUILDTOOLS)/buildtools.mk

C_EXT=.c
LD_PATHS=$(LIBDEST)
CC_INCLUDES+=$(UMLRTS_ROOT)/include

CC_DEFINES:=$(foreach d, $(CC_DEFINES), $(CC_DEF)$d)
CC_INCLUDES:=$(foreach i, $(CC_INCLUDES), $(CC_INC)$i)
LD_LIBS:=$(foreach i, $(LD_LIBS), $(LD_LIB)$i)
LD_PATHS:=$(foreach i, $(LD_PATHS), $(LD_LIBPATH)$i)

SRCS = \
		 TopMain.cc \
		 TopControllers.cc \
       Top.cc \
       HeartRateMonitor.cc \
       HeartRateMonitorProtocol.cc \
       GPSWatch.cc \
       GPSWatch_sys_main.c \
       HRM_bridge.c \
       Location.c \
       Location_GPS_class.c \
       LOG_bridge.c \
       MATH_bridge.c \
       sys_user_co.c \
		 sys_thread.c \
       sys_xtuml.c \
       TIM_bridge.c \
       Tracking_Achievement_class.c \
       Tracking.c \
       Tracking_Display_class.c \
       Tracking_Goal_class.c \
       Tracking_GoalSpec_class.c \
       Tracking_HeartRateSample_class.c \
       Tracking_LapMarker_class.c \
       Tracking_TrackLog_class.c \
       Tracking_TrackPoint_class.c \
       Tracking_WorkoutSession_class.c \
       Tracking_WorkoutTimer_class.c \
       UI.c \
       UI_GuiBridge_bridge.c \
       UI_TestCase_class.c \
       UI_UI_class.c

OBJS = \
		 sys_thread.o \
       sys_user_co.o \
       sys_xtuml.o \
       GPSWatch_sys_main.o \
		 TopMain.o \
		 TopControllers.o \
       Top.o \
       HeartRateMonitor.o \
       HeartRateMonitorProtocol.o \
       GPSWatch.o \
       HRM_bridge.o \
       Location.o \
       Location_GPS_class.o \
       LOG_bridge.o \
       MATH_bridge.o \
       TIM_bridge.o \
       Tracking_Achievement_class.o \
       Tracking.o \
       Tracking_Display_class.o \
       Tracking_Goal_class.o \
       Tracking_GoalSpec_class.o \
       Tracking_HeartRateSample_class.o \
       Tracking_LapMarker_class.o \
       Tracking_TrackLog_class.o \
       Tracking_TrackPoint_class.o \
       Tracking_WorkoutSession_class.o \
       Tracking_WorkoutTimer_class.o \
       UI.o \
       UI_GuiBridge_bridge.o \
       UI_TestCase_class.o \
       UI_UI_class.o

MAIN = TopMain$(EXE_EXT)

all: $(MAIN)

$(MAIN): $(OBJS) $(UMLRTS_ROOT)/lib/$(CONFIG)/$(LIB_PRFX)rts$(LIB_EXT)
	$(LD) $(LD_FLAGS) $(OBJS) $(LD_PATHS) $(LD_LIBS) $(LD_OUT)$@

%$(OBJ_EXT) : %$(CC_EXT)
	$(CC) $< $(CC_FLAGS) $(CC_DEFINES) $(CC_INCLUDES) $(CC_OUT)$@

%$(OBJ_EXT) : %$(C_EXT)
	$(CC) $< $(CC_FLAGS) $(CC_DEFINES) $(CC_INCLUDES) $(CC_OUT)$@

clean :
	@echo $(RM) main$(EXE_EXT) *$(OBJ_EXT) *$(DEP_EXT) $(DBG_FILES)
	@$(RM) main$(EXE_EXT) *$(OBJ_EXT) *$(DEP_EXT) $(DBG_FILES)

.PHONY: all clean
