

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

with_js <- function(package, src, script ,session = shiny::getDefaultReactiveDomain()){

  # -- compute object name in userData (as package_script)
  name <- paste(package, tools::file_path_sans_ext(basename(script)), collapse = "_")

  if(is.null(session$userData[[name]])){

    # -- insert JS code on client side
    shiny::insertUI(selector = "head",
                    where = "beforeEnd",
                    ui = htmltools::htmlDependency(name = paste(package, src, collapse = "-"), version = utils::packageVersion(package),
                                                   package = package,
                                                   src = src,
                                                   script = script),
                    immediate = TRUE)

    # -- log it in memory
    session$userData[[name]] <- TRUE

  }

}
