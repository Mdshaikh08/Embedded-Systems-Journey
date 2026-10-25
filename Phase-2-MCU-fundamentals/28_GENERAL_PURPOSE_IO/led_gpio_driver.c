
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

#include "fsl_clock.h"
#include "MCXN236_COMMON.h"


#define direction_input    0
#define direction_output   1
#define init_level_0       0
#define init_level_1       1

typedef struct {
	GPIO_Type *gpio_base;
	PORT_Type *port_base;
	clock_ip_name_t gpioClock;
	clock_ip_name_t portClock;
}port_mapping_strct;

static const port_mapping_strct port_mapping_array[] = {
		{GPIO0, PORT0, kCLOCK_Gpio0, kCLOCK_Port0 },
		{GPIO1, PORT1, kCLOCK_Gpio1, kCLOCK_Port1 },
		{GPIO2, PORT2, kCLOCK_Gpio2, kCLOCK_Port2 },
		{GPIO3, PORT3, kCLOCK_Gpio3, kCLOCK_Port3 },
		{GPIO4, PORT4, kCLOCK_Gpio4, kCLOCK_Port4 },
};

static const port_mapping_strct * Get_Port_Map(GPIO_Type * base){
	assert(base != NULL);

	for(size_t i = 0; i < ARRAY_SIZE(port_mapping_array) ; i++){
		if(port_mapping_array[i].gpio_base == base){
			return &port_mapping_array[i];
		}

	}

	assert(false);
	return NULL;
}

void gpio_init(GPIO_Type * base , uint8_t pin , uint8_t direction , uint8_t init_level){

    const port_mapping_strct *gpio_ptr = Get_Port_Map(base);

    if(gpio_ptr == NULL) return;

	CLOCK_EnableClock(gpio_ptr->gpioClock);
	CLOCK_EnableClock(gpio_ptr->portClock);

	assert(pin < 32);
	gpio_ptr->port_base->PCR[pin] =   ( (gpio_ptr->port_base->PCR[pin]&(~((PORT_PCR_MUX_MASK)| (PORT_PCR_IBE_MASK)))) |  ((PORT_PCR_MUX(0) | PORT_PCR_IBE(1))));


	if(direction ==  1){
	if(init_level == 1){
		gpio_ptr->gpio_base->PSOR = (1U << pin);
	}
	else{
		gpio_ptr->gpio_base->PCOR = (1U << pin);
		}
	gpio_ptr->gpio_base->PDDR |= (1U << pin);
	}
	else{
		gpio_ptr->gpio_base->PDDR &= ~(1U << pin);
	}
}




void gpio_set_pin(GPIO_Type * base , uint8_t pin){
	base->PSOR = (1U << pin);
}


void gpio_clear_pin(GPIO_Type * base , uint8_t pin ){
	base->PCOR = (1U << pin);
}

void gpio_toggle_pin(GPIO_Type * base , uint8_t pin){
		base->PTOR = (1U << pin);
}


#define LED_ON(base , pin)  gpio_clear_pin(base , pin)
#define LED_OFF(base , pin)  gpio_set_pin(base , pin)


int main(void) {

    /* Init board hardware. */
    BOARD_InitBootClocks();


    gpio_init(GPIO4 , 17 ,direction_output , init_level_1);
    gpio_init(GPIO4 , 19 ,direction_output , init_level_1);
    gpio_init(GPIO4 , 18 ,direction_output , init_level_1);

    while(1){

    LED_ON(GPIO4 , 17);
    for(volatile int i = 0 ; i < 800000 ; i++){
    	__asm("NOP");
    }

    LED_OFF(GPIO4 , 17);




    LED_ON(GPIO4 , 19);
    for(volatile int i = 0 ; i < 800000 ; i++){
    	__asm("NOP");
    }

    LED_OFF(GPIO4 , 19);




    LED_ON(GPIO4 , 18);
    for(volatile int i = 0 ; i < 800000 ; i++){
    	__asm("NOP");
    }

    LED_OFF(GPIO4 , 18);


    }

    return 0 ;

}
