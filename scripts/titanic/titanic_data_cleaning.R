# Cleaning Titanic Data set

# loading the libraries
library(tidyverse)

# load the raw data
titanic <- read_csv("data/raw/titanic/titanic_data.csv", show_col_types = FALSE)

# structure of data
str(titanic)

# summary of data
summary(titanic)

# length of data
titanic %>%
  nrow()

# calculate percentage of NAs per column
titanic %>%
  summarise(across(everything(), ~ mean(is.na(.)) * 100))

# total NAs per column
titanic %>%
  summarise(across(everything(), ~ sum(is.na(.))))
