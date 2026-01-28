

#' Compute date range
#'
#' @param min a Date for the lower value
#' @param max a Date for the higher value
#' @param type an optional character vector, to set the strategy (default = "this_year")
#'
#' @return a Date vector c(min, max)
#' @export
#'
#' @examples
#' date_range(min = Sys.Date()-365, max = Sys.Date()+365, type = "this_year")


date_range <- function(min, max, type = "this_year"){

  # -- test type
  if(type == "this_year"){

    # -- get current year
    this_year <- format(Sys.Date(), "%Y")
    floor_year <- lubridate::floor_date(Sys.Date(), unit = "year")
    ceiling_year <- lubridate::ceiling_date(Sys.Date(), unit = "year") - 1

    # -- check
    # when current year is not in the date range
    if(floor_year < min && ceiling_year > max){
      floor_year <- lubridate::floor_date(min, unit = "year")
      ceiling_year <- lubridate::ceiling_date(max, unit = "year") - 1}

    # -- slice input range
    start <- if(min < floor_year) floor_year else min
    end <- if(max > ceiling_year) ceiling_year else max

    # -- when end < this year
    # pick start of end's year
    if(start > end)
      start <- lubridate::floor_date(end, unit = "year")

    # -- when start < min
    # pick min
    if(start < min)
      start <- min

  }

  # -- return
  c(start, end)

}
