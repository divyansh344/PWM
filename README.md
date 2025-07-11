# Verilog Based PWM Generator

## Author
**Divyansh Tripathi**

## ⚙️ Project Overview

This project implements a Verilog-based Pulse Width Modulation (PWM) signal generator that produces a symmetrical waveform with a dynamically varying duty cycle.

## ✨ Features

- Generates PWM signals with varying duty cycle.
- Duty cycle ramps up from 0% to 100% in steps of 5%, then ramps down from 100% to 0% in the same manner.
- Produces a symmetrical pattern ideal for modulation-based control systems.

### 🔋 Applications

- **LED Dimming**: Gradually increase or decrease brightness by controlling average voltage.
- **DC Motor Speed Control**: Speed is directly proportional to average applied voltage; modulating PWM achieves precise speed regulation.

## 🔌 Ports Used in the PWM Generator

- `clk`, `rst` – Synchronizing signals (clock and reset)
- `out` – PWM output waveform

## 🧠 Internal Signals and Parameters

- `period` – Duration of one full output cycle
- `ton` – On-time duration; varies per cycle to adjust duty cycle
- `count` – Clock pulse counter to generate ON/OFF segments
- `ncyc` – Indicates the end of one full PWM cycle (goes high on completion)
- `mode` – Duty cycle control mode
  - `mode = 0` → increasing duty cycle  
  - `mode = 1` → decreasing duty cycle

## 📊 How to View Simulation Waveforms

1. Save the `pwm_gtkwave.gtkw` file.
2. Open **GTKWave**.
3. Click **File > Open New Tab**.
4. Select the saved `.gtkw` file.
5. Add relevant signals/ports to view the waveform.

## 📁 Files in This Repository

- `pwm.v` – Verilog module (Design Under Test)
- `testbench.v` – Testbench to simulate input signals
- `pwm_gtkwave.gtkw` – GTKWave file for simulation viewing
- `Simulation_image/` – Screenshot of simulation waveform

---

**Thanks for checking out the project!**  
Feedback and contributions are always welcome.
