#' Normalize a table from a data_set
#'
#' @param dataframe non-normalized dataframe sorted from columns with largest number of factors to smallest
#' @param list The list (sorted non-increasing) that shows uniqueness of each table
#' @return None, but creates the new normalized tables in the current directory.
#' @examples
#' create_table(dataframe, vector)
#' @export


create_table <- function (dataframe, len_vector,nid=4, merging_dataframe = dataframe) {
  #Base Case: If the next column is <= nid return
  if(len_vector[1] <= nid){
    return (merging_dataframe)
    }
  else{
    #Get first column of the dataframe
    new_table <- dataframe[,1, drop = FALSE]
    new_table <- unique(new_table)
    #Create an iD column
    col_to_delete <-colnames(dataframe)[1]
    new_column_name <- paste(col_to_delete,"id",sep = "_")
    new_table[new_column_name] <- 1:nrow(new_table)
    filename <- paste(colnames(new_table)[1],".csv",sep="")
    #Write the new table in our cur directory
    write.csv(new_table, file=filename)
    #Merge new column with original data
    merging_dataframe <- merge(merging_dataframe, new_table)
    #Delete the column and the entry from the vector
    dataframe[col_to_delete] <- NULL
    merging_dataframe[col_to_delete] <- NULL
    len_vector[col_to_delete] <- NULL
    #Recurse on the function
    returned_Dataframe <- create_table(dataframe ,len_vector, nid, merging_dataframe)
    return(returned_Dataframe)
  }
}

