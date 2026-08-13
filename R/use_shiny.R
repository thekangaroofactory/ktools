

#' Setup Shiny App
#'
#' @description
#' The function is used to setup a Shiny App with optional module based on templates.
#'
#' `r lifecycle::badge("experimental")`
#'
#' @param path the path where to setup the Shiny app (default = working directory)
#' @param app_dir the name of the app folder (default = "shinyapp")
#' @param data_dir the path of the data (if any)
#' @param module if a Shiny module should be created or not (default: FALSE)
#'
#' @export
#' @return NULL (invisibly)
#'
#' @details
#' When data_dir is null, DATA_HOME environment variable will not be set.
#'
#' @examples
#' \dontrun{
#' use_shiny()
#' }

use_shiny <- function(path = getwd(), app_dir = "shinyapp", data_dir = NULL, module = F){

  cat("Setting up Shiny app \n")
  cat("- Destination folder:", path, "\n")

  # ----------------------------------------------------------------------------
  # Environment
  # ----------------------------------------------------------------------------

  # -- Create .Renviron file
  use_r_environ(path)

  # -- Add variables
  update_r_environ()
  update_r_environ(key = "PROJECT_HOME", value = path)

  if(!is.null(data_dir))
    update_r_environ(key = "DATA_HOME", value = data_dir)


  # ----------------------------------------------------------------------------
  # App Architecture / code
  # ----------------------------------------------------------------------------

  # -- Create folders
  cat("- Creating app folders: ")
  dir.create(file.path(path, app_dir))
  dir.create(file.path(path, app_dir, "R"))
  dir.create(file.path(path, app_dir, "www"))
  cat("done \n")


  # -- Implement global.R from template
  copy_template(template = "global.R", path = file.path(path, app_dir))

  # -- Implement server / ui from templates
  copy_template(template = "template_shiny_server.R", filename = "server.R", path = file.path(path, app_dir))
  copy_template(template = "template_shiny_ui_navbar.R", filename = "ui.R", path = file.path(path, app_dir))


  # -- Implement module server / ui from template
  if(module){

    dir.create(file.path(path, app_dir, "R", "module"))
    copy_template(template = "template_shiny_module_server.R", filename = "module_server.R", path = file.path(path, app_dir, "R", "module"))
    copy_template(template = "template_shiny_module_ui.R", filename = "module_ui.R", path = file.path(path, app_dir, "R", "module"))}

  #
  invisible(NULL)

}
