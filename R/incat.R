

#' Indented Cat
#'
#' @param x R objects (see cat function for details)
#' @param sep a character vector of strings to append after each element (default is "").
#'
#' @export
#'
#' @details
#' When the function detects a direct call (i.e. not from another function), then it basically just do cat
#' otherwise it finds the calling function name and print indented output based on callstack position.
#'
#' @examples
#' incat("this message")


incat <- function(x, sep = ""){

  # -- test direct call
  isDirect <- length(sys.calls()) == 1

  # -- init
  indent <- ""
  module <- ""

  # -- prepare
  if(!isDirect){

    indent <- rep("   ", length(sys.calls()) - 1)
    module <- paste0("[", gsub(r"{\s*\([^\)]+\)}", "", deparse(sys.calls()[[sys.nframe() - 1]])), "] ")

  }

  cat(indent, module, x, "\n", sep = sep)

}

