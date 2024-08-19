/*
 * App_Task.c
 *
 *  Created on: Apr 18, 2023
 *      Author: uttek
 */


#include "main.h"
#include "App_Task.h"

char Buffer[35];
Queue_Data Local_Queue = {.Data_1 = 1, .Data_2 = 2, .Data_3 = 3, .Buffer = {4,5,6,7,8,9,10,11,12,13}};
Queue_Data LocalQueue_ = {.Data_1 = 3, .Data_2 = 2, .Data_3 = 1, .Buffer = {10,11,12,13}};

void Task1_Handler(void* Parameters)
{
	UBaseType_t Priority_Get;
	Priority_Get = uxTaskPriorityGet(NULL);
	uint8_t counter = 0;

	for(;;)
	{
		/*Semaphore example
		 * if(++counter >= 5)
		{
			counter = 0;
			SEGGER_SYSVIEW_Print("Red Led Task is giving the semaphore to green led task");
			xSemaphoreGive(Semaphore);
		}

		HAL_GPIO_WritePin(RED_LED_GPIO_Port, RED_LED_Pin, GPIO_PIN_SET);
		vTaskDelay(pdMS_TO_TICKS(500));
		HAL_GPIO_WritePin(RED_LED_GPIO_Port, RED_LED_Pin, GPIO_PIN_RESET);
		vTaskDelay(pdMS_TO_TICKS(500));*/

		//Priority inversion and mutex (Replace mutex with semaphore to see priority inversion)
		SEGGER_SYSVIEW_Print("Attempt to take the semaphore -> TASK1");
		if(xSemaphoreTake(Mutex, 200/portTICK_PERIOD_MS) == pdPASS)
		{
			SEGGER_SYSVIEW_Print("Received the semaphore -> TASK1");
			HAL_GPIO_WritePin(RED_LED_GPIO_Port, RED_LED_Pin, GPIO_PIN_SET);
			vTaskDelay(pdMS_TO_TICKS(500));
			HAL_GPIO_WritePin(RED_LED_GPIO_Port, RED_LED_Pin, GPIO_PIN_RESET);
			vTaskDelay(pdMS_TO_TICKS(500));
			xSemaphoreGive(Mutex);
		}
		else
		{
			SEGGER_SYSVIEW_Print("Failed to receive the semaphore in time -> TASK1");
		}
		vTaskDelay(pdMS_TO_TICKS(rand()%100));
	}
}

void Task2_Handler(void* Parameters)
{
	UBaseType_t Priority_Get;
	Priority_Get = uxTaskPriorityGet(NULL);

	for(;;)
	{
		/*Semaphore Example
		 * if(xSemaphoreTake(Semaphore, portMAX_DELAY) == pdPASS)
		{
			SEGGER_SYSVIEW_Print("Green Led Task!!");
			for (uint8_t i = 0; i < 3; ++i)
			{
				HAL_GPIO_WritePin(GREEN_LED_GPIO_Port, GREEN_LED_Pin, GPIO_PIN_SET);
				vTaskDelay(pdMS_TO_TICKS(200));
				HAL_GPIO_WritePin(GREEN_LED_GPIO_Port, GREEN_LED_Pin, GPIO_PIN_RESET);
				vTaskDelay(pdMS_TO_TICKS(200));
			}
		}
		else
		{
			//if semaphore is not acquired then a empty loop will be executed
		}*/

		//Priority Inversion
		SEGGER_SYSVIEW_Print("Consuming the cpu cycles -> TASK2");
		vTaskDelay(pdMS_TO_TICKS(rand()%500));
	}
}

void Task3_Handler(void* Parameters)
{
	QueueHandle_t Receive_Queue;
	Queue_Data* Rx_Queue;

	for(;;)
	{
		SEGGER_SYSVIEW_Print("Attempt to take the semaphore -> TASK3");
		if(xSemaphoreTake(Mutex, 200/portTICK_PERIOD_MS) == pdPASS)
		{
			SEGGER_SYSVIEW_Print("Received the semaphore -> TASK3");
			HAL_GPIO_WritePin(GREEN_LED_GPIO_Port, GREEN_LED_Pin, GPIO_PIN_SET);
			vTaskDelay(pdMS_TO_TICKS(200));
			HAL_GPIO_WritePin(GREEN_LED_GPIO_Port, GREEN_LED_Pin, GPIO_PIN_RESET);
			vTaskDelay(pdMS_TO_TICKS(200));
			xSemaphoreGive(Mutex);
		}
		else
		{
			SEGGER_SYSVIEW_Print("Failed to receive the semaphore in time -> TASK3");
		}
	}
}

void Periodic_Callback(TimerHandle_t Timer)
{
	TickType_t Timer_Count;
	uint32_t Execution_Count;

	Execution_Count = (uint32_t)pvTimerGetTimerID(Timer);
	Execution_Count++;

	vTimerSetTimerID(Timer, (void*)Execution_Count);

	Timer_Count = xTaskGetTickCount();

	if(Timer == One_Shot_Handle)
	{
		sprintf(Buffer, "One shot timer execute at time : %ld", Timer_Count);
		SEGGER_SYSVIEW_Print(Buffer);
	}
	else
	{
		sprintf(Buffer, "Periodic timer execute at time : %ld", Timer_Count);
		SEGGER_SYSVIEW_Print(Buffer);

		/*if(Execution_Count == 50)
		{
			xTimerDelete(Timer, 0);
		}*/
	}
}
