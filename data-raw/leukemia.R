library(readr)
library(tidyr)

# duplicated columnn headers
# see disclaimer on book's web page: https://web.stanford.edu/~hastie/CASI/data.html
leukemia_small <- read_csv(
  "http://web.stanford.edu/~hastie/CASI_files/DATA/leukemia_small.csv"
)

leukemia_big <- read_csv(
  "http://web.stanford.edu/~hastie/CASI_files/DATA/leukemia_big.csv"
)

# saveRDS(leukemia_small, "leukemia_small.rds")
# saveRDS(leukemia_big, "leukemia_big.rds")
#
# small <- readRDS("leukemia_small.rds")
# big <- readRDS("leukemia_big.rds")
#
# small %>% mutate()
# big
#
# small2 <- small %>%
#   mutate(gene =row_number()) %>%
#   gather(person, exp, -gene) %>%
#   mutate(k = "small")
#
# n_distinct(small2$gene)
# n_distinct(small2$person)
#
#
# big2 <- big %>%
#   mutate(gene = row_number()) %>%
#   gather(person, exp, -gene) %>%
#   mutate(k = "big")
#
# n_distinct(big2$gene)
# n_distinct(big2$person)
#
# full <- bind_rows(big2, small2)
#
# full2 <- full %>%
#   mutate(person = tolower(person)) %>%
#   mutate(person = case_when(
#     person == "all" ~ "all_0",
#     person == "aml" ~ "aml_0",
#     TRUE ~ person
#   )) %>%
#   separate(person, into = c("type", "subject"), sep = "_") %>%
#   mutate(
#     subject = as.numeric(subject) + 1,
#     subject = ifelse(type == "aml", subject + 47, subject)
#       ) %>%
#   select(k, everything())
#
# min_exp_df <- full2 %>%
#   group_by(gene, k) %>%
#   filter(exp == min(exp))
#
# max_exp_df <- full2 %>%
#   group_by(gene, k) %>%
#   filter(exp == max(exp))
#
# full2 %>% distinct(type, subject, k) %>%
#   arrange(k, type, subject) %>%
#   select(k, type, subject) %>%
#   data.frame
#
# library(ggplot2)
# ggplot(
#   full2 %>% filter(subject == 1),
#   aes(x = exp)
#   ) +
#   geom_histogram(binwidth = 0.1, color = "black", fill = "lightblue") +
#   facet_grid(k ~ type) +
#   labs(
#     title = "Person '1'",
#     subtitle = "Person '1' is not the same for 'big' vs 'small'\nIs the same for 'all' vs 'aml'"
#   )
#
# max_gene <- full2 %>%
#   arrange(gene, k, desc(exp)) %>%
#   distinct(gene, k, .keep_all = TRUE)
#
# max_gene %>% count(subject) %>% arrange(n)
#
# # maximum and minimum gene per person (for big and small)
# max_exp_person <- full2 %>%
#   arrange(subject, desc(exp)) %>%
#   distinct(subject, k, .keep_all = TRUE) %>%
#   mutate()
#
# min_exp_person <- full2 %>%
#   arrange(subject, exp) %>%
#   distinct(subject, k, .keep_all = TRUE)
#
# # one row per subject per (big/small) per extreme (min/max)
# extreme_exp <- max_exp_person %>% mutate(extreme = "max") %>%
#   bind_rows(
#     min_exp_person %>% mutate(extreme = "min")
# ) %>%
#   arrange(subject, k, extreme)
#
# # Take Max and Min for each Gene, over subjects
# max_exp <- full2 %>%
#   arrange(k, gene, desc(exp)) %>%
#   distinct(k, gene, .keep_all = TRUE) %>%
#   rename(
#     max_exp = exp,
#     max_type = type,
#     max_subject = subject
#     )
#
# min_exp <- full2 %>%
#   arrange(k, gene, exp) %>%
#   distinct(k, gene, .keep_all = TRUE) %>%
#   rename(
#     min_exp = exp,
#     min_type = type,
#     min_subject = subject
#   )
#
#
# max_exp %>% left_join(min_exp, by = c("k", "gene"))

