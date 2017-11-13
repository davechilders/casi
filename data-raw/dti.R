library(readr)
library(dplyr)
library(stringr)

dose <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/doseresponse.txt",
  delim = " "
)

devtools::use_data(dose)
