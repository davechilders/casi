library(readr)
library(dplyr)
library(stringr)

baseball <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/baseball.txt",
  delim = " "
)

devtools::use_data(baseball)
