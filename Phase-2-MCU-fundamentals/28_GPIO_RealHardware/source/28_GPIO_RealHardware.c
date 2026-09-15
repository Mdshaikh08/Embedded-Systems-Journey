/*
 * Copyright 2016-2026 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * @file    28_GPIO_RealHardware.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "fsl_debug_console.h"
/* TODO: insert other include files here. */
#include "PERI_GPIO.h"
/* TODO: insert other definitions and declarations here. */

typedef struct {
	GPIO_Type *p;
	uint32_t pin_mask;
}gpio_pin_t;



void gpio_real_init(gpio_pin_t *p, GPIO_Type *gpio_port ,PORT_Type *port_ctrl, clock_ip_name_t gpio_clock, clock_ip_name_t port_clock,  uint32_t pin);
void gpio_real_set(gpio_pin_t *p);
void gpio_real_clear(gpio_pin_t *p);
void gpio_real_toggle(gpio_pin_t *p);
int  gpio_real_read(gpio_pin_t *p);


/*
 * @brief   Application entry point.
 */
int main(void) {



    /* Init board hardware. */
    BOARD_InitBootPins();

    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();

#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif

gpio_pin_t led[3];
gpio_real_init(&led[0], GPIO4, PORT4, kCLOCK_Gpio4, kCLOCK_Port4, 17);
gpio_real_init(&led[1], GPIO4, PORT4, kCLOCK_Gpio4, kCLOCK_Port4, 18);
gpio_real_init(&led[2], GPIO4, PORT4, kCLOCK_Gpio4, kCLOCK_Port4, 19);

while(1){

	for(int i = 0 ; i < 3 ; i++){
		gpio_real_set(&led[i]);

		for(volatile uint32_t j = 0; j < 1500000; j++) {  __asm("NOP") ;    }

		gpio_real_clear(&led[i]);

		for(volatile uint32_t j = 0; j < 1500000; j++) {  __asm("NOP") ;    }


	                             }
        }

}



void gpio_real_init(gpio_pin_t *p, GPIO_Type *gpio_port ,PORT_Type *port_ctrl, clock_ip_name_t gpio_clock, clock_ip_name_t port_clock,  uint32_t pin){
	CLOCK_EnableClock(port_clock);
	CLOCK_EnableClock(gpio_clock);

	port_ctrl->PCR[pin] = PORT_PCR_MUX(0) | PORT_PCR_IBE(1);

	p->p = gpio_port;

	p->pin_mask = (1 << pin);
	p->p->PDDR |= p->pin_mask;
}



void gpio_real_set(gpio_pin_t *p){

	p->p->PCOR = p->pin_mask;
}



void gpio_real_clear(gpio_pin_t *p){
	p->p->PSOR = p->pin_mask;
}



int gpio_real_read(gpio_pin_t *p){
	if(!(p->p->PDIR & p->pin_mask))return 1;
	else {return 0;}
}




void gpio_real_toggle(gpio_pin_t *p){

		p->p->PTOR = p->pin_mask;
}





