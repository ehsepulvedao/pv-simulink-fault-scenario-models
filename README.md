# PV Simulink Fault Scenario Models

This repository contains MATLAB/Simulink R2025b photovoltaic scenario models for PV fault diagnosis studies.

The repository includes one healthy reference model and eleven fault scenario models:

- F0: healthy operation
- F1: open-circuit fault
- F2: intra-string short-circuit fault
- F3: ground fault
- F4: partial shading
- F5: progressive degradation
- F6: intermittent short-circuit fault
- F7: arc-fault scenario
- F8: inter-string short-circuit fault
- F9: module mismatch
- F10: high-resistance connection fault
- F11: combined fault

## Software requirements

The models were prepared for:

- MATLAB R2025b
- Simulink
- Simscape Electrical / Specialized Power Systems, if required by the local MATLAB installation

## Model scope

The models are simplified photovoltaic scenario models intended for fault-diagnosis dataset generation and controlled simulation studies. They do not represent a complete grid-connected PV power plant.

The parameter file defines a simplified PV array model without inverter, transformer, grid connection, MPPT, PWM or control loops. The PV array is connected to an equivalent constant DC load.

## Files

- `pv_model_F0_healthy.slx`
- `pv_model_F1_open_circuit.slx`
- `pv_model_F2_intra_string_short.slx`
- `pv_model_F3_ground_fault.slx`
- `pv_model_F4_partial_shading.slx`
- `pv_model_F5_progressive_degradation.slx`
- `pv_model_F6_intermittent_short.slx`
- `pv_model_F7_arc_fault.slx`
- `pv_model_F8_inter_string_short.slx`
- `pv_model_F9_module_mismatch.slx`
- `pv_model_F10_high_resistance_connection.slx`
- `pv_model_F11_combined_fault.slx`
- `power_PVarray_250kW_param.m`

## Authorship and context

The MATLAB/Simulink photovoltaic fault scenario models were developed and consolidated by Edgar Hernando Sepúlveda-Oviedo.

Selected models were used in preliminary internship-related tests by Miguel Angel Gonzalez Terceros under simplified synthetic meteorological profiles, within an academic internship framework supervised by Edgar Hernando Sepúlveda-Oviedo and [Name of the second supervisor].

The final hybrid real-weather-driven dataset generation workflow, including measured meteorological data injection, daily segmentation, fixed severity templates, metadata generation, quality-control procedures and data article preparation, was developed separately by Edgar Hernando Sepúlveda-Oviedo.

## Citation

If you use these models, please cite the associated data article and this repository.

Repository citation:

Edgar Hernando Sepúlveda-Oviedo, PV Simulink Fault Scenario Models, GitHub repository, 2026.

## License

This repository is released under the MIT License.
