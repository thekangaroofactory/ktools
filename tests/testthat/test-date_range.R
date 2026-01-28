

# -- get current year (check)
year <- as.numeric(format(Sys.Date(), "%Y"))


test_that("date_range ]this_year[ works", {

  min <- Sys.Date() - 365
  max <- Sys.Date() + 365

  # -- function call
  x <- date_range(min = min, max = max, type = "this_year")

  # -- check
  expect_equal(x, c(as.Date(paste0(year, "-01-01")), as.Date(paste0(year, "-12-31"))))

})


test_that("date_range ]this_year] works", {

  min <- Sys.Date() - 365
  max <- lubridate::ceiling_date(Sys.Date(), unit = "year") - 10

  # -- function call
  x <- date_range(min = min, max = max, type = "this_year")

  # -- check
  expect_equal(x, c(as.Date(paste0(year, "-01-01")), as.Date(paste0(year, "-12-22"))))

})


test_that("date_range [this_year[ works", {

  min <- lubridate::floor_date(Sys.Date(), unit = "year") + 10
  max <- Sys.Date() + 365

  # -- function call
  x <- date_range(min = min, max = max, type = "this_year")

  # -- check
  expect_equal(x, c(as.Date(paste0(year, "-01-11")), as.Date(paste0(year, "-12-31"))))

})


test_that("date_range [this_year] works", {

  min <- lubridate::floor_date(Sys.Date(), unit = "year") + 10
  max <- lubridate::ceiling_date(Sys.Date(), unit = "year") - 10

  # -- function call
  x <- date_range(min = min, max = max, type = "this_year")

  # -- check
  expect_equal(x, c(as.Date(paste0(year, "-01-11")), as.Date(paste0(year, "-12-22"))))

})


test_that("date_range ]past_year] works", {

  min <- Sys.Date() - 365 * 2
  max <- Sys.Date() - 365

  # -- function call
  x <- date_range(min = min, max = max, type = "this_year")

  # -- check
  expect_equal(x, c(lubridate::floor_date(Sys.Date() - 365, unit = "year"), Sys.Date() - 365))

})
