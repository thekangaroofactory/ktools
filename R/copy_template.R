

#' Copy Package Template Files.
#'
#' @param template the name of the template file to be copied.
#' @param pkg the name of the package where to find the template.
#' @param path destination path where to copy the template (default = working directory).
#' @param filename an optional name for the copy.
#'
#' @details
#' By default, the function addresses templates delivered along with this package
#' (i.e. `pkg` = "ktools").
#'
#' When `filename` is not provided, the copy will have same name as the template
#' without the "template_" prefix pattern.
#'
#' An error will be thrown if the template file is not found.
#'
#' @returns a logical (see [file.copy()]
#' @export
#'
#' @examples
#' \dontrun{
#' copy_template(template = "template_shiny_server.R", path = "shinyapp", filename = "my_server.R")
#' }

copy_template <- function(template, pkg = "ktools", path = getwd(), filename = NULL){

  # -- get template file
  target <- system.file(template, package = "ktools")
  if(target == "")
    stop("Template file is not found in the package!", call. = F)

  # -- remove "template_"
  if(is.null(filename))
    filename <- gsub("template_", "", template)

  # -- copy to destination path & return
  cat("Copy template to destination path =", path, "\n")
  file.copy(from = target, to = file.path(path, filename))

}
