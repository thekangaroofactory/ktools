

#' Add Variable To Renviron File
#'
#' @param path the path of the .Renviron file (default is working directory)
#' @param key the name of the variable (default = DEBUG)
#' @param value the value to be assigned to the variable (default = "TRUE")
#'
#' @returns TRUE if success, else FALSE
#' @export
#'
#' @examples add_r_environ(key = "MY_VAR", value = "my_value")

add_r_environ <- function(path = getwd(), key = "DEBUG", value = "TRUE"){

  cat("- Add variable to .Renviron file: ")

  # -- init
  filename <- file.path(path, ".Renviron")

  # -- try
  tryCatch({

    # -- write content
    write(paste0(key, "=", value), file = filename, append = T)

    # -- log
    cat("done \n")

    # -- return
    TRUE},

  error = function(e) {

    # -- log
    cat("KO \n")

    # -- print error
    print(e)

    # -- return
    FALSE})

}
