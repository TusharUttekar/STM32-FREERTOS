################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/SEGGER/Segger/SEGGER_RTT.c \
../Third_Party/SEGGER/Segger/SEGGER_SYSVIEW.c 

OBJS += \
./Third_Party/SEGGER/Segger/SEGGER_RTT.o \
./Third_Party/SEGGER/Segger/SEGGER_SYSVIEW.o 

C_DEPS += \
./Third_Party/SEGGER/Segger/SEGGER_RTT.d \
./Third_Party/SEGGER/Segger/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/SEGGER/Segger/%.o Third_Party/SEGGER/Segger/%.su Third_Party/SEGGER/Segger/%.cyclo: ../Third_Party/SEGGER/Segger/%.c Third_Party/SEGGER/Segger/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/SEGGER/Config" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/SEGGER/os" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/SEGGER/Segger" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Config" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/FREERTOS/org/Source/include" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/FREERTOS/org/Source/portable/GCC/ARM_CM4F" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/FREERTOS/org/Source" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-SEGGER-2f-Segger

clean-Third_Party-2f-SEGGER-2f-Segger:
	-$(RM) ./Third_Party/SEGGER/Segger/SEGGER_RTT.cyclo ./Third_Party/SEGGER/Segger/SEGGER_RTT.d ./Third_Party/SEGGER/Segger/SEGGER_RTT.o ./Third_Party/SEGGER/Segger/SEGGER_RTT.su ./Third_Party/SEGGER/Segger/SEGGER_SYSVIEW.cyclo ./Third_Party/SEGGER/Segger/SEGGER_SYSVIEW.d ./Third_Party/SEGGER/Segger/SEGGER_SYSVIEW.o ./Third_Party/SEGGER/Segger/SEGGER_SYSVIEW.su

.PHONY: clean-Third_Party-2f-SEGGER-2f-Segger

