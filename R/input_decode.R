

#' Decode Input Value
#'
#' @description
#' Split an input value with pattern "namespace-action_value" into a named vector.
#'
#' @param x the (input) value to decode.
#'
#' @details
#' The function is used together with the [action_link()] / [onclick_event()] functions.
#'
#' @returns a named vector c(namespace, action, value) or c(action, value)
#' @export
#'
#' @examples
#' input_decode("module1-add_leg_896")
#' input_decode("add_leg_896")

input_decode <- function(x){

  # -- split by '-'
  x <- unlist(strsplit(x, split = "-"))

  # -- split by '_'
  y <- unlist(strsplit(x[[length(x)]], "_"))

  # -- return
  c(
    namespace = if(length(x) > 1) x[[1]] else NULL,
    action = paste(y[-length(y)], collapse = "_"),
    value = gsub("^.*_", "", x[[length(x)]]))

}
