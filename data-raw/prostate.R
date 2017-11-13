library(readr)
library(dplyr)
library(stringr)

prostz <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/prostz.txt",
  delim = " ",
  col_names = "z_value"
)

prostmat <- read_csv(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/prostmat.csv",
  col_names = c(paste0("control", 1:50), paste0("cancer", 1:52)),
  skip = 1L
)

prostate <- bind_cols(prostz, prostmat)

devtools::use_data(prostate)

