

#' Copy Package Template Files
#'
#' @param template the name of the template file to be copied
#' @param package the name of the package where to find the template (default = ktools)
#' @param path destination path where to copy the template
#' @param filename the name of the copy
#'
#' @returns the output of the file.copy function call
#' @export
#'
#' @examples
#' copy_template(template = "template_shiny_server", path = "shinyapp", filename = "my_server.R")

copy_template <- function(template, pkg = "ktools", path = getwd(), filename = NULL){

  cat("Copy template to destination path =", path, "\n")

  # -- get template file
  target <- system.file(template, package = "ktools")
  if(target == "")
    stop("Template file is not found in the package!", call. = F)

  # -- remove "template_"
  if(is.null(filename))
    filename <- gsub("template_", "", template)

  # -- copy to destination path & return
  file.copy(from = target, to = file.path(path, filename))

}
