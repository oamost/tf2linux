ifneq "$(LINUX_TOOLS_PATH)" ""
TOOL_PATH = $(LINUX_TOOLS_PATH)/
endif

NAME=dmxloader
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
DEFINES= -DVPC -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DDMXLOADER_LIB -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=VALVE -DPROJECTDIR=/run/media/dt/5126d622-6bab-492e-9d3d-c8f1263ce69c/tf2linux/tf2_src/dmxloader -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=valve -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
INCLUDEDIRS += ../common ../public ../public/tier0 ../public/tier1 ../thirdparty/SDL2 
CONFTYPE=lib
GAMEOUTPUTFILE=../lib/public/linux32/dmxloader.a
TARGETCOPIES=
OUTPUTFILE=dmxloader.a


POSTBUILDCOMMAND=/bin/true



CPPFILES= \
    dmxattribute.cpp \
    dmxelement.cpp \
    dmxloader.cpp \
    dmxloadertext.cpp \
    dmxserializationdictionary.cpp \


LIBFILES = \


LIBFILENAMES = \



OTHER_DEPENDENCIES = \


-include $(OBJ_DIR)/_other_deps.P


# Include the base makefile now.
include $(SRCROOT)/devtools/makefile_base_posix.mak



ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dmxattribute.P
endif

$(OBJ_DIR)/dmxattribute.o : $(abspath dmxattribute.cpp) $(PWD)/dmxloader_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dmxelement.P
endif

$(OBJ_DIR)/dmxelement.o : $(abspath dmxelement.cpp) $(PWD)/dmxloader_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dmxloader.P
endif

$(OBJ_DIR)/dmxloader.o : $(abspath dmxloader.cpp) $(PWD)/dmxloader_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dmxloadertext.P
endif

$(OBJ_DIR)/dmxloadertext.o : $(abspath dmxloadertext.cpp) $(PWD)/dmxloader_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dmxserializationdictionary.P
endif

$(OBJ_DIR)/dmxserializationdictionary.o : $(abspath dmxserializationdictionary.cpp) $(PWD)/dmxloader_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)


endif # (CFG=debug)