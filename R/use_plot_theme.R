

#' Use Plot Theme Function
#'
#' @description
#' Helper function to create a theme function that can be used across
#' the project.
#'
#' @param path where to copy the template
#'
#' @export
#'
#' @examples
#' \dontrun{
#' use_plot_theme()
#' }

use_plot_theme <- function(path = getwd()){

  copy_template(template = "template_plot_theme", path = path)

}
