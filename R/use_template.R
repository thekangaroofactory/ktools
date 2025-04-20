

#' Copy Template File
#'
#' @param template the name of the template file to look for
#' @param name the name of the target file (default: same as template)
#' @param package the name of the package (to pass to system.file, default = "ktools")
#' @param path the path where to copy the template file (default: working directory)
#'
#' @export
#'
#' @examples use_template(template = "global.R")

use_template <- function(template, name = template, package = "ktools", path = getwd()){

  cat("- Copy", name, "from template: ")
  template <- system.file(name, package = package)
  file.copy(from = template, to = file.path(path, name))
  cat("done \n")

}
