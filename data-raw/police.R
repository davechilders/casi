library(readr)
library(dplyr)
library(stringr)

police <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/police.txt",
  delim = " ",
  col_names = "z_score"
)

devtools::use_data(police)
