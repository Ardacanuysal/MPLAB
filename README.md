# 💡 PIC16F628A LED Control Project

This project simulates a basic **LED control system** using the **PIC16F628A** microcontroller. The circuit and logic are implemented in **Proteus** for simulation, and the microcontroller is programmed using **Assembly language** in MPLAB.

---

## 🔧 Project Description

- **Microcontroller:** PIC16F628A  
- **Simulation tool:** Proteus  
- **Programming language:** Assembly (ASM)  
- **Oscillator:** 4MHz Crystal  
- **Controlled Components:** 8 LEDs connected to PORTB (RB0–RB7)  
- **Purpose:** Demonstrate setting and clearing of digital outputs through simple assembly code.

---

## 📸 Project Output

### Passive State (All LEDs OFF)

<img src="https://github.com/Ardacanuysal/MPLAB/blob/main/proteus.jpeg" alt="All LEDs Off" width="600"/>

### Active State (Only D6 LED ON)

<img src="https://github.com/Ardacanuysal/MPLAB/blob/main/proteus2.jpeg" alt="D6 LED On" width="600"/>

---

## 📁 Included Files

- `led_kontrol_pasif.asm` – Turns off all LEDs
- `led_d6_aktif.asm` – Turns on only D6 (RB5)
- `led_kontrol.hex` – Compiled file for Proteus
- `led_kontrol_pasif.jpeg` – Circuit image (passive)
- `led_kontrol_d6_aktif.jpeg` – Circuit image (active)

---

> 📌 You can simulate the `.hex` files in Proteus using the provided circuit design. The microcontroller outputs are controlled using simple bitwise instructions.
