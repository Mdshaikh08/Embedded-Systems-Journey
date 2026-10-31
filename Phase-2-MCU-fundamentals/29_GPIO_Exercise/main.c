#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "fsl_debug_console.h"
/* TODO: insert other include files here. */
#include "fsl_clock.h"
#include "MCXN236_COMMON.h"
#include "led_pattern.h"
/* TODO: insert other definitions and declarations here. */


/*
 * @brief   Application entry point.
 */
int main(void) {

    /* Init board hardware. */

    BOARD_InitBootClocks();


    gpio_init(GPIO4 , RED_PIN ,direction_output , init_level_1);
    gpio_init(GPIO4 , GREEN_PIN ,direction_output , init_level_1);
    gpio_init(GPIO4 , BLUE_PIN ,direction_output , init_level_1);
    gpio_init(GPIO0 , BUTTON_PIN ,direction_input , init_level_0);


    while(1){

    	gpio_button();


    	    }

    return 0 ;

}
