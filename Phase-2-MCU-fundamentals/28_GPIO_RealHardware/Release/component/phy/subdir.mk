################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/phy/fsl_phyaqr113c.c \
../component/phy/fsl_phyar8031.c \
../component/phy/fsl_phydp8384x.c \
../component/phy/fsl_phygpy215.c \
../component/phy/fsl_phyjl1111.c \
../component/phy/fsl_phyksz8041.c \
../component/phy/fsl_phyksz8081.c \
../component/phy/fsl_phylan8720a.c \
../component/phy/fsl_phyrtl8201.c \
../component/phy/fsl_phyrtl8211f.c \
../component/phy/fsl_phytja1100.c \
../component/phy/fsl_phytja1104.c \
../component/phy/fsl_phytja1120.c \
../component/phy/fsl_phyvsc8541.c \
../component/phy/fsl_phyyt8521.c 

C_DEPS += \
./component/phy/fsl_phyaqr113c.d \
./component/phy/fsl_phyar8031.d \
./component/phy/fsl_phydp8384x.d \
./component/phy/fsl_phygpy215.d \
./component/phy/fsl_phyjl1111.d \
./component/phy/fsl_phyksz8041.d \
./component/phy/fsl_phyksz8081.d \
./component/phy/fsl_phylan8720a.d \
./component/phy/fsl_phyrtl8201.d \
./component/phy/fsl_phyrtl8211f.d \
./component/phy/fsl_phytja1100.d \
./component/phy/fsl_phytja1104.d \
./component/phy/fsl_phytja1120.d \
./component/phy/fsl_phyvsc8541.d \
./component/phy/fsl_phyyt8521.d 

OBJS += \
./component/phy/fsl_phyaqr113c.o \
./component/phy/fsl_phyar8031.o \
./component/phy/fsl_phydp8384x.o \
./component/phy/fsl_phygpy215.o \
./component/phy/fsl_phyjl1111.o \
./component/phy/fsl_phyksz8041.o \
./component/phy/fsl_phyksz8081.o \
./component/phy/fsl_phylan8720a.o \
./component/phy/fsl_phyrtl8201.o \
./component/phy/fsl_phyrtl8211f.o \
./component/phy/fsl_phytja1100.o \
./component/phy/fsl_phytja1104.o \
./component/phy/fsl_phytja1120.o \
./component/phy/fsl_phyvsc8541.o \
./component/phy/fsl_phyyt8521.o 


# Each subdirectory must supply rules for building sources it contributes
component/phy/%.o: ../component/phy/%.c component/phy/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_MCXN236VDF -DCPU_MCXN236VDF_cm33 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -DSDK_I2C_BASED_COMPONENT_USED=1 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__REDLIB__ -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\board" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\source" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities\str" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\drivers" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\serial_manager" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\device" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\device\periph1" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities\debug_console" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\CMSIS" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\CMSIS\m-profile" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\lists" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities\debug_console\config" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\uart" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\video" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\touchpanel" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\gyroscope" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\accel" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\htu" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\icm42688p" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\tilt_pedo" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\heartrate" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\nmh1000" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\p3t1755" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\tsl" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\pmic\pf1550" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\pmic\pf3000" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\pmic\pf5020" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\phy" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\phy" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\lcdc" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\oled" -Os -fno-common -g -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-phy

clean-component-2f-phy:
	-$(RM) ./component/phy/fsl_phyaqr113c.d ./component/phy/fsl_phyaqr113c.o ./component/phy/fsl_phyar8031.d ./component/phy/fsl_phyar8031.o ./component/phy/fsl_phydp8384x.d ./component/phy/fsl_phydp8384x.o ./component/phy/fsl_phygpy215.d ./component/phy/fsl_phygpy215.o ./component/phy/fsl_phyjl1111.d ./component/phy/fsl_phyjl1111.o ./component/phy/fsl_phyksz8041.d ./component/phy/fsl_phyksz8041.o ./component/phy/fsl_phyksz8081.d ./component/phy/fsl_phyksz8081.o ./component/phy/fsl_phylan8720a.d ./component/phy/fsl_phylan8720a.o ./component/phy/fsl_phyrtl8201.d ./component/phy/fsl_phyrtl8201.o ./component/phy/fsl_phyrtl8211f.d ./component/phy/fsl_phyrtl8211f.o ./component/phy/fsl_phytja1100.d ./component/phy/fsl_phytja1100.o ./component/phy/fsl_phytja1104.d ./component/phy/fsl_phytja1104.o ./component/phy/fsl_phytja1120.d ./component/phy/fsl_phytja1120.o ./component/phy/fsl_phyvsc8541.d ./component/phy/fsl_phyvsc8541.o ./component/phy/fsl_phyyt8521.d ./component/phy/fsl_phyyt8521.o

.PHONY: clean-component-2f-phy

