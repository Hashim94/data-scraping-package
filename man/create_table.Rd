% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_table.R
\name{create_table}
\alias{create_table}
\title{Normalize a table from a data_set}
\usage{
create_table(dataframe, vector, nid = 4)
}
\arguments{
\item{dataframe}{non-normalized dataframe sorted from columns with largest number of factors to smallest}

\item{vector}{The vector (sorted non-increasing) that shows uniqueness of each table}
}
\value{
None, but creates the new normalized tables in the current directory.
}
\description{
Normalize a table from a data_set
}
\examples{
create_table(dataframe, vector)
}

