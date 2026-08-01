

#' Filter by Date Range
#'
#' @description
#' Filter a data.frame by specific date range.
#'
#' @param x a data.frame with a Date or POSIXct column
#' @param colname an optional character string to provide the name of the column to use in filter
#' @param ref an optional Date value to be used as a reference for the date range
#' @param unit a string to compute the date range (default = "month") (see \link[lubridate::round_date()])
#'
#' @details
#' The purpose of this function is to make data navigation between date range easier.
#' By default, it will filter the input data.frame to keep dates belonging to the current month.
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
