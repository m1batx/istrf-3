################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/add.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/conv.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/mul.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/pooling.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/softmax.cc 

CC_DEPS += \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/add.d \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/conv.d \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.d \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.d \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/mul.d \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/pooling.d \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/softmax.d 

OBJS += \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/add.o \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/conv.o \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.o \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.o \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/mul.o \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/pooling.o \
./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/softmax.o 


# Each subdirectory must supply rules for building sources it contributes
Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/%.o Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/%.su Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/%.cyclo: ../Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/%.cc Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/ruy" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/gemmlowp" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/flatbuffers/include" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis-2d-nn

clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis-2d-nn:
	-$(RM) ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/add.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/add.d ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/add.o ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/add.su ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/conv.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/conv.d ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/conv.o ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/conv.su ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.d ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.o ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.su ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.d ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.o ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.su ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/mul.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/mul.d ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/mul.o ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/mul.su ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/pooling.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/pooling.d ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/pooling.o ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/pooling.su ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/softmax.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/softmax.d ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/softmax.o ./Tnaserflow/tensorflow/lite/micro/kernels/cmsis-nn/softmax.su

.PHONY: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis-2d-nn

