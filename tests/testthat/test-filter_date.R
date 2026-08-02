

test_that("filter_date works", {

  # -- default use case: this month
  x <- filter_date(data.frame(date = Sys.Date() - runif(n = 15, min = -50, max = 50)))
  expect_true(is.data.frame(x))
  expect_identical(unique(format(x$date, "%m")), format(Sys.Date(), "%m"))

  # -- last month
  x <- filter_date(data.frame(date = Sys.Date() - runif(n = 15, min = -50, max = 50)),
                   ref = Sys.Date() - as.integer(format(Sys.Date(), "%d")))
  expect_true(is.data.frame(x))
  expect_identical(as.integer(unique(format(x$date, "%m"))), as.integer(format(Sys.Date(), "%m")) - 1L)

  # -- this year
  x <- filter_date(data.frame(date = Sys.Date() - runif(n = 15, min = -365, max = 365)),
                   ref = Sys.Date(),
                   unit = "year")
  expect_true(is.data.frame(x))
  expect_identical(unique(format(x$date, "%Y")), format(Sys.Date(), "%Y"))

  # -- negative tests
  # x not a data.frame
  expect_error(filter_date(NULL), "x must be a data.frame")

  # colname not a column in x
  expect_error(filter_date(x = data.frame(), colname = "foo"), "colname must be an existing column name")

  # no Date or POSIXct column
  expect_error(filter_date(data.frame(d = c(1,2))), "x must contain a Date or POSIXct column")

})
