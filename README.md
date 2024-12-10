# Discharge-Stage Measurements with Uncertainty Estimates 
This repository contains the datasets analyzed in the Master's thesis "Modeling Measurement Error with Data & Bayesian Gaussian-Gaussian Models" (2025). The data consists of paired discharge-stage measurements from two United States Geological Survey (USGS) gauging stations, along with their associated discharge measurement uncertainties.

---

# Dataset Overview
The repository includes data from two distinct gauging stations that exemplify different approaches to reporting measurement uncertainty in discharge observations.

The Provo River dataset (Utah, USGS 10154200) contains 22 measurements from 1986 to 2021, with discharge measurement uncertainty reported quantitatively as standard errors. 

The Kaweah River dataset (California, USGS 11210950) includes 107 measurements from 1969 to 1977, with measurement quality documented through the USGS qualitative rating system. This system categorizes measurements as Excellent (±2%), Good (±5%), Fair (±8%), or Poor (>8%) based on measurement conditions and equipment used.

---

# Repository Structure
```
measurement-error-thesis-data/
│
├── data/                        # Raw data directory
│   ├── provo.csv                # Discharge measurements with standard errors
│   ├── kaweah.csv               # Discharge measurements with quality ratings
│
├── R/
│   ├── load_data.R              # Script for loading the data
│   ├── create_figures.R         # Visualization examples
│   ├── fit_models.R             # Use bdrc pakckage to fit rating curves
|
├── docs/                        # Documentation directory
│   ├── data_format.md           # Data structure and variable descriptions
│   ├── measurement_quality.md   # USGS quality rating documentation
│   ├── citations.md             # Complete citation information
|
├── Figures/
│   ├── data/
    └── rating_curves/
```

---

# Requirements
- R (>= 4.0.0)
- devtools package
- tidyverse package

---

# Usage
The data can be accessed and analyzed using standard R functions. Example scripts are provided in the `R/` directory that demonstrate:
1. Data loading and basic manipulation
2. Data visualization
3. Rating curve model fitting using the developmental version of the bdrc package, which includes measurement error modeling capabilities

Basic example:
```R
# Download developmental version of bdrc package
devtools::install_github("sor16/bdrc", ref = "measurement-uncertainty")

# Load Provo and Kaweah datasets (creates two objects: provo and kaweah)
source("R/load_data.R")

# Create visualizations (saves to Figures/ directory)
source("R/create_figures.R")

# Fit extended generalized power-law rating curve (i.e., measurement-error model)
gplm_me.fit <- bdrc::gplm(Q | Q_sigma ~ W, provo)

# For details on how to use the function
?bdrc::gplm()
```

# Citation

If you use this data in your research, please cite the appropriate source for each dataset.

For the Provo River data:

Hodson, T. O., Doore, K. J., Kenney, T. A., Over, T. M., & Yeheyis, M. B. (2024). Ratingcurve: A Python Package for Fitting Streamflow Rating Curves. Hydrology, 11(2), 14. https://doi.org/10.3390/hydrology11020014

For the Kaweah River data:

U.S. Geological Survey (2024). KAWEAH R BL TERMINUS DAM CA. U.S. Geological Survey National Water Information System database. Retrieved from https://waterdata.usgs.gov/ca/nwis/measurements/?site_no=11210950
[Note: Data query parameters - Site number: 11210950; Date range: 1969-02-03 to 1977-12-04; Only rated measurements were used; Excluded measurement with party_nm = "Har/Har"]

