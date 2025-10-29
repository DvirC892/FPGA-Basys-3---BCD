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

---

## 📂 Project Files

| File | Description |
|------|--------------|
| `bcd_display.vhd` | Main design source |
| `TB.vhd` | Testbench (simulation 0–F) |
| `bcd_display.xdc` | Pin constraints (Basys 3) |
| `README.md` | Project documentation |

---

## 🧱 System Architecture
<p align="center">
  <img src="https://github.com/DvirC892/projectPhotos/blob/main/%D7%A6%D7%99%D7%9C%D7%95%D7%9D%20%D7%9E%D7%A1%D7%9A%202025-10-29%20200752.png" 
       alt="BCD Display Architecture" width="750">
</p>

---

## 📊 Simulation (Vivado Waveform)
<p align="center">
  <img src="https://github.com/DvirC892/projectPhotos/blob/main/%D7%A6%D7%99%D7%9C%D7%95%D7%9D%20%D7%9E%D7%A1%D7%9A%202025-10-29%20200946.png" 
       alt="Vivado Simulation Waveform" width="750">
</p>

The simulation demonstrates:
- Input transitions from `0000` to `1111` via `SW_tb`
- Corresponding segment output changes (`SEG_tb`)
- Active display indication through `AN_tb`

---

## ▶️ How to Run
1. Open Vivado → Create New Project → Add Sources  
2. Add: `bcd_display.vhd`, `bcd_display.xdc`, and optionally `TB.vhd`  
3. Set target device: **Basys 3 (xc7a35t-1cpg236c)**  
4. Run **Synthesis → Implementation → Generate Bitstream**  
5. Program FPGA and observe:
   - LEDs light up with switches  
   - Display shows correct hex value  
   - Press **BTNC** to cycle between 7-segment displays

---

## 📸 Example Outputs
| Switches | Display | LEDs |
|-----------|----------|------|
| `0000` | 0 | Off |
| `0001` | 1 | LED0 |
| `1010` | A | LED1 + LED3 |
| `1111` | F | All LEDs ON |

---

## 🧰 Tools Used
- **Vivado Design Suite 2023.1**
- **VHDL-2008**
- **Basys 3 FPGA**

---

## 🧾 License
This project is open-source and free for educational use.  
If you reuse or modify it, please credit **Dvir Cohen**.

---

## 💬 Contact
📧 [LinkedIn – Dvir Cohen](https://www.linkedin.com/in/dvir-cohen892)  
📁 GitHub: [DvirC892](https://github.com/DvirC892)
