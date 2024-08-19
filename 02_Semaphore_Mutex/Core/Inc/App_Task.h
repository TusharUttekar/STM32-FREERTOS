/*
 * App_Task.h
 *
 *  Created on: Apr 18, 2023
 *      Author: uttek
 */

#ifndef INC_APP_TASK_H_
#define INC_APP_TASK_H_

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "semphr.h"
#include "SEGGER_SYSVIEW.h"
#include <stdio.h>
#include <stdlib.h>

extern volatile uint32_t Idle_Count;

extern TaskHandle_t Task_Handle_1;
extern TaskHandle_t Task_Handle_2;

extern QueueHandle_t Queue_Handle_1;
extern QueueHandle_t Queue_Handle_2;
extern QueueSetHandle_t Queue_Set_Handle;
extern TimerHandle_t One_Shot_Handle, Periodic_Timer_Handle;

extern SemaphoreHandle_t Semaphore, Mutex;

typedef struct
{
	uint8_t Data_1;
	uint8_t Data_2;
	uint8_t Data_3;
	uint32_t Buffer[25];
}Queue_Data;

void Task1_Handler(void* Parameters);
void Task2_Handler(void* Parameters);
void Task3_Handler(void* Parameters);
void Periodic_Callback(TimerHandle_t Timer);

#endif /* INC_APP_TASK_H_ */
