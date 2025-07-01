# Single Degree-of-Freedom (SDOF) Frequency Response Function (FRF) Analysis

## Description

This MATLAB project analyzes and visualizes the Frequency Response Function (FRF) of a Single Degree-of-Freedom (SDOF) system with varying damping ratios. The project demonstrates fundamental vibration concepts through multiple visualization approaches.

## Key Features

- **FRF Calculation**: `SDOF_FRF.m` computes the complex frequency response for a SDOF system
- **Comprehensive Visualization**: `SDOF_FRF_MainScript.m` generates four different plots showing:
  - 3D visualization of the FRF (real vs. imaginary vs. frequency)
  - Separate real and imaginary components
  - Magnitude and phase response (Bode plot style)
  - Nyquist plot (real vs. imaginary components)
- **Parameter Study**: Analyzes the system response across 8 different damping ratios
- **Professional Formatting**: Uses LaTeX interpreters for high-quality mathematical labels

## Getting Started

### Prerequisites

- MATLAB (tested on R2016b and later)
- No additional toolboxes required

### Installation

1. Clone or download the repository
2. Add both files to your MATLAB path
3. Run `SDOF_FRF_MainScript.m` to see the analysis

## Usage

The main script `SDOF_FRF_MainScript.m` is pre-configured to demonstrate the FRF analysis. Simply run the script to generate all visualizations.

### System Parameters

The script uses these default parameters:
- Natural frequency (ωₙ): 2 rad/s
- Stiffness (k): 3 N/m
- Damping ratios (ζ): [0.1, 0.15, 0.2, 0.3, 0.5, 1/√2, 1, 2]

### Output Figures

The script generates four figures:
1. **3D FRF Plot**: Shows real vs. imaginary components vs. normalized frequency
2. **Component Plots**: Separate subplots for real and imaginary components
3. **Magnitude-Phase Plot**: Bode-style plot with magnitude (top) and phase (bottom)
4. **Nyquist Plot**: Imaginary vs. real components of the FRF

## File Descriptions

- `SDOF_FRF.m`: Core function that calculates the FRF for given parameters
- `SDOF_FRF_MainScript.m`: Main analysis script that generates all visualizations

## Customization

To analyze different systems, modify these parameters in `SDOF_FRF_MainScript.m`:
- `w_n`: Natural frequency (rad/s)
- `k`: System stiffness (N/m)
- `zeta`: Array of damping ratios to analyze
- `w_vec`: Frequency range to evaluate (rad/s)

## Technical Background

The FRF of a SDOF system is given by:
```
H(ω) = 1 / [k * (1 - (ω/ωₙ)² + 2jζ(ω/ωₙ))]
```
where:
- ω = excitation frequency
- ωₙ = natural frequency
- ζ = damping ratio
- k = stiffness
- j = imaginary unit

## License

This code is available for use under the MIT License.

## Acknowledgments

This implementation demonstrates fundamental vibration concepts commonly taught in mechanical engineering courses. The visualization approaches are inspired by standard practices in experimental modal analysis.
