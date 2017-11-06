library(readr)


als <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/ALS.txt",
  delim = " "
  )

devtools::use_data(als)
