################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Tnaserflow/tensorflow/lite/kernels/internal/quantization_util.cc 

CC_DEPS += \
./Tnaserflow/tensorflow/lite/kernels/internal/quantization_util.d 

OBJS += \
./Tnaserflow/tensorflow/lite/kernels/internal/quantization_util.o 


# Each subdirectory must supply rules for building sources it contributes
Tnaserflow/tensorflow/lite/kernels/internal/%.o Tnaserflow/tensorflow/lite/kernels/internal/%.su Tnaserflow/tensorflow/lite/kernels/internal/%.cyclo: ../Tnaserflow/tensorflow/lite/kernels/internal/%.cc Tnaserflow/tensorflow/lite/kernels/internal/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/ruy" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/gemmlowp" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/flatbuffers/include" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-kernels-2f-internal

clean-Tnaserflow-2f-tensorflow-2f-lite-2f-kernels-2f-internal:
	-$(RM) ./Tnaserflow/tensorflow/lite/kernels/internal/quantization_util.cyclo ./Tnaserflow/tensorflow/lite/kernels/internal/quantization_util.d ./Tnaserflow/tensorflow/lite/kernels/internal/quantization_util.o ./Tnaserflow/tensorflow/lite/kernels/internal/quantization_util.su

.PHONY: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-kernels-2f-internal

