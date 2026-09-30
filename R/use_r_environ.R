

#' Create .Renviron File
#'
#' @param path the path where to create the file.
#'
#' @details
#' By default, `path` is set to the working directory.
#'
#' @seealso [update_r_environ()]
#'
#' @returns a logical (see [file.create()])
#' @export
#'
#' @examples
#' \dontrun{
#' use_r_environ()
#' }

use_r_environ <- function(path = getwd()){

  cat("- Create .Renviron file: ")

  # -- create file
  res <- file.create(file.path(path, ".Renviron"))

  # -- check
  if(res)
    cat("done \n")
  else
    cat("KO \n")

  # -- return
  res

}
