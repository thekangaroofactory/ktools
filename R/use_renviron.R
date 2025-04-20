

#' Create .Renviron File
#'
#' @param path the path where to create the file (default set to working directory)
#'
#' @returns the output of the file.create call
#' @export
#'
#' @examples
#' \dontrun{
#' use_r_environ()
#' }

use_r_environ <- function(path = getwd()){

  cat("- Create .Renviron file: ")

  # -- init
  filename <- file.path(path, ".Renviron")

  # -- create file
  res <- file.create(filename)

  # -- check & write variable
  if(res)
    cat("done \n")
  else
    cat("KO \n")

  # -- return
  res

}
