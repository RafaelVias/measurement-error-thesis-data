
# Script for fitting bdrc rating curves

# Download developmental version of bdrc package
devtools::install_github("sor16/bdrc", ref = "measurement-uncertainty")

# Load Provo and Kaweah datasets (creates two objects: provo and kaweah)
source("R/load_data.R")

