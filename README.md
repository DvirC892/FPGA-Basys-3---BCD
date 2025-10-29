# 🧮 BCD Display – Basys 3 FPGA Project

### Developed by: Dvir Cohen  
### Board: Digilent Basys 3 (Artix-7 XC7A35T-1CPG236C)

---

## 🧠 Project Overview
This project implements a **Binary-to-7-Segment Display Decoder (BCD)** on the **Basys 3 FPGA** board using **VHDL**.  
The system reads a 4-bit binary input from the switches (`SW[3:0]`) and displays its corresponding hexadecimal value (0–F) on the rightmost 7-segment display.

Each LED (`LED[3:0]`) mirrors its respective switch, and a **push button (BTNC)** is used to move between the four available displays (`AN[3:0]`).

---

## 🎥 Demo Video
You can watch the project in action here:

[▶️ Watch on YouTube](https://www.youtube.com/shorts/XXuOxKw7Nt0)

<p align="center">
  <a href="https://www.youtube.com/shorts/XXuOxKw7Nt0" target="_blank">
    <img src="https://img.youtube.com/vi/XXuOxKw7Nt0/0.jpg" alt="BCD Display Demo" width="480">
  </a>
</p>

---

## ⚙️ Features
- Real-time **BCD to 7-Segment decoding** (0–F)
- **Active-Low** 7-Segment control
- **Button-controlled display switching** between all four digits
- **LEDs mirror switch states**
- Fully written in **VHDL**, synthesizable for **Basys 3 FPGA**

---

## 🧩 Hardware Connections

| Component | Pins | Description |
|------------|------|-------------|
| Switches | `SW[3:0]` | Binary input (0–15) |
| LEDs | `LED[3:0]` | Reflect switch state |
| Seven Segment Display | `SEG[6:0]`, `AN[3:0]` | Active-Low display control |
| Button | `BTNC` (`U18`) | Cycles between active displays |
| Clock | `W5` | 100 MHz onboard clock |

---

## 📂 Project Files

| File | Description |
|------|--------------|
| `bcd_display.vhd` | Main design source |
| `TB.vhd` | Testbench (simulation 0–F) |
| `bcd_display.xdc` | Pin constraints (Basys 3) |
| `.gitignore` | Ignore Vivado temp/build files |
| `waveform.wcfg` | Vivado waveform configuration |
| `README.md` | Project documentation |

---

## 🧱 System Architecture



---

## 🧮 Simulation Visualization
During simulation in **Vivado**, waveform signals were configured using an XML `.wcfg` file.  
This file defines which signals (`SW_tb`, `SEG_tb`, `AN_tb`) appear in the waveform viewer.

Example snippet from the waveform configuration:
```xml
<wave_config>
  <db_ref_list>
    <db_ref path="TB_behav.wdb" id="1">
      <top_modules>
        <top_module name="TB" />
      </top_modules>
    </db_ref>
  </db_ref_list>
  <wvobject fp_name="/TB/SW_tb" type="array" />
  <wvobject fp_name="/TB/SEG_tb" type="array" />
  <wvobject fp_name="/TB/AN_tb" type="array" />
</wave_config>
