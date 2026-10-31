# Phase 2: MCU Fundamentals and Hardware

This Phase-2 folder contains my implementation of MCU Fundamentals like GPIO, Interrupts etc and learning about the architecture of ARM CORTEX M-33 chip and hardware board.

## Key Concepts that i am currently implementing 
- **Register Mapping:** Translating the uint32_t used in embedded C to real registers using the memory addresses.
- **Driver Development:** Hiding the interaction with the hardware from the main file by writing modular driver `.c` and `.h` files.
- **Port & Clock Control:** Handling peripheral clock gating, pin multiplexing, input buffers, and pull-up/down resistors.
- **Atomic Port Control:** Controlling active-low RGB LEDs using `PSOR` and `PCOR` for glitch-free single-cycle state transitions.
- **Advanced C:** Practical application of `volatile`, `static`, header guards, and function pointers.
- **Logic Building:** Controlling the RGB pins using the `SW2 Button` and implementing multi-bit binary counter patterns.
