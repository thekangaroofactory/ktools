

#' Start Record Plots
#'
#' @param height plot size in units (see camcorder::gg_record())
#' @param width plot size in units (see camcorder::gg_record())
#' @param dpi plot resolution (see camcorder::gg_record())
#'
#' @export
#'
#' @examples
#' \dontrun{
#' screenshot_start(height = 5, width = 10, dpi = 350)
#' }

screenshot_start <- function(height = NULL, width = NULL, dpi = 300){

  # -- start recording
  camcorder::gg_record(dir = file.path(tempdir(), "recording"))

  ## -- resize canvas of the last plot (and all next)
  camcorder::gg_resize_film(height = height, width = width, dpi = dpi)

}


#' Stop Record Plots
#'
#' @param first see camcorder::gg_playback()
#' @param last see camcorder::gg_playback()
#' @param frame see camcorder::gg_playback()
#' @param loop logical (default = TRUE)
#' @param background character string for the background color
#'
#' @export
#'
#' @examples
#' \dontrun{
#' screenshot_stop(first = 1, last = 1, frame = 0.25, loop = TRUE, background = "none")
#' }

screenshot_stop <- function(first = 1, last = 1, frame = 0.25, loop = TRUE, background = "none"){

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
