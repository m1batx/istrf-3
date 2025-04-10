################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc \
../tensorflow/lite/micro/memory_planner/linear_memory_planner.cc \
../tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc 

CC_DEPS += \
./tensorflow/lite/micro/memory_planner/greedy_memory_planner.d \
./tensorflow/lite/micro/memory_planner/linear_memory_planner.d \
./tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.d 

OBJS += \
./tensorflow/lite/micro/memory_planner/greedy_memory_planner.o \
./tensorflow/lite/micro/memory_planner/linear_memory_planner.o \
./tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/memory_planner/%.o tensorflow/lite/micro/memory_planner/%.su tensorflow/lite/micro/memory_planner/%.cyclo: ../tensorflow/lite/micro/memory_planner/%.cc tensorflow/lite/micro/memory_planner/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-memory_planner

clean-tensorflow-2f-lite-2f-micro-2f-memory_planner:
	-$(RM) ./tensorflow/lite/micro/memory_planner/greedy_memory_planner.cyclo ./tensorflow/lite/micro/memory_planner/greedy_memory_planner.d ./tensorflow/lite/micro/memory_planner/greedy_memory_planner.o ./tensorflow/lite/micro/memory_planner/greedy_memory_planner.su ./tensorflow/lite/micro/memory_planner/linear_memory_planner.cyclo ./tensorflow/lite/micro/memory_planner/linear_memory_planner.d ./tensorflow/lite/micro/memory_planner/linear_memory_planner.o ./tensorflow/lite/micro/memory_planner/linear_memory_planner.su ./tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cyclo ./tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.d ./tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o ./tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-memory_planner

