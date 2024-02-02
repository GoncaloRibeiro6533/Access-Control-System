# Access Control System

This repository contains the source code and documentation for the Access Control System project developed as part of the "Informatics and Computer Laboratory" course during the summer semester of 2022/2023.

## Table of Contents

- [Description](#description)
- [System Architecture](#system-architecture)
- [Control Module](#control-module)
- [Hardware Abstraction Layer (HAL)](#hardware-abstraction-layer-hal)
- [Keyboard Module (KBD)](#keyboard-module-kbd)
- [LCD Module](#lcd-module)
- [Serial Emitter Module](#serial-emitter-module)
- [Door Mechanism Module](#door-mechanism-module)
- [How to Use](#how-to-use)
- [License](#license)

## Description

The project involves implementing an Access Control System that uses a User Identification Number (UIN) and a Personal Identification Number (PIN) to control access to restricted zones. The system includes a 12-key keypad, a Liquid Crystal Display (LCD), a door mechanism, and a maintenance key, all managed by a Personal Computer (PC).

For a detailed project description, refer to the [project document](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/docs/project%5BEnglish%20version%5D.pdf).

## System Architecture

The system architecture is a hybrid hardware-software solution, consisting of modules for reading keys from the keypad, interfacing with the LCD, controlling the door mechanism, and the main control module implemented in software.

The hardware description is implemented in VHDL, and the software is implemented in Kotlin.

![Architecture of the implementation of the Access Control System](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/docs/diagrams/architecture.png)

## Control Module

The control module is implemented in Kotlin and responsible for managing the overall system. It includes Hardware Abstraction Layer (HAL) functions, keyboard input handling (KBD), LCD interfacing, serial communication (SerialEmitter), and door mechanism control.

For implementation details, refer to the [Control module source code](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/docs/project%5BEnglish%20version%5D.pdf).

## Hardware Abstraction Layer (HAL)

The Hardware Abstraction Layer (HAL) virtualizes the access to the UsbPort system, providing functions for reading and writing bits, setting and clearing bits, and other low-level operations.

For implementation details, refer to the [HAL source code](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/software/HAL.kt).

## Keyboard Module (KBD)

The keyboard module handles the input from the 12-key matrix keypad, providing functions for initializing the module, reading keys, and waiting for key input with a timeout.

For implementation details, refer to the [KBD source code](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/software/KBD.kt).

## LCD Module

The LCD module interfaces with the Liquid Crystal Display, providing functions for writing commands, data, characters, and initializing the display.

For implementation details, refer to the [LCD source code](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/software/LCD.kt).

## Serial Emitter Module

The Serial Emitter module handles the serial communication with the Serial Receiver modules, providing functions for initializing the module, sending frames to the LCD and door mechanism, and checking the communication channel's status.

For implementation details, refer to the [SerialEmitter source code](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/software/SerialEmitter.kt).

## Door Mechanism Module

The Door Mechanism module controls the state of the door mechanism, providing functions for initializing the module, opening and closing the door with specified velocity parameters, and checking if the previous command has finished.

For implementation details, refer to the [DoorMechanism source code](https://github.com/GoncaloRibeiro6533/Access-Control-System/blob/main/software/DoorMechanism.kt).

## How to Use

1. Clone the repository: `git clone https://github.com/your-username/access-control-system.git`
2. Create a project on quartus for de10-Lite.
3. Create a project for the software in intelIJ.
4. Connect the de10-lite to your PC and upload the AccessControlSystem entity to the de10-Lite.
5. Build and run the App module on your PC.


## License

This project is licensed under the [MIT License](link-to-license).
