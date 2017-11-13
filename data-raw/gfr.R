library(readr)
library(dplyr)
library(stringr)

gfr <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/gfr.txt",
  delim = " ",
  col_names = "rate"
)

devtools::use_data(gfr)
