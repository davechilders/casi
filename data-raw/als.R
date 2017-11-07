library(readr)
library(dplyr)
library(stringr)

als <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/ALS.txt",
  delim = " "
  )

devtools::use_data(als)

als2 <- als

# How to remove trailing underscores from column names
# practice regex...
names(als2) <- tolower(names(als2)) %>%
  str_replace_all("\\.", "_") %>%
  str_replace_all("_{2,}", "_") %>%
  str_replace_all("_$", "")

devtools::use_data(als2)
