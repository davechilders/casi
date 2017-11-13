library(readr)
library(dplyr)
library(stringr)

# Review Details for reading in Protein data.
protein_kernel <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/protein_kernel.txt",
  delim = " ",
  col_names = FALSE
)

protein_label <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/protein_label.txt",
  delim = " ",
  col_names = FALSE
)
