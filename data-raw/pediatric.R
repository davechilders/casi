library(readr)
library(dplyr)
library(stringr)

pediatric <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/pediatric.txt",
  delim = " "
)

devtools::use_data(pediatric)
