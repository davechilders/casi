library(readr)
library(dplyr)
library(stringr)

cell <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/cellinfusion.txt",
  delim = " "
)

devtools::use_data(cell)
