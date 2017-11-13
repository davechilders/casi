library(readr)
library(dplyr)
library(stringr)

# why is one column header '000'
spam <- read_csv(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/SPAM.csv",
  guess_max = 4601L
)

glimpse(spam)

devtools::use_data(spam)


#
# read_csv("0\n5\n10")
# read_csv("0,money\n0.43,6\n1.16,10")
