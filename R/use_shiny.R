

#' Shiny App Setup
#'
#' @param path the path where to setup the Shiny app (default: working directory)
#' @param app_dir the name of the app folder (default: "app")
#' @param data_dir the path of the data folder (default: "data" folder inside path)
#' @param module if a Shiny module should be created or not (default: FALSE)
#'
#' @export
#'
#' @details
#' When data_dir is null, data folder will be ignored and DATA_HOME environment
#' variable will not be set.
#'
#'
#' @examples
#' \dontrun{
#' use_shiny()
#' }

use_shiny <- function(path = getwd(), app_dir = "app", data_dir = file.path(path, "data"), module = F){

  cat("Setting up Shiny app \n")
  cat("- Destination folder:", path, "\n")

  # ----------------------------------------------------------------------------
  # Environment
  # ----------------------------------------------------------------------------

  # -- .Renviron file (declare local environment variables)
  use_r_environ(path)

  # -- Add variables
  add_r_environ()
  add_r_environ(key = "PROJECT_HOME", value = path)

  if(!is.null(data_dir))
    add_r_environ(key = "DATA_HOME", value = data_dir)



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
  use_template(template = "global.R", path = file.path(path, app_dir))

  # -- Implement server / ui from templates
  use_template(template = "template_shiny_server.R", name = "server.R", path = file.path(path, app_dir))
  use_template(template = "template_shiny_ui_navbar.R", name = "ui.R", path = file.path(path, app_dir))


  # -- Implement module server / ui from template
  if(module){

    dir.create(file.path(path, app_dir, "R", "module"))
    use_template(template = "template_shiny_module_server.R", name = "module_server.R", path = file.path(path, app_dir, "R", "module"))
    use_template(template = "template_shiny_module_ui.R", name = "module_ui.R", path = file.path(path, app_dir, "R", "module"))}


  # ----------------------------------------------------------------------------
  # Data
  # ----------------------------------------------------------------------------

  # -- check parameter
  if(!is.null(data_dir))

    # -- Create data folder
    if(!dir.exists(data_dir)){

      cat("- Create data folder:", data_dir, "\n")
      dir.create(data_dir)

    } else cat("- Data folder:", data_dir, "already exists. \n")


}
