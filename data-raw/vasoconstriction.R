library(readr)
library(dplyr)
library(stringr)

vasoconstriction <- read_delim(
  "https://web.stanford.edu/~hastie/CASI_files/DATA/vasoconstriction.txt",
  delim = " "
)

devtools::use_data(vasoconstriction)

# vasoconstriction
# library(ggplot2)
#
# ggplot(vasoconstriction, aes(x = volume, y = as.numeric(constriction))) +
#   geom_smooth(se = FALSE, method = "glm", family = "binomial") +
#   geom_point()
