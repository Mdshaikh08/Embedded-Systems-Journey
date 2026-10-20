/*
 * Copyright 2016-2026 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * @file    MCXN236_Project.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "fsl_debug_console.h"
/* TODO: insert other include files here. */
#include "fsl_clock.h"
#include "MCXN236_COMMON.h"
/* TODO: insert other definitions and declarations here. */

#define LED_GPIO                                    ((GPIO_Type *)GPIO4_BASE)


/*
 * @brief   Application entry point.
 */
int main(void) {

    /* Init board hardware. */

    BOARD_InitBootClocks();


    CLOCK_EnableClock(kCLOCK_Port4);
    CLOCK_EnableClock(kCLOCK_Gpio4);

    PORT4->PCR[17] = PORT_PCR_MUX(0) | PORT_PCR_IBE(1);
    PORT4->PCR[18] = PORT_PCR_MUX(0) | PORT_PCR_IBE(1);
    PORT4->PCR[19] = PORT_PCR_MUX(0) | PORT_PCR_IBE(1);

    LED_GPIO->PSOR = (1U << 17);
    LED_GPIO->PSOR = (1U << 18);
    LED_GPIO->PSOR = (1U << 19);

    LED_GPIO->PDDR |= (1U << 17);
    LED_GPIO->PDDR |= (1U << 18);
    LED_GPIO->PDDR |= (1U << 19);

    while(1){

    LED_GPIO->PCOR = (1U << 17);
    for(int i = 0; i < 800000; i++){
    	__asm__("nop");
    }
    LED_GPIO->PSOR = (1U << 17);

    LED_GPIO->PCOR = (1U << 18);
    for(int i = 0; i < 800000; i++){
    	__asm__("nop");
    }
    LED_GPIO->PSOR = (1U << 18);

    LED_GPIO->PCOR = (1U << 19);
    for(int i = 0; i < 800000; i++){
    	__asm__("nop");
    }
    LED_GPIO->PSOR = (1U << 19);
    }
    return 0 ;

}
