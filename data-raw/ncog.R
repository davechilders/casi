library(readr)
library(dplyr)
library(stringr)

ncog <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/ncog.txt",
  delim = " "
)

devtools::use_data(ncog)
