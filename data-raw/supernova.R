library(dplyr)
library(stringr)
library(tibble)

supernova <- read.table("http://web.stanford.edu/~hastie/CASI_files/DATA/supernova.txt", header=TRUE)
supernova <- supernova %>% rownames_to_column(var = "supernova")
names(supernova) <- tolower(names(supernova))
supernova

devtools::use_data(supernova)
