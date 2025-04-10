################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.cc \
../tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.cc \
../tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.cc \
../tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.cc 

CC_DEPS += \
./tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.d \
./tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.d \
./tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.d \
./tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.d 

OBJS += \
./tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.o \
./tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.o \
./tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.o \
./tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/arena_allocator/%.o tensorflow/lite/micro/arena_allocator/%.su tensorflow/lite/micro/arena_allocator/%.cyclo: ../tensorflow/lite/micro/arena_allocator/%.cc tensorflow/lite/micro/arena_allocator/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-arena_allocator

clean-tensorflow-2f-lite-2f-micro-2f-arena_allocator:
	-$(RM) ./tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.cyclo ./tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.d ./tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.o ./tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.su ./tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.cyclo ./tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.d ./tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.o ./tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.su ./tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.cyclo ./tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.d ./tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.o ./tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.su ./tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.cyclo ./tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.d ./tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.o ./tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-arena_allocator

