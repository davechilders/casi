library(readr)
library(dplyr)
library(stringr)
library(tidyr)

galaxy <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/galaxy.txt",
  delim = " ",
  col_names = FALSE,
  skip = 1L
)

# clean up and draw names only
column_names <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/galaxy.txt",
  n_max = 1L,
  delim = " "
) %>% names()

column_names

names(galaxy)[-1] <- column_names
names(galaxy)[1] <- "magnitude"

galaxy_tidy <- galaxy %>%
  gather(log_redshift, count, -magnitude) %>%
  mutate(log_redshift = as.numeric(log_redshift))

devtools::use_data(galaxy_tidy)
