# Photodiode Front-End Demo

LT-Spice photodiode I–V sweep and MATLAB analysis of responsivity and transimpedance.

## Contents

- **`pd.asc`**  
  LT-Spice schematic: reverse-bias sweep of a silicon photodiode (PD) with series resistor.

- **`pd_iv.txt`**  
  Exported dark-current vs. bias voltage from the `.dc Vbias 0 5 0.1` sweep.

- **`project2_pd_analysis.m`**  
  MATLAB script that:  
  1. Loads `pd_iv.txt`  
  2. Computes responsivity (A/W) assuming 1 µW optical power  
  3. Plots responsivity vs. bias voltage

## Usage

1. **LT-Spice**  
   1. Open `pd.asc` in LT-Spice.  
   2. Ensure your schematic includes:
      ```spice
      .model PD D(Is=1e-9 N=1 Rs=10 Cjo=1p M=0.5)
      .dc Vbias 0 5 0.1
      ```
   3. Press ▶ to run the DC sweep.  
   4. In the waveform viewer, plot `I(R1)` (the current through your series resistor).  
   5. Export the data via **File → Export → Wavedata as Text…** and save as `pd_iv.txt`.

2. **MATLAB**  
   ```matlab
   cd path/to/photodiode-front-end-demo
   project2_pd_analysis
