

#' Source Code
#'
#' @param path a character vector of the path to explore
#' @param verbose a logical value (default = FALSE). If TRUE, then details about sourced files will be sent to the console
#'
#' @return an integer of how many functions have been attached to the environment
#' @export
#'
#' @details
#' Given path is explored using list.files with "*.R" pattern, and recursive = TRUE
#' All listed files are loaded using source()
#'
#' @examples
#' \dontrun{
#' source_code("./R")
#' }


source_code <- function(path, verbose = FALSE){

  # -- env snapshot
  env_before <- utils::lsf.str(envir = globalenv())

  if(verbose)
    cat("Source code... \n")

  # -- Source files
  for (nm in list.files(path, pattern = "*.R", full.names = TRUE, recursive = TRUE, include.dirs = FALSE))
  {
    if(verbose)
      cat("-- Loading from: ", nm, "\n")
    source(nm)
  }

  # -- env snapshot
  env_after <- utils::lsf.str(envir = globalenv())

  # -- notify & return
  nb_attached <- length(env_after) - length(env_before)
  message(nb_attached, " function(s) haved been attached to the environment. \n")

}
