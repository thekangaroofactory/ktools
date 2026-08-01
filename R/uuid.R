

#' Generate uuid
#'
#' @description
#' Wrapper around getTimestamp()
#'
#' @details
#' By default \link[getTimestamp()] gives a value up to the millisecond.
#'
#' In some use cases, for example when a sequence of ids need to be generated
#' grammatically, multiple identical values will be generated within the same
#' millisecond.
#'
#' This wrapper calls [getTimestamp()] with `k = 1000000` to get a value up to
#' the microsecond. This is usually enough the get unique value for example
#' when it's called from lapply.
#'
#' @returns a numeric id
#' @export
#'
#' @examples
#' uuid()
#'
#' # showing what the function is trying to solve
#' any(duplicated(replicate(100, getTimestamp())))
#' any(duplicated(replicate(100, uuid())))

uuid <- function(){

  getTimestamp(k = 1000000, digits = 0, silent = FALSE)

}
