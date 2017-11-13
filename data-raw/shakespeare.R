library(readr)
library(dplyr)
library(stringr)

shakespeare <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/shakespeare.txt",
  delim = " "
)

devtools::use_data(shakespeare)
