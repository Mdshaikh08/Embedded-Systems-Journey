################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include video/subdir.mk
-include utilities/str/subdir.mk
-include utilities/debug_console/subdir.mk
-include utilities/subdir.mk
-include tsl/subdir.mk
-include tilt_pedo/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include phy/subdir.mk
-include nmh1000/subdir.mk
-include icm42688p/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/serial_manager/subdir.mk
-include component/pmic/pf5020/subdir.mk
-include component/pmic/pf3000/subdir.mk
-include component/pmic/pf1550/subdir.mk
-include component/phy/subdir.mk
-include component/p3t1755/subdir.mk
-include component/lists/subdir.mk
-include board/subdir.mk
-include accel/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := 28_GPIO_RealHardware
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: 28_GPIO_RealHardware.axf

# Tool invocations
28_GPIO_RealHardware.axf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -Map="28_GPIO_RealHardware.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -T 28_GPIO_RealHardware_Debug.ld -o "28_GPIO_RealHardware.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) 28_GPIO_RealHardware.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "28_GPIO_RealHardware.axf"; # arm-none-eabi-objcopy -v -O binary "28_GPIO_RealHardware.axf" "28_GPIO_RealHardware.bin" ; # checksum -p MCXN236 -d "28_GPIO_RealHardware.bin";
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
