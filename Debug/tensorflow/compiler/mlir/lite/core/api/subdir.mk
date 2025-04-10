################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/compiler/mlir/lite/core/api/error_reporter.cc 

CC_DEPS += \
./tensorflow/compiler/mlir/lite/core/api/error_reporter.d 

OBJS += \
./tensorflow/compiler/mlir/lite/core/api/error_reporter.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/compiler/mlir/lite/core/api/%.o tensorflow/compiler/mlir/lite/core/api/%.su tensorflow/compiler/mlir/lite/core/api/%.cyclo: ../tensorflow/compiler/mlir/lite/core/api/%.cc tensorflow/compiler/mlir/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-compiler-2f-mlir-2f-lite-2f-core-2f-api

clean-tensorflow-2f-compiler-2f-mlir-2f-lite-2f-core-2f-api:
	-$(RM) ./tensorflow/compiler/mlir/lite/core/api/error_reporter.cyclo ./tensorflow/compiler/mlir/lite/core/api/error_reporter.d ./tensorflow/compiler/mlir/lite/core/api/error_reporter.o ./tensorflow/compiler/mlir/lite/core/api/error_reporter.su

.PHONY: clean-tensorflow-2f-compiler-2f-mlir-2f-lite-2f-core-2f-api

