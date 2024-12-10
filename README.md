# Discharge Measurement Data with Uncertainty

This repository contains the datasets analyzed in the Master's thesis "Response Measurement Uncertainty Data in Bayesian Gaussian-Gaussian Models" (2025). The data consists of paired discharge-stage measurements from two United States Geological Survey (USGS) gauging stations, along with their associated discharge measurement uncertainties.

# Dataset Overview

The repository includes data from two distinct gauging stations that exemplify different approaches to reporting measurement uncertainty in discharge observations.
The Provo River dataset (Utah, USGS 10154200) contains 22 measurements from 1986 to 2021, with discharge measurement uncertainty reported quantitatively as standard errors. 
The Kaweah River dataset (California, USGS 11210950) includes 107 measurements from 1969 to 1977, with measurement quality documented through the USGS qualitative rating system. This system categorizes measurements as Excellent (±2%), Good (±5%), Fair (±8%), or Poor (>8%) based on measurement conditions and equipment used.

# Repository Structure

The repository is organized as follows:

- data/: Contains the raw measurement data in CSV format for both rivers
- docs/: Provides detailed documentation about data formats and measurement uncertainty
- examples/: Includes R scripts demonstrating data loading and visualization

# Usage

The data can be accessed and analyzed using standard R function. Example scripts are provided in the examples/ directory to demonstrate proper data loading and ways to visualize the data.

# Citation

If you use this data in your research, please cite the appropriate source for each dataset:

For the Provo River data:
Hodson, T. O., Doore, K. J., Kenney, T. A., Over, T. M., & Yeheyis, M. B. (2024). Ratingcurve: A Python Package for Fitting Streamflow Rating Curves. Hydrology, 11(2), 14. https://doi.org/10.3390/hydrology11020014

For the Kaweah River data:
U.S. Geological Survey (2024). KAWEAH R BL TERMINUS DAM CA. U.S. Geological Survey National Water Information System database. Retrieved from https://waterdata.usgs.gov/ca/nwis/measurements/?site_no=11210950
[Note: Data query parameters - Site number: 11210950; Date range: 1969-02-03 to 1977-12-04; Only rated measurements were used; Excluded measurement with party_nm = "Har/Har"]

