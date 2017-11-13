library(readr)
library(dplyr)
library(stringr)

student_score <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/student_score.txt",
  delim = " "
)

devtools::use_data(student_score)
