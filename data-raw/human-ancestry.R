library(readr)
library(dplyr)
library(stringr)

haplotype <- read_csv(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/haplotype.csv"
)

haplotype <- haplotype %>% rename(subject = X1)

devtools::use_data(haplotype)
