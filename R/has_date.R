

#' Find Date Column
#'
#' @param x a data.frame object
#' @param single a logical (default TRUE) if it should return only the first column
#'
#' @returns the name of the column(s) or NA if no date column is found
#' @export
#'
#' @examples
#' has_date(data.frame(date = Sys.Date()))
#' has_date(data.frame(date = Sys.Date(), update = Sys.Date()), single = FALSE)
#' has_date(data.frame(date = Sys.Date(), update = Sys.Date()), single = TRUE)

has_date <- function(x, single = TRUE){

  if(single)
    names(x)[sapply(x, FUN = function(x) inherits(x, "POSIXct") | inherits(x, "Date"))][1]
  else
    names(x)[sapply(x, FUN = function(x) inherits(x, "POSIXct") | inherits(x, "Date"))]

}
