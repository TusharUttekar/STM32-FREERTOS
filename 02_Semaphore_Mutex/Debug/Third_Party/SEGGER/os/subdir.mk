################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/SEGGER/os/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./Third_Party/SEGGER/os/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./Third_Party/SEGGER/os/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/SEGGER/os/%.o Third_Party/SEGGER/os/%.su Third_Party/SEGGER/os/%.cyclo: ../Third_Party/SEGGER/os/%.c Third_Party/SEGGER/os/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/SEGGER/Config" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/SEGGER/os" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/SEGGER/Segger" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Config" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/FREERTOS/org/Source/include" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/FREERTOS/org/Source/portable/GCC/ARM_CM4F" -I"E:/Data/Freertos_stm32/STM32-FREERTOS/02_Semaphore_Mutex/Third_Party/FREERTOS/org/Source" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-SEGGER-2f-os

clean-Third_Party-2f-SEGGER-2f-os:
	-$(RM) ./Third_Party/SEGGER/os/SEGGER_SYSVIEW_FreeRTOS.cyclo ./Third_Party/SEGGER/os/SEGGER_SYSVIEW_FreeRTOS.d ./Third_Party/SEGGER/os/SEGGER_SYSVIEW_FreeRTOS.o ./Third_Party/SEGGER/os/SEGGER_SYSVIEW_FreeRTOS.su

.PHONY: clean-Third_Party-2f-SEGGER-2f-os

