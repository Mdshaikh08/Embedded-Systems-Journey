#include "led_pattern.h"





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

	assert(pin < 32);
    const port_mapping_strct *gpio_ptr = Get_Port_Map(base);

    if(gpio_ptr == NULL) return;

	CLOCK_EnableClock(gpio_ptr->gpioClock);
	CLOCK_EnableClock(gpio_ptr->portClock);



	if(direction ==  1){
		gpio_ptr->port_base->PCR[pin] =   ( (gpio_ptr->port_base->PCR[pin]&(~((PORT_PCR_MUX_MASK)| (PORT_PCR_IBE_MASK) | (PORT_PCR_PE_MASK) | (PORT_PCR_PS_MASK)))) |  ((PORT_PCR_MUX(0) | PORT_PCR_IBE(1))));
	if(init_level == 1){
		gpio_ptr->gpio_base->PSOR = (1U << pin);
	}
	else{
		gpio_ptr->gpio_base->PCOR = (1U << pin);
		}
	gpio_ptr->gpio_base->PDDR |= (1U << pin);
	}
	else if(direction == 0){
		gpio_ptr->port_base->PCR[pin] =   ( (gpio_ptr->port_base->PCR[pin]&(~((PORT_PCR_MUX_MASK)| (PORT_PCR_IBE_MASK) | (PORT_PCR_PE_MASK) | (PORT_PCR_PS_MASK)))) |  ((PORT_PCR_MUX(0) | PORT_PCR_IBE(1) | PORT_PCR_PE(1) | PORT_PCR_PS(1))));
		gpio_ptr->gpio_base->PDDR &= ~(1U << pin);

	}
	else{
		return ;
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

void led_transition(GPIO_Type * base, uint32_t val){

	base->PCOR = val;
	base->PSOR = (~val) & rgb_pin_mask;

}

void rgb_set(uint32_t val){
	uint32_t rgb_mask = (val & 0b111) << RED_PIN;
	led_transition(GPIO4 , rgb_mask);
}

void gpio_button(void){
	static uint32_t button_count = 0;
	uint8_t button_not_pressed = (GPIO0->PDIR & BUTTON_PIN_MASK) >> BUTTON_PIN;
	static uint32_t last_state = 1;

	if(last_state){

	if(!button_not_pressed){
		rgb_set(button_count);
		button_count = ((button_count + 1) & 0x07);
	}
	}
	last_state = button_not_pressed;
}
