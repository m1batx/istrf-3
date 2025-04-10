################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Tnaserflow/tensorflow/lite/micro/all_ops_resolver.cc \
../Tnaserflow/tensorflow/lite/micro/memory_helpers.cc \
../Tnaserflow/tensorflow/lite/micro/micro_allocator.cc \
../Tnaserflow/tensorflow/lite/micro/micro_error_reporter.cc \
../Tnaserflow/tensorflow/lite/micro/micro_interpreter.cc \
../Tnaserflow/tensorflow/lite/micro/micro_optional_debug_tools.cc \
../Tnaserflow/tensorflow/lite/micro/micro_profiler.cc \
../Tnaserflow/tensorflow/lite/micro/micro_string.cc \
../Tnaserflow/tensorflow/lite/micro/micro_time.cc \
../Tnaserflow/tensorflow/lite/micro/micro_utils.cc \
../Tnaserflow/tensorflow/lite/micro/recording_micro_allocator.cc \
../Tnaserflow/tensorflow/lite/micro/recording_simple_memory_allocator.cc \
../Tnaserflow/tensorflow/lite/micro/simple_memory_allocator.cc \
../Tnaserflow/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./Tnaserflow/tensorflow/lite/micro/all_ops_resolver.d \
./Tnaserflow/tensorflow/lite/micro/memory_helpers.d \
./Tnaserflow/tensorflow/lite/micro/micro_allocator.d \
./Tnaserflow/tensorflow/lite/micro/micro_error_reporter.d \
./Tnaserflow/tensorflow/lite/micro/micro_interpreter.d \
./Tnaserflow/tensorflow/lite/micro/micro_optional_debug_tools.d \
./Tnaserflow/tensorflow/lite/micro/micro_profiler.d \
./Tnaserflow/tensorflow/lite/micro/micro_string.d \
./Tnaserflow/tensorflow/lite/micro/micro_time.d \
./Tnaserflow/tensorflow/lite/micro/micro_utils.d \
./Tnaserflow/tensorflow/lite/micro/recording_micro_allocator.d \
./Tnaserflow/tensorflow/lite/micro/recording_simple_memory_allocator.d \
./Tnaserflow/tensorflow/lite/micro/simple_memory_allocator.d \
./Tnaserflow/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./Tnaserflow/tensorflow/lite/micro/all_ops_resolver.o \
./Tnaserflow/tensorflow/lite/micro/memory_helpers.o \
./Tnaserflow/tensorflow/lite/micro/micro_allocator.o \
./Tnaserflow/tensorflow/lite/micro/micro_error_reporter.o \
./Tnaserflow/tensorflow/lite/micro/micro_interpreter.o \
./Tnaserflow/tensorflow/lite/micro/micro_optional_debug_tools.o \
./Tnaserflow/tensorflow/lite/micro/micro_profiler.o \
./Tnaserflow/tensorflow/lite/micro/micro_string.o \
./Tnaserflow/tensorflow/lite/micro/micro_time.o \
./Tnaserflow/tensorflow/lite/micro/micro_utils.o \
./Tnaserflow/tensorflow/lite/micro/recording_micro_allocator.o \
./Tnaserflow/tensorflow/lite/micro/recording_simple_memory_allocator.o \
./Tnaserflow/tensorflow/lite/micro/simple_memory_allocator.o \
./Tnaserflow/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
Tnaserflow/tensorflow/lite/micro/%.o Tnaserflow/tensorflow/lite/micro/%.su Tnaserflow/tensorflow/lite/micro/%.cyclo: ../Tnaserflow/tensorflow/lite/micro/%.cc Tnaserflow/tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/ruy" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/gemmlowp" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/mimoh/STM32CubeIDE/workspace_1.18.0/istrf-3/Tnaserflow/third_party/flatbuffers/include" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro

clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro:
	-$(RM) ./Tnaserflow/tensorflow/lite/micro/all_ops_resolver.cyclo ./Tnaserflow/tensorflow/lite/micro/all_ops_resolver.d ./Tnaserflow/tensorflow/lite/micro/all_ops_resolver.o ./Tnaserflow/tensorflow/lite/micro/all_ops_resolver.su ./Tnaserflow/tensorflow/lite/micro/memory_helpers.cyclo ./Tnaserflow/tensorflow/lite/micro/memory_helpers.d ./Tnaserflow/tensorflow/lite/micro/memory_helpers.o ./Tnaserflow/tensorflow/lite/micro/memory_helpers.su ./Tnaserflow/tensorflow/lite/micro/micro_allocator.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_allocator.d ./Tnaserflow/tensorflow/lite/micro/micro_allocator.o ./Tnaserflow/tensorflow/lite/micro/micro_allocator.su ./Tnaserflow/tensorflow/lite/micro/micro_error_reporter.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_error_reporter.d ./Tnaserflow/tensorflow/lite/micro/micro_error_reporter.o ./Tnaserflow/tensorflow/lite/micro/micro_error_reporter.su ./Tnaserflow/tensorflow/lite/micro/micro_interpreter.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_interpreter.d ./Tnaserflow/tensorflow/lite/micro/micro_interpreter.o ./Tnaserflow/tensorflow/lite/micro/micro_interpreter.su ./Tnaserflow/tensorflow/lite/micro/micro_optional_debug_tools.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_optional_debug_tools.d ./Tnaserflow/tensorflow/lite/micro/micro_optional_debug_tools.o ./Tnaserflow/tensorflow/lite/micro/micro_optional_debug_tools.su ./Tnaserflow/tensorflow/lite/micro/micro_profiler.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_profiler.d ./Tnaserflow/tensorflow/lite/micro/micro_profiler.o ./Tnaserflow/tensorflow/lite/micro/micro_profiler.su ./Tnaserflow/tensorflow/lite/micro/micro_string.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_string.d ./Tnaserflow/tensorflow/lite/micro/micro_string.o ./Tnaserflow/tensorflow/lite/micro/micro_string.su ./Tnaserflow/tensorflow/lite/micro/micro_time.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_time.d ./Tnaserflow/tensorflow/lite/micro/micro_time.o ./Tnaserflow/tensorflow/lite/micro/micro_time.su ./Tnaserflow/tensorflow/lite/micro/micro_utils.cyclo ./Tnaserflow/tensorflow/lite/micro/micro_utils.d ./Tnaserflow/tensorflow/lite/micro/micro_utils.o ./Tnaserflow/tensorflow/lite/micro/micro_utils.su ./Tnaserflow/tensorflow/lite/micro/recording_micro_allocator.cyclo ./Tnaserflow/tensorflow/lite/micro/recording_micro_allocator.d ./Tnaserflow/tensorflow/lite/micro/recording_micro_allocator.o ./Tnaserflow/tensorflow/lite/micro/recording_micro_allocator.su ./Tnaserflow/tensorflow/lite/micro/recording_simple_memory_allocator.cyclo ./Tnaserflow/tensorflow/lite/micro/recording_simple_memory_allocator.d ./Tnaserflow/tensorflow/lite/micro/recording_simple_memory_allocator.o ./Tnaserflow/tensorflow/lite/micro/recording_simple_memory_allocator.su ./Tnaserflow/tensorflow/lite/micro/simple_memory_allocator.cyclo ./Tnaserflow/tensorflow/lite/micro/simple_memory_allocator.d ./Tnaserflow/tensorflow/lite/micro/simple_memory_allocator.o ./Tnaserflow/tensorflow/lite/micro/simple_memory_allocator.su ./Tnaserflow/tensorflow/lite/micro/test_helpers.cyclo ./Tnaserflow/tensorflow/lite/micro/test_helpers.d ./Tnaserflow/tensorflow/lite/micro/test_helpers.o ./Tnaserflow/tensorflow/lite/micro/test_helpers.su

.PHONY: clean-Tnaserflow-2f-tensorflow-2f-lite-2f-micro

