library(readr)

kidney <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/kidney.txt",
  delim = " "
  )

devtools::use_data(kidney)


