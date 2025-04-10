################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Tnaserflow/tensorflow/lite/micro/kernels/activations.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/arg_min_max.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/ceil.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/circular_buffer.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/comparisons.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/concatenation.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/dequantize.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/elementwise.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/ethosu.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/floor.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/hard_swish.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/l2norm.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/logical.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/logistic.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/maximum_minimum.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/neg.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/pack.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/pad.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/prelu.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/quantize.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/reduce.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/reshape.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/round.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/split.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/strided_slice.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/sub.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/svdf.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/tanh.cc \
../Tnaserflow/tensorflow/lite/micro/kernels/unpack.cc 

CC_DEPS += \
./Tnaserflow/tensorflow/lite/micro/kernels/activations.d \
./Tnaserflow/tensorflow/lite/micro/kernels/arg_min_max.d \
./Tnaserflow/tensorflow/lite/micro/kernels/ceil.d \
./Tnaserflow/tensorflow/lite/micro/kernels/circular_buffer.d \
./Tnaserflow/tensorflow/lite/micro/kernels/comparisons.d \
./Tnaserflow/tensorflow/lite/micro/kernels/concatenation.d \
./Tnaserflow/tensorflow/lite/micro/kernels/dequantize.d \
./Tnaserflow/tensorflow/lite/micro/kernels/elementwise.d \
./Tnaserflow/tensorflow/lite/micro/kernels/ethosu.d \
./Tnaserflow/tensorflow/lite/micro/kernels/floor.d \
./Tnaserflow/tensorflow/lite/micro/kernels/hard_swish.d \
./Tnaserflow/tensorflow/lite/micro/kernels/l2norm.d \
./Tnaserflow/tensorflow/lite/micro/kernels/logical.d \
./Tnaserflow/tensorflow/lite/micro/kernels/logistic.d \
./Tnaserflow/tensorflow/lite/micro/kernels/maximum_minimum.d \
./Tnaserflow/tensorflow/lite/micro/kernels/neg.d \
./Tnaserflow/tensorflow/lite/micro/kernels/pack.d \
./Tnaserflow/tensorflow/lite/micro/kernels/pad.d \
./Tnaserflow/tensorflow/lite/micro/kernels/prelu.d \
./Tnaserflow/tensorflow/lite/micro/kernels/quantize.d \
./Tnaserflow/tensorflow/lite/micro/kernels/reduce.d \
./Tnaserflow/tensorflow/lite/micro/kernels/reshape.d \
./Tnaserflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d \
./Tnaserflow/tensorflow/lite/micro/kernels/round.d \
./Tnaserflow/tensorflow/lite/micro/kernels/split.d \
./Tnaserflow/tensorflow/lite/micro/kernels/strided_slice.d \
./Tnaserflow/tensorflow/lite/micro/kernels/sub.d \
./Tnaserflow/tensorflow/lite/micro/kernels/svdf.d \
./Tnaserflow/tensorflow/lite/micro/kernels/tanh.d \
./Tnaserflow/tensorflow/lite/micro/kernels/unpack.d 

OBJS += \
./Tnaserflow/tensorflow/lite/micro/kernels/activations.o \
./Tnaserflow/tensorflow/lite/micro/kernels/arg_min_max.o \
./Tnaserflow/tensorflow/lite/micro/kernels/ceil.o \
./Tnaserflow/tensorflow/lite/micro/kernels/circular_buffer.o \
./Tnaserflow/tensorflow/lite/micro/kernels/comparisons.o \
./Tnaserflow/tensorflow/lite/micro/kernels/concatenation.o \
./Tnaserflow/tensorflow/lite/micro/kernels/dequantize.o \
./Tnaserflow/tensorflow/lite/micro/kernels/elementwise.o \
./Tnaserflow/tensorflow/lite/micro/kernels/ethosu.o \
./Tnaserflow/tensorflow/lite/micro/kernels/floor.o \
./Tnaserflow/tensorflow/lite/micro/kernels/hard_swish.o \
./Tnaserflow/tensorflow/lite/micro/kernels/l2norm.o \
./Tnaserflow/tensorflow/lite/micro/kernels/logical.o \
./Tnaserflow/tensorflow/lite/micro/kernels/logistic.o \
./Tnaserflow/tensorflow/lite/micro/kernels/maximum_minimum.o \
./Tnaserflow/tensorflow/lite/micro/kernels/neg.o \
./Tnaserflow/tensorflow/lite/micro/kernels/pack.o \
./Tnaserflow/tensorflow/lite/micro/kernels/pad.o \
./Tnaserflow/tensorflow/lite/micro/kernels/prelu.o \
./Tnaserflow/tensorflow/lite/micro/kernels/quantize.o \
./Tnaserflow/tensorflow/lite/micro/kernels/reduce.o \
./Tnaserflow/tensorflow/lite/micro/kernels/reshape.o \
./Tnaserflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o \
./Tnaserflow/tensorflow/lite/micro/kernels/round.o \
./Tnaserflow/tensorflow/lite/micro/kernels/split.o \
./Tnaserflow/tensorflow/lite/micro/kernels/strided_slice.o \
./Tnaserflow/tensorflow/lite/micro/kernels/sub.o \
./Tnaserflow/tensorflow/lite/micro/kernels/svdf.o \
./Tnaserflow/tensorflow/lite/micro/kernels/tanh.o \
./Tnaserflow/tensorflow/lite/micro/kernels/unpack.o 


# Each subdirectory must supply rules for building sources it contributes
Tnaserflow/tensorflow/lite/micro/kernels/%.o Tnaserflow/tensorflow/lite/micro/kernels/%.su Tnaserflow/tensorflow/lite/micro/kernels/%.cyclo: ../Tnaserflow/tensorflow/lite/micro/kernels/%.cc Tnaserflow/tensorflow/lite/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/ruy" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/gemmlowp" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/flatbuffers/include" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels

clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels:
	-$(RM) ./Tnaserflow/tensorflow/lite/micro/kernels/activations.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/activations.d ./Tnaserflow/tensorflow/lite/micro/kernels/activations.o ./Tnaserflow/tensorflow/lite/micro/kernels/activations.su ./Tnaserflow/tensorflow/lite/micro/kernels/arg_min_max.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/arg_min_max.d ./Tnaserflow/tensorflow/lite/micro/kernels/arg_min_max.o ./Tnaserflow/tensorflow/lite/micro/kernels/arg_min_max.su ./Tnaserflow/tensorflow/lite/micro/kernels/ceil.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/ceil.d ./Tnaserflow/tensorflow/lite/micro/kernels/ceil.o ./Tnaserflow/tensorflow/lite/micro/kernels/ceil.su ./Tnaserflow/tensorflow/lite/micro/kernels/circular_buffer.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/circular_buffer.d ./Tnaserflow/tensorflow/lite/micro/kernels/circular_buffer.o ./Tnaserflow/tensorflow/lite/micro/kernels/circular_buffer.su ./Tnaserflow/tensorflow/lite/micro/kernels/comparisons.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/comparisons.d ./Tnaserflow/tensorflow/lite/micro/kernels/comparisons.o ./Tnaserflow/tensorflow/lite/micro/kernels/comparisons.su ./Tnaserflow/tensorflow/lite/micro/kernels/concatenation.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/concatenation.d ./Tnaserflow/tensorflow/lite/micro/kernels/concatenation.o ./Tnaserflow/tensorflow/lite/micro/kernels/concatenation.su ./Tnaserflow/tensorflow/lite/micro/kernels/dequantize.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/dequantize.d ./Tnaserflow/tensorflow/lite/micro/kernels/dequantize.o ./Tnaserflow/tensorflow/lite/micro/kernels/dequantize.su ./Tnaserflow/tensorflow/lite/micro/kernels/elementwise.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/elementwise.d ./Tnaserflow/tensorflow/lite/micro/kernels/elementwise.o ./Tnaserflow/tensorflow/lite/micro/kernels/elementwise.su ./Tnaserflow/tensorflow/lite/micro/kernels/ethosu.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/ethosu.d ./Tnaserflow/tensorflow/lite/micro/kernels/ethosu.o ./Tnaserflow/tensorflow/lite/micro/kernels/ethosu.su ./Tnaserflow/tensorflow/lite/micro/kernels/floor.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/floor.d ./Tnaserflow/tensorflow/lite/micro/kernels/floor.o ./Tnaserflow/tensorflow/lite/micro/kernels/floor.su ./Tnaserflow/tensorflow/lite/micro/kernels/hard_swish.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/hard_swish.d ./Tnaserflow/tensorflow/lite/micro/kernels/hard_swish.o ./Tnaserflow/tensorflow/lite/micro/kernels/hard_swish.su ./Tnaserflow/tensorflow/lite/micro/kernels/l2norm.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/l2norm.d ./Tnaserflow/tensorflow/lite/micro/kernels/l2norm.o ./Tnaserflow/tensorflow/lite/micro/kernels/l2norm.su ./Tnaserflow/tensorflow/lite/micro/kernels/logical.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/logical.d ./Tnaserflow/tensorflow/lite/micro/kernels/logical.o ./Tnaserflow/tensorflow/lite/micro/kernels/logical.su ./Tnaserflow/tensorflow/lite/micro/kernels/logistic.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/logistic.d ./Tnaserflow/tensorflow/lite/micro/kernels/logistic.o ./Tnaserflow/tensorflow/lite/micro/kernels/logistic.su ./Tnaserflow/tensorflow/lite/micro/kernels/maximum_minimum.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/maximum_minimum.d ./Tnaserflow/tensorflow/lite/micro/kernels/maximum_minimum.o ./Tnaserflow/tensorflow/lite/micro/kernels/maximum_minimum.su ./Tnaserflow/tensorflow/lite/micro/kernels/neg.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/neg.d ./Tnaserflow/tensorflow/lite/micro/kernels/neg.o ./Tnaserflow/tensorflow/lite/micro/kernels/neg.su ./Tnaserflow/tensorflow/lite/micro/kernels/pack.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/pack.d ./Tnaserflow/tensorflow/lite/micro/kernels/pack.o ./Tnaserflow/tensorflow/lite/micro/kernels/pack.su ./Tnaserflow/tensorflow/lite/micro/kernels/pad.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/pad.d ./Tnaserflow/tensorflow/lite/micro/kernels/pad.o ./Tnaserflow/tensorflow/lite/micro/kernels/pad.su ./Tnaserflow/tensorflow/lite/micro/kernels/prelu.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/prelu.d ./Tnaserflow/tensorflow/lite/micro/kernels/prelu.o ./Tnaserflow/tensorflow/lite/micro/kernels/prelu.su ./Tnaserflow/tensorflow/lite/micro/kernels/quantize.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/quantize.d ./Tnaserflow/tensorflow/lite/micro/kernels/quantize.o ./Tnaserflow/tensorflow/lite/micro/kernels/quantize.su ./Tnaserflow/tensorflow/lite/micro/kernels/reduce.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/reduce.d ./Tnaserflow/tensorflow/lite/micro/kernels/reduce.o ./Tnaserflow/tensorflow/lite/micro/kernels/reduce.su ./Tnaserflow/tensorflow/lite/micro/kernels/reshape.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/reshape.d ./Tnaserflow/tensorflow/lite/micro/kernels/reshape.o ./Tnaserflow/tensorflow/lite/micro/kernels/reshape.su ./Tnaserflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d ./Tnaserflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o ./Tnaserflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.su ./Tnaserflow/tensorflow/lite/micro/kernels/round.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/round.d ./Tnaserflow/tensorflow/lite/micro/kernels/round.o ./Tnaserflow/tensorflow/lite/micro/kernels/round.su ./Tnaserflow/tensorflow/lite/micro/kernels/split.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/split.d ./Tnaserflow/tensorflow/lite/micro/kernels/split.o ./Tnaserflow/tensorflow/lite/micro/kernels/split.su ./Tnaserflow/tensorflow/lite/micro/kernels/strided_slice.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/strided_slice.d ./Tnaserflow/tensorflow/lite/micro/kernels/strided_slice.o ./Tnaserflow/tensorflow/lite/micro/kernels/strided_slice.su ./Tnaserflow/tensorflow/lite/micro/kernels/sub.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/sub.d ./Tnaserflow/tensorflow/lite/micro/kernels/sub.o
	-$(RM) ./Tnaserflow/tensorflow/lite/micro/kernels/sub.su ./Tnaserflow/tensorflow/lite/micro/kernels/svdf.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/svdf.d ./Tnaserflow/tensorflow/lite/micro/kernels/svdf.o ./Tnaserflow/tensorflow/lite/micro/kernels/svdf.su ./Tnaserflow/tensorflow/lite/micro/kernels/tanh.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/tanh.d ./Tnaserflow/tensorflow/lite/micro/kernels/tanh.o ./Tnaserflow/tensorflow/lite/micro/kernels/tanh.su ./Tnaserflow/tensorflow/lite/micro/kernels/unpack.cyclo ./Tnaserflow/tensorflow/lite/micro/kernels/unpack.d ./Tnaserflow/tensorflow/lite/micro/kernels/unpack.o ./Tnaserflow/tensorflow/lite/micro/kernels/unpack.su

.PHONY: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels

