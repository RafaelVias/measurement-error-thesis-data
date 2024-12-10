# Script for loading discharge-stage measurement data

# Load required libraries
require(lubridate)

# Load Provo data
provo <- read.csv("data/provo.csv") |>
    mutate(datetime = ymd_hms(datetime))

# Load Kaweah data
kaweah <- read.csv("data/kaweah.csv") |>
    mutate(datetime = ymd_hms(datetime))

