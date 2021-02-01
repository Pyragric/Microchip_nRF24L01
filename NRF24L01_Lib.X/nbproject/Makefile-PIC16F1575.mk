#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-PIC16F1575.mk)" "nbproject/Makefile-local-PIC16F1575.mk"
include nbproject/Makefile-local-PIC16F1575.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC16F1575
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="01 - SRC/01_Appli/Application.c" "01 - SRC/02_Soft_SPI/Soft_SPI.c" "01 - SRC/03_NRF24L01/NRF24L01.c" main.c "01 - SRC/05_MCC_16F1575/device_config.c" "01 - SRC/05_MCC_16F1575/eusart.c" "01 - SRC/05_MCC_16F1575/interrupt_manager.c" "01 - SRC/05_MCC_16F1575/mcc.c" "01 - SRC/05_MCC_16F1575/pin_manager.c" "01 - SRC/05_MCC_16F1575/pwm1.c" "01 - SRC/05_MCC_16F1575/tmr0.c" "01 - SRC/05_MCC_16F1575/tmr1.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/01 - SRC/01_Appli/Application.p1" "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1" "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1" ${OBJECTDIR}/main.p1 "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1"
POSSIBLE_DEPFILES="${OBJECTDIR}/01 - SRC/01_Appli/Application.p1.d" "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1.d" "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1.d" ${OBJECTDIR}/main.p1.d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1.d" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1.d" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1.d" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1.d" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1.d" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1.d" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1.d" "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/01\ -\ SRC/01_Appli/Application.p1 ${OBJECTDIR}/01\ -\ SRC/02_Soft_SPI/Soft_SPI.p1 ${OBJECTDIR}/01\ -\ SRC/03_NRF24L01/NRF24L01.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/device_config.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/eusart.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/interrupt_manager.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/mcc.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/pin_manager.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/pwm1.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/tmr0.p1 ${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/tmr1.p1

# Source Files
SOURCEFILES=01 - SRC/01_Appli/Application.c 01 - SRC/02_Soft_SPI/Soft_SPI.c 01 - SRC/03_NRF24L01/NRF24L01.c main.c 01 - SRC/05_MCC_16F1575/device_config.c 01 - SRC/05_MCC_16F1575/eusart.c 01 - SRC/05_MCC_16F1575/interrupt_manager.c 01 - SRC/05_MCC_16F1575/mcc.c 01 - SRC/05_MCC_16F1575/pin_manager.c 01 - SRC/05_MCC_16F1575/pwm1.c 01 - SRC/05_MCC_16F1575/tmr0.c 01 - SRC/05_MCC_16F1575/tmr1.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-PIC16F1575.mk dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1575
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/01\ -\ SRC/01_Appli/Application.p1: 01\ -\ SRC/01_Appli/Application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/01_Appli" 
	@${RM} "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1" "01 - SRC/01_Appli/Application.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/01_Appli/Application".d "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/02_Soft_SPI/Soft_SPI.p1: 01\ -\ SRC/02_Soft_SPI/Soft_SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/02_Soft_SPI" 
	@${RM} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1" "01 - SRC/02_Soft_SPI/Soft_SPI.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI".d "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/03_NRF24L01/NRF24L01.p1: 01\ -\ SRC/03_NRF24L01/NRF24L01.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/03_NRF24L01" 
	@${RM} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1" "01 - SRC/03_NRF24L01/NRF24L01.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01".d "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/device_config.p1: 01\ -\ SRC/05_MCC_16F1575/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1" "01 - SRC/05_MCC_16F1575/device_config.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/eusart.p1: 01\ -\ SRC/05_MCC_16F1575/eusart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1" "01 - SRC/05_MCC_16F1575/eusart.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/interrupt_manager.p1: 01\ -\ SRC/05_MCC_16F1575/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1" "01 - SRC/05_MCC_16F1575/interrupt_manager.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/mcc.p1: 01\ -\ SRC/05_MCC_16F1575/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1" "01 - SRC/05_MCC_16F1575/mcc.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/pin_manager.p1: 01\ -\ SRC/05_MCC_16F1575/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1" "01 - SRC/05_MCC_16F1575/pin_manager.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/pwm1.p1: 01\ -\ SRC/05_MCC_16F1575/pwm1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1" "01 - SRC/05_MCC_16F1575/pwm1.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/tmr0.p1: 01\ -\ SRC/05_MCC_16F1575/tmr0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1" "01 - SRC/05_MCC_16F1575/tmr0.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/tmr1.p1: 01\ -\ SRC/05_MCC_16F1575/tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1" "01 - SRC/05_MCC_16F1575/tmr1.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/01\ -\ SRC/01_Appli/Application.p1: 01\ -\ SRC/01_Appli/Application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/01_Appli" 
	@${RM} "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1" "01 - SRC/01_Appli/Application.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/01_Appli/Application".d "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/01_Appli/Application.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/02_Soft_SPI/Soft_SPI.p1: 01\ -\ SRC/02_Soft_SPI/Soft_SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/02_Soft_SPI" 
	@${RM} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1" "01 - SRC/02_Soft_SPI/Soft_SPI.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI".d "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/02_Soft_SPI/Soft_SPI.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/03_NRF24L01/NRF24L01.p1: 01\ -\ SRC/03_NRF24L01/NRF24L01.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/03_NRF24L01" 
	@${RM} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1" "01 - SRC/03_NRF24L01/NRF24L01.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01".d "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/03_NRF24L01/NRF24L01.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/device_config.p1: 01\ -\ SRC/05_MCC_16F1575/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1" "01 - SRC/05_MCC_16F1575/device_config.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/device_config.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/eusart.p1: 01\ -\ SRC/05_MCC_16F1575/eusart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1" "01 - SRC/05_MCC_16F1575/eusart.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/eusart.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/interrupt_manager.p1: 01\ -\ SRC/05_MCC_16F1575/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1" "01 - SRC/05_MCC_16F1575/interrupt_manager.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/interrupt_manager.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/mcc.p1: 01\ -\ SRC/05_MCC_16F1575/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1" "01 - SRC/05_MCC_16F1575/mcc.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/mcc.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/pin_manager.p1: 01\ -\ SRC/05_MCC_16F1575/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1" "01 - SRC/05_MCC_16F1575/pin_manager.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pin_manager.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/pwm1.p1: 01\ -\ SRC/05_MCC_16F1575/pwm1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1" "01 - SRC/05_MCC_16F1575/pwm1.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/pwm1.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/tmr0.p1: 01\ -\ SRC/05_MCC_16F1575/tmr0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1" "01 - SRC/05_MCC_16F1575/tmr0.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr0.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/01\ -\ SRC/05_MCC_16F1575/tmr1.p1: 01\ -\ SRC/05_MCC_16F1575/tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575" 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1".d 
	@${RM} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -DXPRJ_PIC16F1575=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1" "01 - SRC/05_MCC_16F1575/tmr1.c" 
	@-${MV} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1".d "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/01 - SRC/05_MCC_16F1575/tmr1.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_PIC16F1575=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.map  -DXPRJ_PIC16F1575=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01 - SRC" -I"../../../../../../../../Program Files (x86)/Microchip/xc8/pic/include" -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/NRF24L01_Lib.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC16F1575
	${RM} -r dist/PIC16F1575

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
