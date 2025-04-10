################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../third_party/kissfft/tools/kiss_fftr.c 

C_DEPS += \
./third_party/kissfft/tools/kiss_fftr.d 

OBJS += \
./third_party/kissfft/tools/kiss_fftr.o 


# Each subdirectory must supply rules for building sources it contributes
third_party/kissfft/tools/%.o third_party/kissfft/tools/%.su third_party/kissfft/tools/%.cyclo: ../third_party/kissfft/tools/%.c third_party/kissfft/tools/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/tensorflow/lite/micro" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/tensorflow" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/tensorflow/lite/c" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/tensorflow/lite/micro/kernels" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-third_party-2f-kissfft-2f-tools

clean-third_party-2f-kissfft-2f-tools:
	-$(RM) ./third_party/kissfft/tools/kiss_fftr.cyclo ./third_party/kissfft/tools/kiss_fftr.d ./third_party/kissfft/tools/kiss_fftr.o ./third_party/kissfft/tools/kiss_fftr.su

.PHONY: clean-third_party-2f-kissfft-2f-tools

