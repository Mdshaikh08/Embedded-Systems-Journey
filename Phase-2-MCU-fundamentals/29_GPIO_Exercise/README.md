# GPIO Fundamentals and Hardware

This folder contains my implementation of bare-metal GPIO drivers and my learning about the ARM Cortex-M33 chip on the NXP FRDM-MCXN236 board. 

I didn't write all of this code in one go. Instead, I built it step-by-step by changing the code based on these specific exercises:

## Step-by-Step Learning Process

### Ex 1: Datasheet Lookups and Struct Offsets
Before writing C code, I looked at the Reference Manual to understand the hardware.
- I found the exact bit positions for `MUX`, `PE` (Pull Enable), `PS` (Pull Select), and `IBE` (Input Buffer Enable) in the Port Control Register (PCR). 
- I looked at the offset and width of the `PDIR` register and the reset values of the PCR.
- **Day 28 leftover:** I also completed the `offsetof` register-struct exercise so I know exactly how my C structs map to the real hardware memory addresses.

### Ex 2: Multi-pin LED Pattern
I moved from toggling a single LED to running a pattern across the R/G/B LEDs (doing a binary count from 0 to 7).
- Instead of using loops to turn pins on and off one by one, I learned how to write to several pins at once using the `PSOR` (Set) and `PCOR` (Clear) registers. 
- Doing this in one single access fixed the visual glitches.

### Ex 3: Button Input with Pull-up
I configured the `SW2` button as an input to mirror its state to an LED (pressed = LED on).
- I used the `PE` and `PS` fields to enable the internal pull-up resistor. 
- I learned the difference between reading `PDIR` (Input) vs `PDOR` (Output), and saw how reading a pin before the input buffer (`IBE`) is enabled just gives garbage values.

### Ex 4: Button-Controlled Pattern
I connected the button to the LED pattern so that each press advances the pattern by one step.
- I had to figure out what happens when you hold the button down (it loops way too fast) and how contact bounce messes up a simple read loop. 
- I worked out a way to detect a single press using a `static` state variable to track the last state, doing this completely without using interrupts.

## Code Structure
- **`led_pattern.h`:** Contains the color masks and driver function names. It hides all the hardware details.
- **`led_pattern.c`:** Contains the actual driver code, `gpio_init`, and the register bit manipulation.
- **`main.c`:** The main application file. It is completely clean of hardware addresses and just uses the simple driver functions in a `while(1)` loop.
