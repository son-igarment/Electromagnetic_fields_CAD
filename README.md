# Electromagnetic Fields CAD Project

## Author
Phạm Lê Ngọc Sơn

## Project Overview
This project focuses on electromagnetic levitation simulation using MATLAB and Simulink. It models the behavior of an electromagnetic system designed to levitate an anchor through controlled magnetic fields, with implementations both with and without feedback control.

## Project Structure

### Simulink Models
- **Levitazione_Elettromagnetica.mdl**: Basic electromagnetic levitation model
- **Levitazione_Elettromagnetica_retroazione.mdl**: Advanced model with feedback control

### MATLAB Scripts
- **Dati_Levitazione.m**: Parameter initialization for the basic model
- **Dati_Levitazione_retroazione.m**: Parameter initialization for the feedback control model
- **Dati_Levitazione.asv** and **Dati_Levitazione_retroazione.asv**: Auto-saved versions of the scripts

## Technical Details

The project simulates an electromagnetic levitation system with the following parameters:
- Number of coil turns (N): 20
- Magnetic circuit cross-section (S): 10e-4 m²
- Ferromagnetic circuit length (Lf): 0.5 m
- Air gap thickness (x_E): 0.01 m
- Anchor mass (M): 5 kg

The feedback control model implements a PID controller with calculated gains to stabilize the levitation system at the desired position.

## How to Use

1. Open MATLAB with Simulink installed
2. Run the appropriate parameter initialization script:
   - `Dati_Levitazione.m` for the basic model
   - `Dati_Levitazione_retroazione.m` for the feedback control model
3. Open the corresponding Simulink model:
   - `Levitazione_Elettromagnetica.mdl` for the basic model
   - `Levitazione_Elettromagnetica_retroazione.mdl` for the feedback control model
4. Run the simulation and analyze the results

## System Requirements
- MATLAB R2019b or later
- Simulink
- Control System Toolbox (for the feedback control model)

## Notes
The model parameters can be adjusted in the MATLAB scripts to simulate different conditions and test various scenarios for electromagnetic levitation.