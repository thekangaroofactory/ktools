

#' @title Compute timestamp
#' @description Compute a numeric timestamp to be used as UUID.
#'
#' @param k a numeric (default = 1000), used as a multiplication factor
#' @param digits an integer (default = 0) passed to round() function
#' @param silent an optional (default = FALSE) logical. If TRUE, no traces will go to the console
#'
#' @return a numeric
#' @export getTimestamp
#'
#' @examples
#' ## compute up to the second timestamp
#' getTimestamp(k = 1, digits = 0)
#'
#' ## compute up to the millisecond timestamp
#' getTimestamp(k = 1000)
#' getTimestamp()
#'


# -- function definintion
getTimestamp <- function(k = 1000, digits = 0, silent = FALSE)
{

  # compute timestamp
  timestamp <- round(as.numeric(Sys.time()) * k, digits = digits)

  # trace
  if(!silent)
    catl("[getTimestamp] timestamp = ", as.character(timestamp))

  # return
  timestamp

}
