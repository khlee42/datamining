library(tidyverse)
library(openintro)
library(caret)
library(caTools)

email <- email %>%
    mutate(
        spam = factor(ifelse(spam == 1, "S", "NS")),
        re_subj = factor(re_subj)
    ) %>%
    drop_na()

set.seed(123)
mod_gbms <- train(
  spam ~ .,
  data = email,
  method = "gbm",
  trControl = trainControl(
    method = "cv",
    number = 10
  ),
    tuneLength = 10,
  verbose = FALSE
)
