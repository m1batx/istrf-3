################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Tnaserflow/tensorflow/lite/micro/testing/test_conv_model.cc \
../Tnaserflow/tensorflow/lite/micro/testing/test_utils.cc 

CC_DEPS += \
./Tnaserflow/tensorflow/lite/micro/testing/test_conv_model.d \
./Tnaserflow/tensorflow/lite/micro/testing/test_utils.d 

OBJS += \
./Tnaserflow/tensorflow/lite/micro/testing/test_conv_model.o \
./Tnaserflow/tensorflow/lite/micro/testing/test_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Tnaserflow/tensorflow/lite/micro/testing/%.o Tnaserflow/tensorflow/lite/micro/testing/%.su Tnaserflow/tensorflow/lite/micro/testing/%.cyclo: ../Tnaserflow/tensorflow/lite/micro/testing/%.cc Tnaserflow/tensorflow/lite/micro/testing/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/ruy" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/gemmlowp" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/flatbuffers/include" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-testing

clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-testing:
	-$(RM) ./Tnaserflow/tensorflow/lite/micro/testing/test_conv_model.cyclo ./Tnaserflow/tensorflow/lite/micro/testing/test_conv_model.d ./Tnaserflow/tensorflow/lite/micro/testing/test_conv_model.o ./Tnaserflow/tensorflow/lite/micro/testing/test_conv_model.su ./Tnaserflow/tensorflow/lite/micro/testing/test_utils.cyclo ./Tnaserflow/tensorflow/lite/micro/testing/test_utils.d ./Tnaserflow/tensorflow/lite/micro/testing/test_utils.o ./Tnaserflow/tensorflow/lite/micro/testing/test_utils.su

.PHONY: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-testing

