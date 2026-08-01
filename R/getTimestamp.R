

#' Compute Timestamp
#'
#' @description
#' Compute a numeric timestamp to be used as UUID.
#'
#' @param k a numeric (default = 1000), used as a multiplication factor
#' @param digits an integer (default = 0) passed to round() function
#' @param silent an optional (default = FALSE) logical. If TRUE, no traces will go to the console
#'
#' @details
#' The function returns a unique numeric up to the millisecond.
#' Output should not be used as a unique id if users / systems may call it more than
#' one time per millisecond.
#'
#' @return a numeric
#' @export
#'
#' @seealso [uuid()]
#'
#' @examples
#' # compute up to the second timestamp
#' getTimestamp(k = 1, digits = 0)
#'
#' # compute up to the millisecond timestamp
#' getTimestamp(k = 1000)
#' getTimestamp()
#'

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
