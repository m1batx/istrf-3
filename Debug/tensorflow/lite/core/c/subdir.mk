################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/core/c/common.cc 

CC_DEPS += \
./tensorflow/lite/core/c/common.d 

OBJS += \
./tensorflow/lite/core/c/common.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/core/c/%.o tensorflow/lite/core/c/%.su tensorflow/lite/core/c/%.cyclo: ../tensorflow/lite/core/c/%.cc tensorflow/lite/core/c/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-core-2f-c

clean-tensorflow-2f-lite-2f-core-2f-c:
	-$(RM) ./tensorflow/lite/core/c/common.cyclo ./tensorflow/lite/core/c/common.d ./tensorflow/lite/core/c/common.o ./tensorflow/lite/core/c/common.su

.PHONY: clean-tensorflow-2f-lite-2f-core-2f-c

