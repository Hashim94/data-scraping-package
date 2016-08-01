library(dataScrapingProject)
library(readr)

context("Normalize")

test_that("Normalize Horse Table", {
  dataframe <- read_csv("/Users/sebastianalvarado/iXperience/Course/Week1/Project1/dataScrapingProject/R/dataSets/testing_data.csv")
  found_dataframe <- normalize(dataframe)
  expect_success(normalize(dataframe))
})

