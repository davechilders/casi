library(readr)

# duplicated columnn headers
# see disclaimer on book's web page: https://web.stanford.edu/~hastie/CASI/data.html
leukemia_small <- read_csv(
  "http://web.stanford.edu/~hastie/CASI_files/DATA/leukemia_small.csv"
)

leukemia_big <- read_csv(
  "http://web.stanford.edu/~hastie/CASI_files/DATA/leukemia_big.csv"
)
