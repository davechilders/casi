library(readr)
library(dplyr)
library(stringr)

nodes <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/nodes.txt",
  delim = " "
)

devtools::use_data(nodes)
