################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/FREERTOS/org/Source/croutine.c \
../Third_Party/FREERTOS/org/Source/event_groups.c \
../Third_Party/FREERTOS/org/Source/list.c \
../Third_Party/FREERTOS/org/Source/queue.c \
../Third_Party/FREERTOS/org/Source/stream_buffer.c \
../Third_Party/FREERTOS/org/Source/tasks.c \
../Third_Party/FREERTOS/org/Source/timers.c 

OBJS += \
./Third_Party/FREERTOS/org/Source/croutine.o \
./Third_Party/FREERTOS/org/Source/event_groups.o \
./Third_Party/FREERTOS/org/Source/list.o \
./Third_Party/FREERTOS/org/Source/queue.o \
./Third_Party/FREERTOS/org/Source/stream_buffer.o \
./Third_Party/FREERTOS/org/Source/tasks.o \
./Third_Party/FREERTOS/org/Source/timers.o 

C_DEPS += \
./Third_Party/FREERTOS/org/Source/croutine.d \
./Third_Party/FREERTOS/org/Source/event_groups.d \
./Third_Party/FREERTOS/org/Source/list.d \
./Third_Party/FREERTOS/org/Source/queue.d \
./Third_Party/FREERTOS/org/Source/stream_buffer.d \
./Third_Party/FREERTOS/org/Source/tasks.d \
./Third_Party/FREERTOS/org/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/FREERTOS/org/Source/%.o Third_Party/FREERTOS/org/Source/%.su Third_Party/FREERTOS/org/Source/%.cyclo: ../Third_Party/FREERTOS/org/Source/%.c Third_Party/FREERTOS/org/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Data/Freertos_stm32/STM32-FREERTOS/01_Task_Creation_Deletion/Third_Party/SEGGER/Config" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/01_Task_Creation_Deletion/Third_Party/SEGGER/os" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/01_Task_Creation_Deletion/Third_Party/SEGGER/Segger" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/01_Task_Creation_Deletion/Config" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/01_Task_Creation_Deletion/Third_Party/FREERTOS/org/Source/include" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/01_Task_Creation_Deletion/Third_Party/FREERTOS/org/Source/portable/GCC/ARM_CM4F" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/01_Task_Creation_Deletion/Third_Party/FREERTOS/org/Source" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-FREERTOS-2f-org-2f-Source

clean-Third_Party-2f-FREERTOS-2f-org-2f-Source:
	-$(RM) ./Third_Party/FREERTOS/org/Source/croutine.cyclo ./Third_Party/FREERTOS/org/Source/croutine.d ./Third_Party/FREERTOS/org/Source/croutine.o ./Third_Party/FREERTOS/org/Source/croutine.su ./Third_Party/FREERTOS/org/Source/event_groups.cyclo ./Third_Party/FREERTOS/org/Source/event_groups.d ./Third_Party/FREERTOS/org/Source/event_groups.o ./Third_Party/FREERTOS/org/Source/event_groups.su ./Third_Party/FREERTOS/org/Source/list.cyclo ./Third_Party/FREERTOS/org/Source/list.d ./Third_Party/FREERTOS/org/Source/list.o ./Third_Party/FREERTOS/org/Source/list.su ./Third_Party/FREERTOS/org/Source/queue.cyclo ./Third_Party/FREERTOS/org/Source/queue.d ./Third_Party/FREERTOS/org/Source/queue.o ./Third_Party/FREERTOS/org/Source/queue.su ./Third_Party/FREERTOS/org/Source/stream_buffer.cyclo ./Third_Party/FREERTOS/org/Source/stream_buffer.d ./Third_Party/FREERTOS/org/Source/stream_buffer.o ./Third_Party/FREERTOS/org/Source/stream_buffer.su ./Third_Party/FREERTOS/org/Source/tasks.cyclo ./Third_Party/FREERTOS/org/Source/tasks.d ./Third_Party/FREERTOS/org/Source/tasks.o ./Third_Party/FREERTOS/org/Source/tasks.su ./Third_Party/FREERTOS/org/Source/timers.cyclo ./Third_Party/FREERTOS/org/Source/timers.d ./Third_Party/FREERTOS/org/Source/timers.o ./Third_Party/FREERTOS/org/Source/timers.su

.PHONY: clean-Third_Party-2f-FREERTOS-2f-org-2f-Source

