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

	for(;;)
	{
		SEGGER_SYSVIEW_Print("Red Led Task!!");
		HAL_GPIO_TogglePin(RED_LED_GPIO_Port, RED_LED_Pin);
//		xQueueSendToBack(Queue_Handle_1, &Local_Queue, pdMS_TO_TICKS(0));
		vTaskDelay(pdMS_TO_TICKS(1000));
	}
}

void Task2_Handler(void* Parameters)
{
	UBaseType_t Priority_Get;
	Priority_Get = uxTaskPriorityGet(NULL);

	for(;;)
	{
		SEGGER_SYSVIEW_Print("Green Led Task!!");
		HAL_GPIO_TogglePin(GREEN_LED_GPIO_Port, GREEN_LED_Pin);
//		xQueueSendToBack(Queue_Handle_2, &LocalQueue_, pdMS_TO_TICKS(0));
		vTaskDelay(pdMS_TO_TICKS(100));
	}
}

void Task3_Handler(void* Parameters)
{
	QueueHandle_t Receive_Queue;
	Queue_Data* Rx_Queue;

	for(;;)
	{
//		Receive_Queue = xQueueSelectFromSet(Queue_Set_Handle, pdMS_TO_TICKS(20));
//		xQueueReceive(Receive_Queue, &Rx_Queue, pdMS_TO_TICKS(0));
//		sprintf(Buffer, "1:%d, 2:%d, 3:%d, 4:%ld", Rx_Queue->Data_1,Rx_Queue->Data_2,Rx_Queue->Data_3, Rx_Queue->Buffer[3]);
		SEGGER_SYSVIEW_Print(Buffer);
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
		sprintf(Buffer, "One shot timer execute at time : %d", Timer_Count);
		SEGGER_SYSVIEW_Print(Buffer);
	}
	else
	{
		sprintf(Buffer, "Periodic timer execute at time : %d", Timer_Count);
		SEGGER_SYSVIEW_Print(Buffer);

		if(Execution_Count == 50)
		{
			xTimerDelete(Timer, 0);
		}
	}
}
