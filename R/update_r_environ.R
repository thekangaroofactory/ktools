

#' Update .Renviron File
#'
#' @description
#' Add an environment variable to the project.
#'
#' @param path the path to the .Renviron file (default is working directory).
#' @param key a character string for the name of the variable.
#' @param value the value to be assigned to the variable.
#'
#' @seealso [use_r_environ()]
#'
#' @returns a logical (TRUE if success, else FALSE)
#' @export
#'
#' @examples
#' \dontrun{
#' update_r_environ(key = "MY_VAR", value = "my_value")
#' }

update_r_environ <- function(path = getwd(), key, value){

  cat("- Add variable to .Renviron file: ")

  # -- try
  tryCatch({

    # -- write content
    write(paste0(key, "=", value), file = file.path(path, ".Renviron"), append = T)
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
