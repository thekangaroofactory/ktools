

#' Use Plot Theme
#'
#' @description
#' Create a theme function that can be used across a project.
#'
#' @param path where to copy the template.
#'
#' @export
#' @return a logical.
#'
#' @examples
#' \dontrun{
#' use_plot_theme()
#' }

use_plot_theme <- function(path = getwd()){

  copy_template(template = "template_plot_theme.R", path = path)

}
