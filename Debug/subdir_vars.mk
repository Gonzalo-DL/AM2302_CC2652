################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CFG_SRCS += \
../AM2302.cfg 

CMD_SRCS += \
../cc13x2_cc26x2_tirtos.cmd 

SYSCFG_SRCS += \
../AM2302.syscfg 

C_SRCS += \
../AM2302.c \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c \
../AM2302_reading.c 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_FILES += \
./configPkg/linker.cmd \
./configPkg/compiler.opt \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c 

GEN_MISC_DIRS += \
./configPkg/ \
./syscfg/ 

C_DEPS += \
./AM2302.d \
./syscfg/ti_devices_config.d \
./syscfg/ti_drivers_config.d \
./AM2302_reading.d 

GEN_OPTS += \
./configPkg/compiler.opt 

OBJS += \
./AM2302.obj \
./syscfg/ti_devices_config.obj \
./syscfg/ti_drivers_config.obj \
./AM2302_reading.obj 

GEN_MISC_FILES += \
./syscfg/ti_drivers_config.h \
./syscfg/ti_utils_build_linker.cmd.genlibs \
./syscfg/syscfg_c.rov.xs \
./syscfg/ti_utils_runtime_model.gv \
./syscfg/ti_utils_runtime_Makefile 

GEN_MISC_DIRS__QUOTED += \
"configPkg\" \
"syscfg\" 

OBJS__QUOTED += \
"AM2302.obj" \
"syscfg\ti_devices_config.obj" \
"syscfg\ti_drivers_config.obj" \
"AM2302_reading.obj" 

GEN_MISC_FILES__QUOTED += \
"syscfg\ti_drivers_config.h" \
"syscfg\ti_utils_build_linker.cmd.genlibs" \
"syscfg\syscfg_c.rov.xs" \
"syscfg\ti_utils_runtime_model.gv" \
"syscfg\ti_utils_runtime_Makefile" 

C_DEPS__QUOTED += \
"AM2302.d" \
"syscfg\ti_devices_config.d" \
"syscfg\ti_drivers_config.d" \
"AM2302_reading.d" 

GEN_FILES__QUOTED += \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" \
"syscfg\ti_devices_config.c" \
"syscfg\ti_drivers_config.c" 

C_SRCS__QUOTED += \
"../AM2302.c" \
"./syscfg/ti_devices_config.c" \
"./syscfg/ti_drivers_config.c" \
"../AM2302_reading.c" 

SYSCFG_SRCS__QUOTED += \
"../AM2302.syscfg" 


