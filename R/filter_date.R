

#' Filter by Date Range
#'
#' @param x a data.frame with a Date or POSIXct column
#' @param colname an optional character string to provide the name of the column to filter
#' @param ref an optional Date value to be used as a reference for the date range
#' @param unit a string (see `lubridate::round_date()`)
#'
#' @returns a filtered data.frame
#' @export
#'
#' @examples
#' # -- this month (the default)
#' filter_date(data.frame(date = Sys.Date() - runif(n = 10, min = 1, max = 50)))
#'
#' # -- previous month
#' filter_date(data.frame(date = Sys.Date() - runif(n = 10, min = 1, max = 50)), ref = Sys.Date() - 31)
#'

filter_date <- function(x, colname = NULL, ref = Sys.Date(), unit = "month"){

  # -- check
  stopifnot("x must be a data.frame" = is.data.frame(x))

  # -- target column
  if(is.null(colname))
    colname <- has_date(x, single = TRUE)
  else
    stopifnot("colname must be an existing column name" = colname %in% names(x))

  # -- return (filtered data)
  x |>
    dplyr::filter(!!as.symbol(colname) >= lubridate::floor_date(ref, unit = unit),
                  !!as.symbol(colname) <= lubridate::ceiling_date(ref, unit = unit) - 1)

}
