ifneq "$(LINUX_TOOLS_PATH)" ""
TOOL_PATH = $(LINUX_TOOLS_PATH)/
endif

NAME=replay_common
SRCROOT=../..
TARGET_PLATFORM=linux32
TARGET_PLATFORM_EXT=
USE_VALVE_BINDIR=0
PWD:=$(shell $(TOOL_PATH)pwd)
# If no configuration is specified, "release" will be used.
ifeq "$(CFG)" ""
	CFG = debug
endif

#
#
# CFG=debug
#
#

ifeq "$(CFG)" "debug"

GCC_ExtraCompilerFlags=
GCC_ExtraLinkerFlags=
GCC_CustomVersionScript=
EntryPoint=
IgnoreAllDefaultLibraries=no
BufferSecurityCheck=Yes
SymbolVisibility=hidden
TreatWarningsAsErrors=false
OptimizerLevel=-gdwarf-4 -g2 $(OptimizerLevel_CompilerSpecific)
SystemLibraries=
DLL_EXT=.so
SYM_EXT=.dbg
FORCEINCLUDES= 
DEFINES= -DVPC -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=VALVE -DPROJECTDIR=/run/media/dt/5126d622-6bab-492e-9d3d-c8f1263ce69c/tf2linux/tf2_src/replay/common -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=valve -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
INCLUDEDIRS += ../../common ../../public ../../public/tier0 ../../public/tier1 ../../thirdparty/SDL2 
CONFTYPE=lib
GAMEOUTPUTFILE=../../lib/common/linux32/replay_common.a
TARGETCOPIES=
OUTPUTFILE=replay_common.a


POSTBUILDCOMMAND=/bin/true



CPPFILES= \
    basereplayserializeable.cpp \
    performance.cpp \
    replay.cpp \
    replaylib.cpp \
    replaytime.cpp \
    replayutils.cpp \
    screenshot.cpp \


LIBFILES = \


LIBFILENAMES = \



OTHER_DEPENDENCIES = \


-include $(OBJ_DIR)/_other_deps.P


# Include the base makefile now.
include $(SRCROOT)/devtools/makefile_base_posix.mak



ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basereplayserializeable.P
endif

$(OBJ_DIR)/basereplayserializeable.o : $(abspath basereplayserializeable.cpp) $(PWD)/replay_common_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/performance.P
endif

$(OBJ_DIR)/performance.o : $(abspath performance.cpp) $(PWD)/replay_common_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/replay.P
endif

$(OBJ_DIR)/replay.o : $(abspath replay.cpp) $(PWD)/replay_common_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/replaylib.P
endif

$(OBJ_DIR)/replaylib.o : $(abspath replaylib.cpp) $(PWD)/replay_common_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/replaytime.P
endif

$(OBJ_DIR)/replaytime.o : $(abspath replaytime.cpp) $(PWD)/replay_common_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/replayutils.P
endif

$(OBJ_DIR)/replayutils.o : $(abspath replayutils.cpp) $(PWD)/replay_common_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/screenshot.P
endif

$(OBJ_DIR)/screenshot.o : $(abspath screenshot.cpp) $(PWD)/replay_common_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)


endif # (CFG=debug)