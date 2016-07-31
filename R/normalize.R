#' Normalize a table from a data_set
#'
#' @param Filename The name of the file to be normalized (must be in current directory).
#' @param nid The number of factors above which to normalize.
#' @return The normalized data frame.
#' @examples
#' dataScrapingProject_normalize ("testing_data.csv", 5)
#' dataScrapingProject_normalize ("testing_data.csv")
#' @export


normalize <- function (data , nid = 4) {
  # Read the data and store it in a variable
  # if (class(data) != "tbl_df") stop("Please input a data frame", call. = FALSE)
  if (class(nid) != "numeric") stop("Please input an integer for normalizarion factor", call. = FALSE)

  # Make sure data is unique
  unique_data <- sapply (data, unique)

  # Count number of factors in each column
  count_column <- sapply (unique_data, length)

  # Reorder the vector of lengths form largest to smallest
  (reordered_vector <- sort(count_column, decreasin = TRUE))

  # Get the names of the ordered vector
  names <- names(reordered_vector)

  # reorder the data from column with largest values to smallest
  reordered_data <- data[,names]

  # create the data-tables
  normalized_table <- create_table (reordered_data, reordered_vector, nid)

  View(normalized_table)
}
