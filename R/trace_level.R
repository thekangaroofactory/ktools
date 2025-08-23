

#' Set Trace Level
#'
#' @param level an integer to indicate the level of trace printed by
#' \link[ktools]{catl} function, 0 to set the trace OFF or NULL to get
#' the current trace level.
#'
#' @export
#'
#' @examples
#' trace_level()
#' trace_level(2)

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
