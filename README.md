# Discharge-stage measurements with uncertainty estimates 
This repository houses the datasets analyzed in the Master's thesis "Modeling Measurement Error with Data & Bayesian Gaussian-Gaussian Models" (2025), along with R scripts demonstrating data visualization and implementation of the thesis' measurement error methodology through a developmental version of the bdrc package.

# Datasets and Data Structure

## Provo River Dataset (`provo.csv`)
Contains 22 measurements from USGS station 10154200 (Utah, 1986-2021) with quantitative uncertainty reporting.

| Variable   | Description                                               | Format/Units                      |
|------------|-----------------------------------------------------------|-----------------------------------|
| `datetime` | Timestamp of the measurement                              | `YYYY-MM-DD HH:MM:SS [UTC-07:00]` |
| `W`        | Water elevation (stage)                                   | Meters (m)                        |
| `Q`        | Discharge                                                 | Cubic meters per second (m³/s)    |
| `Q_sigma`  | Standard error of discharge measurements                  | Cubic meters per second (m³/s)    |

## Kaweah River Dataset (`kaweah.csv`)
Contains 107 measurements from USGS station 11210950 (California, 1969-1977) with qualitative uncertainty ratings based on the USGS system (Turnipseed et al., 2010): Excellent (±2%), Good (±5%), Fair (±8%), or Poor (>8%).

| Variable     | Description                                                   | Format/Units                                     |
|--------------|---------------------------------------------------------------|--------------------------------------------------|
| `datetime`   | Timestamp of the measurement                                  | `YYYY-MM-DDTHH:MM:SSZ`                           |
| `W`          | Water elevation (stage)                                       | Meters (m)                                       |
| `Q`          | Discharge                                                     | Cubic meters per second (m³/s)                   |
| `Q_quality`  | Qualitative assessment of measurement accuracy                | Categories (`Excellent`, `Good`, `Fair`, `Poor`) |



# Repository Structure

```
measurement-error-thesis-data/
│
├── data/                            # Raw data directory
│   ├── provo.csv                    # Discharge measurements with standard errors
│   ├── kaweah.csv                   # Discharge measurements with quality ratings
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

# Requirements
- R
- devtools package
- tidyverse package

---

# Usage
This repository serves three main purposes:
1. It provides access to discharge measurement datasets with different types of uncertainty reporting (quantitative and qualitative)
2. It demonstrates how to visualize these datasets through example R scripts
3. It shows how to implement the measurement error methodology developed in the thesis using the developmental version of the bdrc package

The `R/` directory contains scripts for each of these purposes:
- `load_data.R`: Data loading and basic manipulation
- `plot_data.R`: Creation of various data visualizations (outputs saved to `Figures/data/`)
- `rating_curves.R`: Implementation of the thesis' novel rating curve model using a developmental version of the bdrc package (outputs saved to `Figures/rating_curves/`)

A basic example of how to use the bdrc package:

```R
# Download developmental version of bdrc package
devtools::install_github("sor16/bdrc", ref = "measurement-uncertainty")

# Load Provo and Kaweah datasets (creates two objects: provo and kaweah)
source("R/load_data.R")

# Fit extended generalized power-law rating curve (i.e., measurement-error model)
gplm_me.fit <- bdrc::gplm(Q | Q_sigma ~ W, provo)
```

See the `rating_curves.R` script for more details on rating curve fitting with bdrc.

# Data Citation

If you use this data in your research, please cite the appropriate source for each dataset.

For the Provo River data:

Hodson, T. O., Doore, K. J., Kenney, T. A., Over, T. M., & Yeheyis, M. B. (2024). Ratingcurve: A Python Package for Fitting Streamflow Rating Curves. Hydrology, 11(2), 14. https://doi.org/10.3390/hydrology11020014

For the Kaweah River data:

U.S. Geological Survey (2024). KAWEAH R BL TERMINUS DAM CA. U.S. Geological Survey National Water Information System database. Retrieved from https://waterdata.usgs.gov/ca/nwis/measurements/?site_no=11210950
[Note: Data query parameters - Site number: 11210950; Date range: 1969-02-03 to 1977-12-04; Only rated measurements were used; Excluded measurement with party_nm = "Har/Har"]

# References

Turnipseed, D.P., and Sauer, V.B., 2010, Discharge measurements at gaging stations: U.S. Geological Survey Techniques and Methods book 3, chap. A8, 87 p.


