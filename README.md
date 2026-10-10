# PV Simulink Fault Scenario Models

This repository contains MATLAB/Simulink R2025b photovoltaic fault scenario models used for photovoltaic fault diagnosis studies.

The repository includes one healthy reference model and eleven fault scenario models, corresponding to diagnostic labels `F0` to `F11`.

## Repository scope

This repository is dedicated only to the MATLAB/Simulink photovoltaic scenario models used in the framework of a Master 2 internship.

The meteorological profiles used during the internship-related studies were synthetic meteorological profiles. This repository does not provide experimental field data, real-weather datasets, or a complete dataset generation workflow.

## Software requirements

The models were prepared and organized using:

- MATLAB R2025b
- Simulink
- Simscape Electrical / Specialized Power Systems, when required by the local MATLAB installation

Compatibility with older MATLAB/Simulink releases is not guaranteed.

## Model scope

The models are simplified photovoltaic scenario models intended for controlled simulation and photovoltaic fault diagnosis studies.

They do not represent a complete grid-connected photovoltaic power plant. The parameter file defines a simplified photovoltaic array model without inverter, transformer, grid connection, MPPT, PWM or control loops. The photovoltaic array is connected to an equivalent constant DC load.

The models are therefore intended for diagnosis-oriented simulation studies, not for grid-code compliance analysis, inverter control validation or protection-system certification.

## Files included

The repository contains the following model and parameter files:

```text
pv_model_F0_healthy.slx
pv_model_F1_open_circuit.slx
pv_model_F2_intra_string_short.slx
pv_model_F3_ground_fault.slx
pv_model_F4_partial_shading.slx
pv_model_F5_progressive_degradation.slx
pv_model_F6_intermittent_short.slx
pv_model_F7_arc_fault.slx
pv_model_F8_inter_string_short.slx
pv_model_F9_module_mismatch.slx
pv_model_F10_high_resistance_connection.slx
pv_model_F11_combined_fault.slx
power_PVarray_250kW_param.m
```

## Scenario labels

| Label | Model file | Scenario |
|---|---|---|
| `F0` | `pv_model_F0_healthy.slx` | Healthy operation |
| `F1` | `pv_model_F1_open_circuit.slx` | Open-circuit fault |
| `F2` | `pv_model_F2_intra_string_short.slx` | Intra-string short-circuit fault |
| `F3` | `pv_model_F3_ground_fault.slx` | Ground fault |
| `F4` | `pv_model_F4_partial_shading.slx` | Partial shading |
| `F5` | `pv_model_F5_progressive_degradation.slx` | Progressive degradation |
| `F6` | `pv_model_F6_intermittent_short.slx` | Intermittent short-circuit fault |
| `F7` | `pv_model_F7_arc_fault.slx` | Arc-fault scenario |
| `F8` | `pv_model_F8_inter_string_short.slx` | Inter-string short-circuit fault |
| `F9` | `pv_model_F9_module_mismatch.slx` | Module mismatch |
| `F10` | `pv_model_F10_high_resistance_connection.slx` | High-resistance connection fault |
| `F11` | `pv_model_F11_combined_fault.slx` | Combined fault |

## Basic use

1. Clone or download this repository.
2. Open MATLAB R2025b.
3. Add the repository folder to the MATLAB path.
4. Run the parameter file:

```matlab
run('power_PVarray_250kW_param.m')
```

5. Open the desired Simulink model, for example:

```matlab
open_system('pv_model_F0_healthy.slx')
```

or:

```matlab
open_system('pv_model_F4_partial_shading.slx')
```

6. Configure the required synthetic meteorological profiles and simulation parameters according to the intended study.

## Authorship and internship context

The MATLAB/Simulink photovoltaic fault scenario models were developed and consolidated by Edgar Hernando Sepúlveda-Oviedo, Maître de conférences / Associate Professor.

These models were used by Miguel Angel Gonzalez Terceros Angel during his Master 2 internship under simplified synthetic meteorological profiles.

The Master 2 internship was supervised by Edgar Hernando Sepúlveda-Oviedo, Maître de conférences / Associate Professor, and Stéphane Grieu, Professeur des universités / Full Professor.

## Related works using synthetic meteorological profiles

The MATLAB/Simulink photovoltaic fault scenario models released in this repository were used with synthetic meteorological profiles in the framework of the following works:

1. Miguel Angel Gonzalez Terceros Angel, Edgar Hernando Sepúlveda-Oviedo, Stéphane Grieu.  
   **Evaluating latent-space representations for photovoltaic fault diagnosis using dimensionality-reduction techniques.**  
   3er Congreso de Ciencias Exactas e Ingenierías (ConCEI), Universidad Autónoma de Yucatán, Oct. 2026, Mérida, Yucatán, Mexico.  
   HAL: `hal-05771459`.

2. Miguel Angel Gonzalez Terceros Angel, Edgar Hernando Sepúlveda-Oviedo, Stéphane Grieu.  
   **Event-based representation of photovoltaic degradation trajectories.**  
   3er Congreso de Ciencias Exactas e Ingenierías (ConCEI), Oct. 2026, Mérida, Yucatán, Mexico.  
   HAL: `hal-05771445`.

3. Miguel Angel Gonzalez Terceros Angel, Edgar Hernando Sepúlveda-Oviedo, Stéphane Grieu.  
   **Benchmarking classical AI methods for photovoltaic fault diagnosis.**  
   3er Congreso de Ciencias Exactas e Ingenierías (ConCEI), Universidad Autónoma de Yucatán, Oct. 2026, Mérida, Yucatán, Mexico.  
   HAL: `hal-05771431`.

4. Miguel Angel Gonzalez Terceros Angel, Edgar Hernando Sepúlveda-Oviedo, Stéphane Grieu.  
   **Represent Before Classifying: Frugal Physics-Informed Fusion for Multiclass Fault Diagnosis in Photovoltaic Systems.**  
   Journées Nationales du Photovoltaïque (JNPV 2026), Nov. 2026, Strasbourg, France.  
   HAL: `hal-05771405`.

## How to cite

If you use these models, please cite this repository and the related work that is closest to your use case.

Suggested repository citation:

```text
E.H. Sepúlveda-Oviedo, PV Simulink Fault Scenario Models, GitHub repository, 2026.
https://github.com/ehsepulvedao/pv-simulink-fault-scenario-models
```

## License

This repository is released under the MIT License.

## Disclaimer

These MATLAB/Simulink models are provided for research and educational purposes. They are simplified photovoltaic scenario models for fault diagnosis studies and should not be used directly for safety-critical design, protection certification, grid-code compliance studies or operational maintenance decisions without additional validation.
