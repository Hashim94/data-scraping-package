#' Normalize a table from a data_set
#'
#' @param dataframe non-normalized dataframe sorted from columns with largest number of factors to smallest
#' @param vector The vector (sorted non-increasing) that shows uniqueness of each table
#' @return None, but creates the new normalized tables in the current directory.
#' @examples
#' create_table(dataframe, vector)
#' @export


create_table <- function (dataframe,vector,nid=4) {
  #Base Case: If the next column is <= nid return
  if(vector[1] <= nid){
    return
  }
  else{
    #Get first column of the dataframe
    new_table <- dataframe[,1, drop = FALSE]
    #Create an iD column
    new_table$column_id <- seq(1:nrow(column_table))
    filename <- paste(colnames(dataframe)[1],".csv")
    #Write the new table in our cur directory
    write.csv(new_table, file=filename)
    #Delete the column and the entry from the vector
    dataframe$colnames(dataframe)[1] <- NULL
    vector[[1]] <- NULL
    #Recurse on the function
    create_table(dataframe,vector)
  }
}

