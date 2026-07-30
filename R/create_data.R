
#' Create Data
#'
#' @param colClasses a named vector of classes to be used to build the data.frame.
#' names will be used to name the columns, values will be used to cast them to the given classes.
#'
#' @details
#' If NA is given as input for colClasses, then read.table() will return an empty data.frame (0 obs. of 0 variables)
#'
#' @return a data.frame, output of read.table() function
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

  # -- Get colnames
  col.names <- names(colClasses)

  # -- Build data.frame & return
  data <- utils::read.table(text = "",
                            colClasses = colClasses,
                            col.names = col.names)

}
