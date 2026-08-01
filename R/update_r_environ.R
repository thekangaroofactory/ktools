
#' Update Renviron File
#'
#' @description
#' The function adds a variable to the project .Renviron file.
#'
#' @param path the path of the .Renviron file (default is working directory)
#' @param key the name of the variable (default = DEBUG)
#' @param value the value to be assigned to the variable (default = "TRUE")
#'
#' @returns TRUE if success, else FALSE
#' @export
#'
#' @examples
#' \dontrun{
#' update_r_environ(key = "MY_VAR", value = "my_value")
#' }

update_r_environ <- function(path = getwd(), key = "DEBUG", value = "TRUE"){

  # -- init
  filename <- file.path(path, ".Renviron")
  cat("- Add variable to .Renviron file: ")

  # -- try
  tryCatch({

    # -- write content
    write(paste0(key, "=", value), file = filename, append = T)
    cat("done \n")

    # -- return
    TRUE},

  error = function(e) {

    # -- log & print error
    cat("KO \n")
    print(e)

    # -- return
    FALSE})

}
