#' Normalize a table from a data_set
#'
#' @param Filename The name of the file to be normalized (must be in curr directory)
#' @param The number of factors above which to normalize.
#' @return The normalized data frame.
#' @examples
#' ellipse_perimeter(1, 1)
#' ellipse_perimeter(1)
#' @export


normalize <- function (filename, nid = 4) {
  # Read the data and store it in a variable
  data <- read_csv("testing_data.csv")
  if (class(data) != "data.frame") stop("Please input a data frame", call. = FALSE)
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

  for (number in count_column) {
    if(number >= 4){
     create_table (data[, i, drop = FALSE], data)
      i <- i + 1
    }
    i <- i +1
  }
}

create_tables <- function(dataframe,vector){

}
