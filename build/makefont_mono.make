# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_win32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq ($(shell echo "test"), "test")
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

ifeq ($(origin CC), default)
  CC = gcc
endif
ifeq ($(origin CXX), default)
  CXX = g++
endif
ifeq ($(origin AR), default)
  AR = ar
endif
RESCOMP = windres
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
include config.gcc

define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_win32)
TARGETDIR = bin/gcc/Win32/Debug
TARGET = $(TARGETDIR)/makefontd.exe
OBJDIR = obj/gcc/Win32/Debug/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -D__WXDEBUG__ -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g -std=c++11
LIBS += ../lib/gcc_lib/libwxpdfdoc$(wxFlavour)d.a -l$(wxMonolithicLibName) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib/libwxpdfdoc$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib32 -m32

else ifeq ($(config),debug_win64)
TARGETDIR = bin/gcc/Win64/Debug
TARGET = $(TARGETDIR)/makefontd.exe
OBJDIR = obj/gcc/Win64/Debug/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -D__WXDEBUG__ -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=c++11
LIBS += ../lib/gcc_x64_lib/libwxpdfdoc$(wxFlavour)d.a -l$(wxMonolithicLibName) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib/libwxpdfdoc$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib64 -m64

else ifeq ($(config),release_win32)
TARGETDIR = bin/gcc/Win32/Release
TARGET = $(TARGETDIR)/makefont.exe
OBJDIR = obj/gcc/Win32/Release/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2 -std=c++11
LIBS += ../lib/gcc_lib/libwxpdfdoc$(wxFlavour).a -l$(wxMonolithicLibName) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib/libwxpdfdoc$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib32 -m32 -s

else ifeq ($(config),release_win64)
TARGETDIR = bin/gcc/Win64/Release
TARGET = $(TARGETDIR)/makefont.exe
OBJDIR = obj/gcc/Win64/Release/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -std=c++11
LIBS += ../lib/gcc_x64_lib/libwxpdfdoc$(wxFlavour).a -l$(wxMonolithicLibName) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib/libwxpdfdoc$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib64 -m64 -s

else ifeq ($(config),debug_wxdll_win32)
TARGETDIR = bin/gcc/Win32/Debug_wxDLL
TARGET = $(TARGETDIR)/makefontd.exe
OBJDIR = obj/gcc/Win32/Debug_wxDLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g -std=c++11
LIBS += ../lib/gcc_lib_wxdll/libwxpdfdoc$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib_wxdll/libwxpdfdoc$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32

else ifeq ($(config),debug_wxdll_win64)
TARGETDIR = bin/gcc/Win64/Debug_wxDLL
TARGET = $(TARGETDIR)/makefontd.exe
OBJDIR = obj/gcc/Win64/Debug_wxDLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=c++11
LIBS += ../lib/gcc_x64_lib_wxdll/libwxpdfdoc$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib_wxdll/libwxpdfdoc$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64

else ifeq ($(config),release_wxdll_win32)
TARGETDIR = bin/gcc/Win32/Release_wxDLL
TARGET = $(TARGETDIR)/makefont.exe
OBJDIR = obj/gcc/Win32/Release_wxDLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2 -std=c++11
LIBS += ../lib/gcc_lib_wxdll/libwxpdfdoc$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib_wxdll/libwxpdfdoc$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -s

else ifeq ($(config),release_wxdll_win64)
TARGETDIR = bin/gcc/Win64/Release_wxDLL
TARGET = $(TARGETDIR)/makefont.exe
OBJDIR = obj/gcc/Win64/Release_wxDLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_PDFDOC -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -std=c++11
LIBS += ../lib/gcc_x64_lib_wxdll/libwxpdfdoc$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib_wxdll/libwxpdfdoc$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -s

else ifeq ($(config),debug_dll_win32)
TARGETDIR = bin/gcc/Win32/Debug_DLL
TARGET = $(TARGETDIR)/makefontd.exe
OBJDIR = obj/gcc/Win32/Debug_DLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGDLL_PDFDOC -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g -std=c++11
LIBS += ../lib/gcc_dll/libwxpdfdoc$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_dll/libwxpdfdoc$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32

else ifeq ($(config),debug_dll_win64)
TARGETDIR = bin/gcc/Win64/Debug_DLL
TARGET = $(TARGETDIR)/makefontd.exe
OBJDIR = obj/gcc/Win64/Debug_DLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGDLL_PDFDOC -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=c++11
LIBS += ../lib/gcc_x64_dll/libwxpdfdoc$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_dll/libwxpdfdoc$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64

else ifeq ($(config),release_dll_win32)
TARGETDIR = bin/gcc/Win32/Release_DLL
TARGET = $(TARGETDIR)/makefont.exe
OBJDIR = obj/gcc/Win32/Release_DLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGDLL_PDFDOC -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2 -std=c++11
LIBS += ../lib/gcc_dll/libwxpdfdoc$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_dll/libwxpdfdoc$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -s

else ifeq ($(config),release_dll_win64)
TARGETDIR = bin/gcc/Win64/Release_DLL
TARGET = $(TARGETDIR)/makefont.exe
OBJDIR = obj/gcc/Win64/Release_DLL/makefont
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGDLL_PDFDOC -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -std=c++11
LIBS += ../lib/gcc_x64_dll/libwxpdfdoc$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_dll/libwxpdfdoc$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -s

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=
RESOURCES :=

GENERATED += $(OBJDIR)/makefont.o
GENERATED += $(OBJDIR)/makefont.res
OBJECTS += $(OBJDIR)/makefont.o
RESOURCES += $(OBJDIR)/makefont.res

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) $(RESOURCES) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking makefont
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning makefont
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) del /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/makefont.o: ../makefont/makefont.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/makefont.res: ../makefont/makefont.rc
	@echo "$(notdir $<)"
	$(SILENT) $(RESCOMP) $< -O coff -o "$@" $(ALL_RESFLAGS)

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif