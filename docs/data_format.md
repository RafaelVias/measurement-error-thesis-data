# Data Structure and Variable Descriptions

## Provo River Dataset (`provo_natural.csv`)
- **Description**: Contains discharge-stage measurement data for the Provo River.

### Variables
| Variable   | Description                                               | Format/Units                      |
|------------|-----------------------------------------------------------|-----------------------------------|
| `datetime` | The timestamp of the measurement.                         | `YYYY-MM-DD HH:MM:SS [UTC-07:00]` |
| `stage`    | Water elevation (stage).                                  | Meters (m)                        |
| `q`        | Discharge.                                                | Cubic meters per second (m³/s)    |
| `q_sigma`  | Standard error of discharge measurements.                 | Cubic meters per second (m³/s)    |

---

## Kaweah River Dataset (`kaweah.csv`)
- **Description**: Contains discharge-stage measurement data for the Kaweah River.

### Variables
| Variable     | Description                                                   | Format/Units                                     |
|--------------|---------------------------------------------------------------|--------------------------------------------------|
| `datetime`   | The timestamp of the measurement.                             | `YYYY-MM-DDTHH:MM:SSZ`                           |
| `Q`          | Discharge.                                                    | Cubic meters per second (m³/s)                   |
| `W`          | Water width.                                                  | Meters (m)                                       |
| `Q_quality`  | Qualitative assessment of the discharge measurement accuracy. | Categories (`Excellent`, `Good`, `Fair`, `Poor`) |

---

