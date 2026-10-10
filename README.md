# PV Simulink Fault Scenario Models

This repository contains MATLAB/Simulink R2025b photovoltaic fault scenario models for photovoltaic fault diagnosis studies.

The repository includes one healthy reference model and eleven fault scenario models, corresponding to diagnostic labels `F0` to `F11`. These models were used as scenario-specific photovoltaic simulation models in studies on photovoltaic fault diagnosis and in the development of a hybrid real-weather-driven photovoltaic fault diagnosis dataset.

## Repository scope

This repository is dedicated to the MATLAB/Simulink photovoltaic scenario models.

It does not contain the complete hybrid real-weather-driven dataset generation workflow. The final workflow used to inject measured meteorological datasets, perform daily segmentation, define fixed severity templates, export `signals.csv` and `metadata.json` files, and run quality-control procedures was developed separately by Edgar Hernando Sepúlveda-Oviedo for the associated data article.

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

6. Configure the required input profiles and simulation parameters according to the intended study.

## Authorship and context

The MATLAB/Simulink photovoltaic fault scenario models were developed and consolidated by Edgar Hernando Sepúlveda-Oviedo, Maître de conférences / Associate Professor.

Selected models were used in preliminary internship-related tests by Miguel Angel Gonzalez Terceros Angel under simplified synthetic meteorological profiles, within an academic internship framework supervised by Edgar Hernando Sepúlveda-Oviedo, Maître de conférences / Associate Professor, and Stéphane Grieu, Professeur des universités / Full Professor.

These preliminary synthetic-meteorology studies are distinct from the later hybrid real-weather-driven dataset generation workflow. The final workflow, including measured meteorological data injection, daily segmentation, fixed severity templates, metadata generation, quality-control procedures and data article preparation, was developed separately by Edgar Hernando Sepúlveda-Oviedo.

## Related preliminary works using synthetic meteorological profiles

The MATLAB/Simulink photovoltaic fault scenario models released in this repository were used with synthetic meteorological profiles in the framework of the following preliminary works:

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

## Relationship with the hybrid real-weather-driven dataset

The hybrid real-weather-driven dataset described in the associated Data in Brief article extends this preliminary modelling framework by replacing synthetic meteorological profiles with measured meteorological time series from open datasets.

The later dataset generation workflow includes:

- measured meteorological data injection;
- real-day segmentation;
- interpolation inside the measured time interval;
- fixed severity templates;
- scenario-wise simulation;
- daily `signals.csv` files;
- experiment-level `metadata.json` files;
- dataset integrity verification;
- quality-control reports.

That real-weather-driven generation workflow is maintained separately from this model repository.

## How to cite

If you use these models, please cite this repository and the associated data article when available.

Suggested repository citation:

```text
E.H. Sepúlveda-Oviedo, PV Simulink Fault Scenario Models, GitHub repository, 2026.
https://github.com/ehsepulvedao/pv-simulink-fault-scenario-models
```

Associated data article:

```text
E.H. Sepúlveda-Oviedo, A hybrid real-weather-driven and physics-based dataset for labelled photovoltaic fault diagnosis, Data in Brief, 2026. [To be completed after publication]
```

## License

This repository is released under the MIT License.

## Disclaimer

These MATLAB/Simulink models are provided for research and educational purposes. They are simplified photovoltaic scenario models for fault diagnosis studies and should not be used directly for safety-critical design, protection certification, grid-code compliance studies or operational maintenance decisions without additional validation.
