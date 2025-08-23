

#' Simple Wrapper Around Cat
#'
#' @param ... R objects as defined in \link[base]{cat}
#' @param level a numeric value indicating the level of trace
#' @param debug an optional (usually omitted) value to indicate the level of trace to be displayed
#' @param newline a logical. If TRUE (default), new line \code{"\n"} will be added
#'
#' @description
#' This wrapper function aims at enabling a trace level mechanism that relies
#' on the \link[base]{cat} function.
#'
#' @details
#' The goal is to provide a trace level mechanism that can be disabled in a
#' production context (as printing output to the console or file is costly).
#'
#' The different levels are left flexible.
#'
#' By default, \code{debug} is set to \code{Sys.getenv("TRACE_LEVEL")}
#' If the environment variable is not set, no output will be produced (silent mode)
#' When the variable is set, the function will pass calls with level <= debug
#' to the original \link[base]{cat} function.
#'
#' @export
#'
#' @examples
#' catl("Awesome message here")
#' catl("Awesome message here", debug = 1)
#' catl("Awesome message here", level = 2, debug = 1)
#' catl("Awesome message here", level = 1, debug = 2)
#'

catl <- function(..., level = 1, debug = Sys.getenv("TRACE_LEVEL"), newline = TRUE){

  if(debug != "")
    if(level <= as.numeric(debug))
      base::cat(c(..., ifelse(newline, "\n", "")))

}
