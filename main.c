/*
 * Copyright (c) 2015-2019, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 *  ======== hello.c ========
 */

/* TI-RTOS Header files */
#include <xdc/std.h>
#include <stdio.h>
#include <string.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/sysbios/knl/Semaphore.h>
#include <ti/sysbios/knl/Mailbox.h>

#include <ti/drivers/GPIO.h>
#include <ti/drivers/UART2.h>



/* Driver configuration */
#include <ti_drivers_config.h>
#include <ti/drivers/timer/GPTimerCC26XX.h>


#include <AM2302.h>

/* Could be anything, like computing primes */
#define ADQPERIODMS 1000 //Periodo de adquisicion en ms
#define AM2302THRESH 5000 //Threshold para 1 o 0 de AM2302
//0 son ~80us y 1 ~120us. Como el clock es 48MHz:
//80*48 = 3840 ticks.
//120*48 = 5760 ticks

UART2_Handle uart;
char msg[10];

GPTimerCC26XX_Handle timerTempHandle;

Semaphore_Struct semTempStruct; // Handle y estructura para semaforo para adquisicion de temperatura.
Semaphore_Handle semTempHandle;

Mailbox_Handle mbxTempHandle; // Handle para mailbox (Queue) para adquisicion de temperatura.

/* Make sure we have nice 8-byte alignment on the stack to avoid wasting memory */

Task_Struct readAM2302Task;

#define STACKSIZE 2048




/*
 *  ======== main ========
 *
 */
int main(void)
{
    Board_init();
    GPIO_init();

    /*
    Semaphore_Params semParams;
    Mailbox_Params mbxParams;
    */

    /* UART para lectura datos en SERIAL */
    UART2_Params uartParams;
    UART2_Params_init(&uartParams);
    uartParams.baudRate = 115200;
    uart = UART2_open(CONFIG_UART2_0, &uartParams);




    init_GPIO_Temp();
    /*
    GPIO_setConfig(CONFIG_GPIO_23, GPIO_CFG_OUT_STD); // Settear al principio como salida
    GPIO_setCallback(CONFIG_GPIO_23, ISR_GPIO_23); // Funcion para interrupt del pin
    */
    init_Timer_Temp();
    /*
    GPTimerCC26XX_Params timerTempParams;
    GPTimerCC26XX_Params_init(&timerTempParams);
    timerTempParams.width = GPT_CONFIG_32BIT;
    timerTempParams.mode = GPT_MODE_ONESHOT;
    timerTempParams.direction = GPTimerCC26XX_DIRECTION_UP;
    timerTempParams.matchTiming = GPTimerCC26XX_SET_MATCH_NEXT_CLOCK;
    timerTempParams.debugStallMode = GPTimerCC26XX_DEBUG_STALL_ON;
    timerTempHandle = GPTimerCC26XX_open(CONFIG_GPTIMER_1, &timerTempParams);

    while(timerTempHandle == NULL);
    GPTimerCC26XX_setLoadValue(timerTempHandle, 48000000);
    GPTimerCC26XX_registerInterrupt(timerTempHandle, ISR_Timer_Temp, GPT_INT_TIMEOUT); //Register INT
    GPTimerCC26XX_enableInterrupt(timerTempHandle, GPT_INT_TIMEOUT); // Enable INT
     */

    /* Task para Temperatura & Humedad */
    init_task_Temp();
    /*
    Task_Params readAM2302TaskParams;
    Task_Params_init(&readAM2302TaskParams);
    readAM2302TaskParams.stackSize = STACKSIZE;
    readAM2302TaskParams.priority = 1;
    readAM2302TaskParams.stack = &readAM2302TaskStack;

    Task_construct(&readAM2302Task, readAM2302TaskFunc, &readAM2302TaskParams, NULL);
    */

    /* Semaforo para adquisicion de temperatura/humedad */
    init_sem_Temp();
    /*
    Semaphore_Params_init(&semParams);
    Semaphore_construct(&semTempStruct, 0, &semParams);
    semTempHandle = Semaphore_handle(&semTempStruct);
    */

    /* Mailbox para temperatura/humedad*/
    init_mbx_Temp();
    /*
    Mailbox_Params_init(&mbxParams);
    mbxTempHandle = Mailbox_create(sizeof(uint32_t), 80, &mbxParams, NULL);
    */


    /* Start kernel. */
    BIOS_start();

    return (0);
}

