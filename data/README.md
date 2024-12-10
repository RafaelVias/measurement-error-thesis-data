# Discharge-Stage Measurement Data 

## Dataset Overview
The repository includes data from two gauging stations that exemplify different approaches to reporting measurement uncertainty in discharge observations.

The Provo River dataset (Utah, USGS 10154200) contains 22 measurements from 1986 to 2021, with discharge measurement uncertainty reported quantitatively as standard errors. 

The Kaweah River dataset (California, USGS 11210950) includes 107 measurements from 1969 to 1977, with measurement quality documented through the USGS qualitative rating system (Turnipseed et al., 2010). This system categorizes measurements based on their quality using a letter code system, described below.

#### USGS Discharge Measurement Quality Codes
| Code           | Description                              |
|----------------|------------------------------------------|
| E (Excellent)  | The data is within 2% of the actual flow |
| G (Good)       | The data is within 5% of the actual flow |
| F (Fair)       | The data is within 8% of the actual flow |
| P (Poor)       | The data are >8% of the actual flow      |

------

## Provo River Dataset (`provo.csv`)
| Variable   | Description                                               | Format/Units                      |
|------------|-----------------------------------------------------------|-----------------------------------|
| `datetime` | Timestamp of the measurement                              | `YYYY-MM-DD HH:MM:SS [UTC-07:00]` |
| `W`        | Water elevation (stage)                                   | Meters (m)                        |
| `Q`        | Discharge                                                 | Cubic meters per second (m³/s)    |
| `Q_sigma`  | Standard error of discharge measurements                  | Cubic meters per second (m³/s)    |

## Kaweah River Dataset (`kaweah.csv`)
| Variable     | Description                                                   | Format/Units                                     |
|--------------|---------------------------------------------------------------|--------------------------------------------------|
| `datetime`   | Timestamp of the measurement                                  | `YYYY-MM-DDTHH:MM:SSZ`                           |
| `W`          | Water elevation (stage)                                       | Meters (m)                                       |
| `Q`          | Discharge                                                     | Cubic meters per second (m³/s)                   |
| `Q_quality`  | USGS measurement quality code                                 | Code (`Excellent`, `Good`, `Fair`, `Poor`)       |

------

# Data Citation

If you use this data in your research, please cite the appropriate source for each dataset.

Provo River data:

Hodson, T. O., Doore, K. J., Kenney, T. A., Over, T. M., & Yeheyis, M. B. (2024). Ratingcurve: A Python Package for Fitting Streamflow Rating Curves. Hydrology, 11(2), 14. https://doi.org/10.3390/hydrology11020014

Kaweah River data:

U.S. Geological Survey (2024). KAWEAH R BL TERMINUS DAM CA. U.S. Geological Survey National Water Information System database. Retrieved from https://waterdata.usgs.gov/ca/nwis/measurements/?site_no=11210950
[Note: Data query parameters - Site number: 11210950; Date range: 1969-02-03 to 1977-12-04; Only rated measurements were used; Excluded measurement with party_nm = "Har/Har"]

------

# References

Turnipseed, D.P., and Sauer, V.B., 2010, Discharge measurements at gaging stations: U.S. Geological Survey Techniques and Methods book 3, chap. A8, 87 p.

