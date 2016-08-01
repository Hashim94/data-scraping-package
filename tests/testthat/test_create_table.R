library(dataScrapingProject)

context("Normalize")

test_that("Normalize Horse Table", {
  dataframe <- read_csv("/Users/sebastianalvarado/iXperience/Course/Week1/Project1/dataScrapingProject/R/dataSets/testing_data.csv")
  found_dataframe <- normalize(dataframe)
  expected_dataframe <- read_csv("/Users/sebastianalvarado/iXperience/Course/Week1/Project1/dataScrapingProject/R/dataSets/normalize.csv")
  expect_equal(found_dataframe, expected_dataframe)
})

te
