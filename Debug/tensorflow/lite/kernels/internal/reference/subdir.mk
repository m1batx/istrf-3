################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/kernels/internal/reference/comparisons.cc \
../tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc 

CC_DEPS += \
./tensorflow/lite/kernels/internal/reference/comparisons.d \
./tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d 

OBJS += \
./tensorflow/lite/kernels/internal/reference/comparisons.o \
./tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/kernels/internal/reference/%.o tensorflow/lite/kernels/internal/reference/%.su tensorflow/lite/kernels/internal/reference/%.cyclo: ../tensorflow/lite/kernels/internal/reference/%.cc tensorflow/lite/kernels/internal/reference/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

clean-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference:
	-$(RM) ./tensorflow/lite/kernels/internal/reference/comparisons.cyclo ./tensorflow/lite/kernels/internal/reference/comparisons.d ./tensorflow/lite/kernels/internal/reference/comparisons.o ./tensorflow/lite/kernels/internal/reference/comparisons.su ./tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cyclo ./tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d ./tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o ./tensorflow/lite/kernels/internal/reference/portable_tensor_utils.su

.PHONY: clean-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

