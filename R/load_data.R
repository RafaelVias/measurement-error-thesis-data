
# Script for loading discharge-stage measurement data

# Install these required packages if needed
# install.packages("lubridate")
# install.packages("dplyr")


# Load Provo data
provo <- read.csv("data/provo.csv") |>
    dplyr::mutate(datetime = lubridate::ymd_hms(datetime))

# Load Kaweah data
kaweah <- read.csv("data/kaweah.csv") |>
    dplyr::mutate(datetime = lubridate::ymd_hms(datetime))

