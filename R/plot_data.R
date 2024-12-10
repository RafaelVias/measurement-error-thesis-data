
# Load required libraries
library(ggplot2)

# Load the datasets
source("R/load_data.R")

# Define custom colors
quality_colors <- c( "Excellent" = "#1a9850",
                     "Good"      = "#91cf60",
                     "Fair"      = "#fee05d",
                     "Poor"      = "#d73027"
)

# ---- Provo River - Stage measurements over time ----
ggplot(provo, aes(x = datetime, y = W)) +
    geom_segment(aes(xend = datetime, yend = 0), color = "gray40", alpha = .7) +
    geom_point(fill = "steelblue", shape = 21, size = 2) +
    labs(
        title = "Stage measurements over time - Provo River",
        x = "Date",
        y = expression("Stage "~"["~m~"]")
    ) +
    scale_y_continuous(expand = expansion(mult = c(0,0.1))) +
    theme_classic()
ggsave("Figures/data/provo_stage_over_time.png")

# ---- Provo River - Discharge measurements over time ----
ggplot(provo, aes(x = datetime, y = Q)) +
    geom_segment(aes(xend = datetime, yend = 0), color = "gray40", alpha = .7) +
    geom_point(fill = "steelblue", shape = 21, size = 2) +
    labs(
        title = "Discharge measurements over time - Provo River",
        x = "Date",
        y = expression("Discharge "~"["~m^3/s~"]")
    ) +
    scale_y_continuous(expand = expansion(mult = c(0,0.1))) +
    theme_classic()
ggsave("Figures/data/provo_discharge_over_time.png")

# ---- Provo River - Discharge and stage relationship ----
ggplot(provo, aes(x = Q, y = W)) +
    geom_point(fill = "steelblue", shape = 21, size = 2, alpha = .8) +
    labs(
        title = "Discharge-stage relationship - Provo River",
        x = expression("Discharge "~"["~m^3/s~"]"),
        y = expression("Stage "~"["~m~"]")
    ) +
    theme_classic()
ggsave("Figures/data/provo_discharge_stage_relationship.png")

# ---- Provo River - Relative standard error of discharge measurements ----
ggplot(provo, aes(x = Q, y = Q_sigma / Q)) +
    geom_segment(aes(xend = Q, yend = 0), color = "gray40", alpha = .7) +
    geom_point(fill = "steelblue", shape = 21, size = 2, alpha = .8) +
    labs(
        title = "Relative standard errors (RSE) of discharge measurements (Q) - Provo River",
        x = expression(Q*"["*m^3/s*"]"),
        y = expression("RSE = "~se(Q)/Q)
    ) +
    scale_y_continuous(expand = expansion(mult = c(0,0.1))) +
    theme_classic()
ggsave("Figures/data/provo_discharge_RSE.png")

# ---- Kaweah River - Stage measurements over time ----
ggplot(kaweah, aes(x = datetime, y = W)) +
    geom_segment(aes(xend = datetime, yend = 0), color = "gray40", alpha = .7) +
    geom_point(fill = "steelblue", shape = 21, size = 2) +
    labs(
        title = "Stage measurements over time - Kaweah River",
        x = "Date",
        y = expression("Stage "~"["~m~"]")
    ) +
    scale_y_continuous(expand = expansion(mult = c(0,0.1))) +
    theme_classic()
ggsave("Figures/data/kaweah_stage_over_time.png")

# ---- Kaweah River - Discharge measurements over Time ----
ggplot(kaweah, aes(x = datetime, y = Q)) +
    geom_segment(aes(xend = datetime, yend = 0), color = "gray40", alpha = .7) +
    geom_point(fill = "steelblue", shape = 21, size = 2) +
    labs(
        title = "Discharge measurements over time - Kaweah River",
        x = "Date",
        y = expression("Discharge "~"["~m^3/s~"]")
    ) +
    scale_y_continuous(expand = expansion(mult = c(0,0.1))) +
    theme_classic()
ggsave("Figures/data/kaweah_discharge_over_time.png")

# ---- Kaweah River - Discharge and stage relationship ----
ggplot(kaweah, aes(x = Q, y = W)) +
    geom_point(fill = "steelblue", shape = 21, size = 2, alpha = .8) +
    labs(
        title = "Discharge-stage relationship - Kaweah River",
        x = expression("Discharge "~"["~m^3/s~"]"),
        y = expression("Stage "~"["~m~"]")
    ) +
    theme_classic()
ggsave("Figures/data/kaweah_discharge_stage_relationship.png")

# ---- Kaweah River - Discharge measurement quality ----
ggplot(kaweah, aes(x = datetime, y = Q, fill = factor(Q_quality, levels = names(quality_colors)))) +
    geom_segment(aes(xend = datetime, yend = 0), color = "gray40", alpha = .7) +
    geom_point(, shape = 21, size = 2, alpha = .8) +
    scale_fill_manual(values = quality_colors) +
    labs(
        title = "Discharge measurement quality over time - Kaweah River",
        x = "Date",
        y = expression("Discharge "~"["~m^3/s~"]"),
        fill = "Discharge\nMeasurement\nQuality"
    ) +
    scale_y_continuous(expand = expansion(mult = c(0,0.1))) +
    theme_classic()
ggsave("Figures/data/kaweah_discharge_measurement_quality.png")

