

#' Start Record Plots
#'
#' @description
#' This is a wrapper function to init plot viewer recording.
#'
#' @param height plot size (units)
#' @param width plot size (units)
#' @param dpi plot resolution value (default = 300)
#'
#' @seealso [camcorder::gg_record()]
#'
#' @details
#' The camcorder package is set as suggest in this package to avoid unnecessary
#' installation or extra dependencies. In case it is not found, the function
#' will throw a warning and exit with NULL.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' screenshot_start(height = 5, width = 10, dpi = 350)
#' }

screenshot_start <- function(height = NULL, width = NULL, dpi = 300){

  # -- making the camcorder dependency optional for this package
  if (!requireNamespace("camcorder", quietly = TRUE)) {
    warning("The camcorder package must be installed to use this functionality.")
    return(NULL)}

  # -- start recording
  camcorder::gg_record(dir = file.path(tempdir(), "recording"))

  ## -- resize canvas of the last plot (and all next)
  camcorder::gg_resize_film(height = height, width = width, dpi = dpi)

}


#' Stop Record Plots
#'
#' @description
#' This is a wrapper function to stop plot viewer recording and build a gif
#' from the captures.
#'
#' @param first see camcorder::gg_playback()
#' @param last see camcorder::gg_playback()
#' @param frame see camcorder::gg_playback()
#' @param loop logical (default = TRUE)
#' @param background character string for the background color
#'
#' @seealso [camcorder::gg_playback()]
#'
#' @details
#' The camcorder package is set as suggest in this package to avoid unnecessary
#' installation or extra dependencies. In case it is not found, the function
#' will throw a warning and exit with NULL.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' screenshot_stop(first = 1, last = 1, frame = 0.25, loop = TRUE, background = "none")
#' }

screenshot_stop <- function(first = 1, last = 1, frame = 0.25, loop = TRUE, background = "none"){

  # -- making the camcorder dependency optional for this package
  if (!requireNamespace("camcorder", quietly = TRUE)) {
    warning("The camcorder package must be installed to use this functionality.")
    return(NULL)}

  # -- generate the gif
  camcorder::gg_playback(name = tempfile(fileext = ".gif"),
                         first_image_duration = first,
                         last_image_duration = last,
                         frame_duration = frame,
                         loop = loop,
                         background = background)

  # -- stop recording
  camcorder::gg_stop_recording()

}
