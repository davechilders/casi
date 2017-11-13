library(readr)
library(dplyr)
library(stringr)

insurance <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/insurance.txt",
  delim = " "
)

devtools::use_data(insurance)
