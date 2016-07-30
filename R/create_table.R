#' Normalize a table from a data_set
#'
#' @param r Length of the semi-major axis.
#' @param e The eccentricity.
#' @return The length of the semi-minor axis of the ellipse with specified semi-major axis and eccentricity.
#' @examples
#' ellipse_perimeter(1, 1)
#' ellipse_perimeter(1)
#' @export


create_table <- function (new_column, data) {
  if (class(new_column) != "data.frame") stop("Please input a column as data frame to normalize", call. = FALSE)
  if (class(data) != "data.frame") stop("Please input a data frame", call. = FALSE)

  bookmaker$bookmaker_id <- 1:nrow(bookmaker)
  horse_data <- merge(bookmaker, horse_data)
  horse_data$Bookmaker <- NULL
}
