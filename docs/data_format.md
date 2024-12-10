# Data Structure and Variable Descriptions

## Provo River Dataset (`provo.csv`)

| Variable   | Description                                               | Format/Units                      |
|------------|-----------------------------------------------------------|-----------------------------------|
| `datetime` | Timestamp of the measurement                              | `YYYY-MM-DD HH:MM:SS [UTC-07:00]` |
| `W`        | Water elevation (stage)                                   | Meters (m)                        |
| `Q`        | Discharge                                                 | Cubic meters per second (m³/s)    |
| `Q_sigma`  | Standard error of discharge measurements                  | Cubic meters per second (m³/s)    |

---

## Kaweah River Dataset (`kaweah.csv`)

| Variable     | Description                                                   | Format/Units                                     |
|--------------|---------------------------------------------------------------|--------------------------------------------------|
| `datetime`   | Timestamp of the measurement                                  | `YYYY-MM-DDTHH:MM:SSZ`                           |
| `W`          | Water elevation (stage)                                       | Meters (m)                                       |
| `Q`          | Discharge                                                     | Cubic meters per second (m³/s)                   |
| `Q_quality`  | Qualitative assessment of the discharge measurement accuracy  | Categories (`Excellent`, `Good`, `Fair`, `Poor`) |

---

