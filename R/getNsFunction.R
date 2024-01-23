

#' Trick to solve the use of :: for package functions in do.call()
#'
#' @param x the name of the function, most probably as pkg::fun()
#'
#' @return the value of the exported function name in namespace pkg
#' @export
#'
#' @examples
#' getNsFunction("pkg::fun")
#'


getNsFunction <- function(x) {

  if(length(grep("::", x)) > 0) {

    parts <- strsplit(x, "::")[[1]]
    getExportedValue(parts[1], parts[2])

  } else {

    x
  }

}
