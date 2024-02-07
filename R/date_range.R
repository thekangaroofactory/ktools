

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

    if(min < floor_year)
      min <- floor_year

    if(max > ceiling_year)
      max <- ceiling_year

  }

  # -- return
  range <- c(min, max)

}
