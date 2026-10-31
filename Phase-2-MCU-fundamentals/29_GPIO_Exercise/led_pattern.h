#ifndef LED_PATTERN_H_
#define LED_PATTERN_H_

#include "fsl_clock.h"
#include "MCXN236_COMMON.h"
#include "led_pattern.h"


#define direction_input    0
#define direction_output   1
#define init_level_0       0
#define init_level_1       1
#define RED_PIN            17U
#define GREEN_PIN          18U
#define BLUE_PIN           19U
#define rgb_pin_mask       0b111 << 17
#define BUTTON_PIN         20U
#define BUTTON_PIN_MASK    0x100000U

#define LED_ON(base , pin)  gpio_clear_pin(base , pin)
#define LED_OFF(base , pin)  gpio_set_pin(base , pin)

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

void gpio_init(GPIO_Type * base , uint8_t pin , uint8_t direction , uint8_t init_level);
void gpio_set_pin(GPIO_Type * base , uint8_t pin);
void gpio_clear_pin(GPIO_Type * base , uint8_t pin );
void gpio_toggle_pin(GPIO_Type * base , uint8_t pin);
void led_transition(GPIO_Type * base, uint32_t val);
void rgb_set(uint32_t val);
void gpio_button(void);




#endif
