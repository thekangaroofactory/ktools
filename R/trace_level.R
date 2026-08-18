

#' Set Trace Level
#'
#' @description
#' A helper function to set the trace level that will be printed by
#' \link[ktools]{catl}
#'
#' @param level an integer (or NULL)
#'
#' @details
#' `level` is used to define the level of trace printed by \link[ktools]{catl}.
#' Use 0 to set the trace OFF or NULL to get the current trace level.
#'
#' @seealso [catl()]
#'
#' @export
#' @return Nothing or the active trace level.
#'
#' @examples
#' trace_level()
#' trace_level(2)
#' trace_level(0)

trace_level <- function(level = NULL){

  # -- check parameter
  if(!is.null(level)){

    # -- set / unset environment variable
    if(level != 0)
      Sys.setenv(TRACE_LEVEL = level)
    else
      Sys.unsetenv("TRACE_LEVEL")

    message("Trace level = ", ifelse(Sys.getenv("TRACE_LEVEL") != "", Sys.getenv("TRACE_LEVEL"), "OFF"))

  } else
    return(as.numeric(Sys.getenv("TRACE_LEVEL")))

}
