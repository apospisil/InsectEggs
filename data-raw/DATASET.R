
library(mosaic)
library(tidyverse)
library(knitr)
library(kableExtra)

Codebook <- tribble(
  ~Name, ~Description,
  "ar", "Insect egg aspect ratio (length / width)",
  "asym",      "Insect egg asymmetry",
  "curv",   "Insect egg curvature",
  "family",         "Insect family (taxonomic rank)",
  "genus",     "Insect genus (taxonomic rank)",
  "name",        "Insect name",
  "order",  "Insect order (taxonomic rank)",
  "species", "Insect species (taxonomic rank)",
  "vol",         "Insect egg volume in mm^3",
  "year",        "Year of publication of a paper from which egg dimensions were extracted"
)
knitr::kable(Codebook) %>%
  kable_styling(latex_options = c("striped", "HOLD_position"))


insect_eggs <- read.csv(file = 'dataviz_egg_database.csv', header = TRUE, sep = "\t")

insect_eggs <- insect_eggs %>%
  select(
    ar, asym, curv, family, genus,
    name, order, species, vol, year
  ) %>%
  rename(
    aspect_ratio = ar, asymmetry = asym,
    curvature = curv, volume = vol
  ) %>%
  na.omit()
InsectEggs <- insect_eggs

usethis::use_data(InsectEggs, overwrite = TRUE)

