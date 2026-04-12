

#' Manage Package JavaScript Dependency
#'
#' @description
#' Checks whether a specific dependency is already inserted in the UI with this
#' function, and perform the insert if necessary.
#'
#' @param session the session object of the Shiny server (or shiny::getDefaultReactiveDomain())
#' @param package the name of the package
#' @param src where to find the script (see htmltools::htmlDependency() for details)
#' @param script the script to include (relative to src)
#'
#' @details
#' When `session` is NULL, the function will return without doing anything.
#' This is useful when the function is called from ui side. The JavaScript
#' dependency will be attached next time the function is called from server side.
#' This is because the session$userData object cannot be updated from ui side.
#'
#' @importFrom shiny insertUI
#' @importFrom shiny getDefaultReactiveDomain
#' @importFrom htmltools htmlDependency
#' @importFrom utils packageVersion
#'
#' @export
#'
#' @examples
#' \dontrun{
#' with_js(package = "ktag", src = "assets", script = "js/ktag.js",
#' session = shiny::getDefaultReactiveDomain())
#' }

with_js <- function(package, src, script, session = shiny::getDefaultReactiveDomain()){

  # -- call from ui side
  if(is.null(session))
    return()

  # -- compute object name in userData (as package_script)
  asset_name <- tools::file_path_sans_ext(basename(script))
  env_name <- paste(package, asset_name, sep = "_")

  if(is.null(session$userData[[env_name]])){

    # -- insert JS code on client side
    shiny::insertUI(selector = "head",
                    where = "beforeEnd",
                    ui = htmltools::htmlDependency(name = paste(package, asset_name, sep = "-"), version = utils::packageVersion(package),
                                                   package = package,
                                                   src = src,
                                                   script = script),
                    immediate = TRUE)

    # -- log it in memory
    session$userData[[env_name]] <- TRUE

  }

}
