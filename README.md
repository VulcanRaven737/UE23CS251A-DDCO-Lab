# DDCO Lab Experiments
#### This repository contains the Digital Design and Computer Organization lab assignments. 
The simulation is carried out using Icarus Verilog and waveforms are viewed using GTKWave.

## Table of Contents
 - [Requirements](#requirements)
 - [Setup and Installation](#setup-and-installation)
 - [How to Run the Code](#how-to-run-the-code)

## Requirements
To run the Verilog files in this repository, you need to have the following installed:

 - Icarus Verilog
 - GTKWave (for waveform viewing)
  
### Installing Icarus Verilog
#### `For Ubuntu/Debian:`
```
sudo apt update
sudo apt install iverilog gtkwave
```
#### `For macOS (Homebrew):`
```
brew install icarus-verilog gtkwave
```
#### `For Windows:`
```
Download the Icarus Verilog installer.
Download the GTKWave installer.
```

## Setup and Installation
Clone this repository using the following command:
```
git clone https://github.com/VulcanRaven737/UE23CS251A-DDCO-Lab
cd UE23CS251A-DDCO-Lab
```
## How to Run the Code
To run the Verilog code for a specific experiment:

- `Navigate to the relevant directory containing the Verilog files (e.g., cd experiment_1).`
- `Compile the Verilog code using iverilog:`
```
iverilog -o experiment_tb.vvp experiment.v
```
- `Run the compiled simulation:`
```
vvp experiment_tb.vvp
```
- `If the testbench generates a .vcd file (waveform output), you can view it with GTKWave:`
```
gtkwave experiment.vcd
```