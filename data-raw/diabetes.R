library(readr)
library(dplyr)
library(stringr)

diabetes <- read_csv("https://web.stanford.edu/~hastie/CASI_files/DATA/diabetes.csv")

devtools::use_data(diabetes)
