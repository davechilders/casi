library(readr)
library(dplyr)
library(stringr)

cholesterol <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/cholesterol.txt",
  delim = " "
)

devtools::use_data(cholesterol)
