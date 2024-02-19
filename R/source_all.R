

#' Source All Code
#'
#' @param path a character vector of the path to explore
#' @param verbose a logical value (default = TRUE). If FALSE, then minimal trace will be sent to the console
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
#' source_all("./R")
#' }


source_all <- function(path, verbose = TRUE){

  # -- env snapshot
  env_before <- utils::lsf.str()

  # -- Source modules & scripts
  cat("Source code... \n")
  for (nm in list.files(path, pattern = "*.R", full.names = TRUE, recursive = TRUE, include.dirs = FALSE))
  {
    if(verbose)
      cat("-- Loading from: ", nm, "\n")
    source(nm)
  }

  # -- env snapshot
  env_after <- utils::lsf.str()

  # -- notify
  cat(length(env_after) - length(env_before), "functions haved been attached to the environment. \n")

  # -- return
  length(env_after) - length(env_before)

}
