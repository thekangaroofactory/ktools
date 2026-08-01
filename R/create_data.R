
#' Create Data
#'
#' @description
#' Builds an empty data.frame from a vector of colClasses.
#'
#' @param colClasses a named vector of classes to be used to build the data.frame.
#'
#' @details
#' The names of the vector will be used to name the columns and the values
#' to cast the columns to the given classes.
#'
#' If NA is given as input for colClasses, then read.table() will return
#' an empty data.frame (0 obs. of 0 variables)
#'
#' @return a data.frame
#' @export
#'
#' @examples
#' create_data(colClasses = c(id = "numeric", date = "Date", comment = "character"))

# -- function definition
create_data <- function(colClasses){

  # -- test argument
  # adding this test to avoid getting a warning from read.table #1
  if(anyNA(colClasses))
    return(data.frame())

  # -- Build data.frame & return
  data <- utils::read.table(text = "",
                            colClasses = colClasses,
                            col.names = names(colClasses))

}
