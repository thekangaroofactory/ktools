

#' Match Options
#'
#' @description
#' matches a named list against the one expected in function arguments
#'
#' @param fun the reference of the function, without ()
#' @param arg the name of the argument to test
#' @param value the value to test
#'
#' @returns The list of options, including missing ones
#' @export
#'
#' @examples
#' \dontrun{
#' match.option(foo, "options", list(a = 1))
#' }

match.option <- function(fun, arg, value){

    def_val <- eval(formals(fun)[[arg]])
    missing <- def_val[!names(def_val) %in% names(value)]
    value <- value[names(value) %in% names(def_val)]
    c(value, missing)

}
