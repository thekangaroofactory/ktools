

#' Generate uuid
#'
#' @description
#' Wrapper around getTimestamp()
#'
#' @returns a numeric id
#' @export
#'
#' @examples
#' uuid()

uuid <- function(){

  getTimestamp(k = 1000000, digits = 0, silent = FALSE)

}
