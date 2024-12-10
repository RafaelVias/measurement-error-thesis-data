
# Script for fitting rating curves with the bdrc package

# Install/load required packages
if (!require("devtools")) install.packages("devtools")
if (!require("ggplot2")) install.packages("ggplot2")

# Download developmental version of bdrc package
devtools::install_github("sor16/bdrc", ref = "measurement-uncertainty")

# Load data
source("R/load_data.R")
head(provo)    # Examine Provo River data
head(kaweah)   # Examine Kaweah River data

### Provo River analysis - Quantitative measurement-uncertainty data ###

# Fit classical generalized power-law model
gplm.provo <- bdrc::gplm(Q ~ W, provo)
plot(gplm.provo)
ggplot2::ggsave("Figures/rating_curves/gplm_rating_curve.png")

# Fit extended generalized power-law model (i.e., modeling measurement error)
gplm_me.provo <- bdrc::gplm(Q | Q_sigma ~ W, provo)
plot(gplm_me.provo)
ggplot2::ggsave("Figures/rating_curves/gplm_me_rating_curve.png")

# Model comparison
compare.provo <- bdrc::compare(gplm_me.provo, gplm.provo)
print(compare.provo)    # Print comparison results
plot(compare.provo)     # Plot comparison results
ggplot2::ggsave("Figures/rating_curves/model_comparison_provo.png")

### Kaweah River analysis - Qualitative measurement-uncertainty data ###

# Fit and compare all available models in the bdrc package
compare.kaweah <- bdrc::compare_all(Q | Q_quality ~ W, kaweah)
print(compare.kaweah)  # Print comparison results
plot(compare.kaweah)   # Plot comparison results
ggplot2::ggsave("Figures/rating_curves/model_comparison_kaweah.png")

# Note: For detailed documentation on functions used above:
# ?bdrc::gplm()
# ?bdrc::compare()
