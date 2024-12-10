
# Script for loading discharge-stage measurement data

# Install/load required packages
if (!require("lubridate")) install.packages("lubridate")
if (!require("dplyr")) install.packages("dplyr")

# Load Provo data
provo <- read.csv("data/provo.csv") |>
    dplyr::mutate(datetime = lubridate::ymd_hms(datetime))

# Load Kaweah data
kaweah <- read.csv("data/kaweah.csv") |>
    dplyr::mutate(datetime = lubridate::ymd_hms(datetime))

