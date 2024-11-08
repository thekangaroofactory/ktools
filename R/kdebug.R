

#' Set Trace Level
#'
#' @param level a numeric vector to indicate the level of trace printed by
#' \link[ktools]{catl} function or NULL to set the trace OFF
#'
#' @export
#'
#' @examples
#' k_debug()
#' k_debug(2)

k_debug <- function(level = NULL){

  # -- update option
  options("k.debug" = level)

  # -- notify
  message("Trace level = ", ifelse(!is.null(getOption("k.debug")), getOption("k.debug"), "OFF"))

}
