ifneq "$(LINUX_TOOLS_PATH)" ""
TOOL_PATH = $(LINUX_TOOLS_PATH)/
endif

NAME=choreoobjects
SRCROOT=..
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
DEFINES= -DVPC -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=VALVE -DPROJECTDIR=/run/media/dt/5126d622-6bab-492e-9d3d-c8f1263ce69c/tf2linux/tf2_src/choreoobjects -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=valve -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
INCLUDEDIRS += ../common ../public ../public/tier0 ../public/tier1 ../thirdparty/SDL2 ../game/shared ../utils/common 
CONFTYPE=lib
GAMEOUTPUTFILE=../lib/public/linux32/choreoobjects.a
TARGETCOPIES=
OUTPUTFILE=choreoobjects.a


POSTBUILDCOMMAND=/bin/true



CPPFILES= \
    ../game/shared/choreoactor.cpp \
    ../game/shared/choreochannel.cpp \
    ../game/shared/choreoevent.cpp \
    ../game/shared/choreoscene.cpp \
    ../game/shared/sceneimage.cpp \


LIBFILES = \


LIBFILENAMES = \



OTHER_DEPENDENCIES = \


-include $(OBJ_DIR)/_other_deps.P


# Include the base makefile now.
include $(SRCROOT)/devtools/makefile_base_posix.mak



ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/choreoactor.P
endif

$(OBJ_DIR)/choreoactor.o : $(abspath ../game/shared/choreoactor.cpp) $(PWD)/choreoobjects_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/choreochannel.P
endif

$(OBJ_DIR)/choreochannel.o : $(abspath ../game/shared/choreochannel.cpp) $(PWD)/choreoobjects_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/choreoevent.P
endif

$(OBJ_DIR)/choreoevent.o : $(abspath ../game/shared/choreoevent.cpp) $(PWD)/choreoobjects_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/choreoscene.P
endif

$(OBJ_DIR)/choreoscene.o : $(abspath ../game/shared/choreoscene.cpp) $(PWD)/choreoobjects_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sceneimage.P
endif

$(OBJ_DIR)/sceneimage.o : $(abspath ../game/shared/sceneimage.cpp) $(PWD)/choreoobjects_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)


endif # (CFG=debug)