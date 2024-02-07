

test_that("multiplication works", {

  # -- get current year
  year <- as.numeric(format(Sys.Date(), "%Y"))
  min <- as.Date(paste0(year-1, "-02-02"))
  max <- as.Date(paste0(year+1, "-07-07"))

  # -- function call
  x <- date_range(min = min, max = max, type = "this_year")

  # -- check
  expect_equal(x, c(as.Date(paste0(year, "-01-01")), as.Date(paste0(year, "-12-31"))))

})
