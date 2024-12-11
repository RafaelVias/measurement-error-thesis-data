# Modeling Measurement Error with Data </br> & Bayesian Gaussian-Gaussian Models </br> - Datasets and Examples

This repository contains datasets and scripts used in the Master's thesis *Modeling Measurement Error with Data & Bayesian Gaussian-Gaussian Models* (2025). It provides discharge-stage measurements with associated discharge uncertainty estimates and R scripts for visualization and implementation of novel rating curve methodologies using the bdrc package.

---

## Repository Contents

### Datasets

- Provo River Dataset: Quantitative uncertainty estimates with 22 discharge measurements from USGS station 10154200 (Utah, 1986–2021).
- Kaweah River Dataset: Qualitative uncertainty ratings with 107 discharge measurements from USGS station 11210950 (California, 1969–1977).

For detailed variable descriptions, refer to the data/README.md.

### R Scripts

- `load_data.R`: Script for loading and preparing datasets.
- `plot_data.R`: Examples of data visualization.
- `rating_curves.R`: Demonstrates fitting rating curves using the `bdrc` package.

### Figures

- **Figures/data/**: Visualizations from `plot_data.R`
- **Figures/rating_curves/**: Outputs from `rating_curves.R`

---

## Requirements
- R
- `devtools` package
- `tidyverse` package

---

## Repository Structure

```
measurement-error-thesis-data/
│
├── REAMDE.md                        # Main repository overview
|
├── data/                            # Raw data directory
│   ├── provo.csv                    # Discharge measurements with standard errors
│   ├── kaweah.csv                   # Discharge measurements with quality ratings
|   ├── README.md                    # Detailed dataset descriptions
│    
├── R/                               # R scripts directory
│   ├── load_data.R                  # Script for loading the data
│   ├── plot_data.R                  # Visualization of data
│   ├── rating_curves.R              # Use bdrc pakckage to fit rating curves
|
├── Figures/                         # Figures directory
    ├── data/                        # Figures created within plot_data.R 
    └── rating_curves/               # Figures created within rating_curves.R
```

---

## Usage

A basic example of how to use the developmental version of the `bdrc` package with the Provo River or Kaweah River data:

```R
# Download developmental version of bdrc package
devtools::install_github("sor16/bdrc", ref = "measurement-uncertainty")

# Load Provo and Kaweah datasets (creates two objects: provo and kaweah)
source("R/load_data.R")

# Fit extended generalized power-law rating curve (i.e., measurement-error model)
gplm_me.fit <- bdrc::gplm(Q | Q_sigma ~ W, provo)
```

See the `rating_curves.R` script for more details on rating curve fitting with bdrc.

---
