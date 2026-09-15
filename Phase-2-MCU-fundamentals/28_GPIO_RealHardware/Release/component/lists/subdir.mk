################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/lists/fsl_component_generic_list.c 

C_DEPS += \
./component/lists/fsl_component_generic_list.d 

OBJS += \
./component/lists/fsl_component_generic_list.o 


# Each subdirectory must supply rules for building sources it contributes
component/lists/%.o: ../component/lists/%.c component/lists/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_MCXN236VDF -DCPU_MCXN236VDF_cm33 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -DSDK_I2C_BASED_COMPONENT_USED=1 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__REDLIB__ -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\board" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\source" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities\str" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\drivers" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\serial_manager" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\device" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\device\periph1" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities\debug_console" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\CMSIS" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\CMSIS\m-profile" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\lists" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\utilities\debug_console\config" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\uart" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\video" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\touchpanel" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\gyroscope" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\accel" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\htu" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\icm42688p" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\tilt_pedo" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\heartrate" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\nmh1000" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\p3t1755" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\tsl" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\pmic\pf1550" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\pmic\pf3000" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\pmic\pf5020" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\component\phy" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\phy" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\lcdc" -I"C:\Users\Pc\Desktop\Embedded_Systems_Journey\Phase-2-MCU-fundamentals\28_GPIO_RealHardware\oled" -Os -fno-common -g -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-lists

clean-component-2f-lists:
	-$(RM) ./component/lists/fsl_component_generic_list.d ./component/lists/fsl_component_generic_list.o

.PHONY: clean-component-2f-lists

