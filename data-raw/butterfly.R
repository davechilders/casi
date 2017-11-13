library(readr)
library(dplyr)
library(stringr)

butterfly <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/butterfly.txt",
  delim = " "
)

devtools::use_data(butterfly)
