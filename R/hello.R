#' Normalize a table from a data_set
#'
#' @param filename The name of the file to be normalized(must be in curr directory)
#' @param e The eccentricity.
#' @return The length of the semi-minor axis of the ellipse with specified semi-major axis and eccentricity.
#' @examples
#' ellipse_perimeter(1, 1)
#' ellipse_perimeter(1)
#' @export

class(data[, "Race", drop = FALSE])

normalize <- function (filename,nid=4) {
  data <- read_csv(filename)
  if (class(data) != "data.frame") stop("Please input a data frame", call. = FALSE)
  unique_data <- sapply (data, unique)
  count_column <- sapply (unique_data, length)

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
