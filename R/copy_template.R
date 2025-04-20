

#' Copy Package Template Files
#'
#' @param template the name of the template file to be copied
#' @param path destination path where to copy the template
#'
#' @returns the output of the file.copy function call
#' @export
#'
#' @examples
#' copy_template(template = "template_shiny_server", path = "shinyapp")

copy_template <- function(template, path = getwd()){

  cat("Copy template:", template, "to destination path =", path, "\n")

  # -- get template file
  target <- system.file(template, package = "ktools")

  if(target == ""){
    cat("[Warning] template file is not found!")
    return(FALSE)}

  # -- copy to destination path (+ return output value)
  file.copy(from = target, to = path)

}
