

test_that("has_date works", {

  # -- default use case: single date column
  expect_identical(has_date(data.frame(date = Sys.Date())), "date")

  # -- multiple date columns
  expect_identical(has_date(data.frame(date = Sys.Date(), update = Sys.Date()), single = FALSE), c("date", "update"))
  expect_identical(has_date(data.frame(date = Sys.Date(), update = Sys.Date()), single = TRUE), c("date"))

  # -- no date column
  expect_true(is.na(has_date(data.frame(a = 1))))

  # -- negative tests
  # empty data.frame
  expect_error(has_date(data.frame()), "x must have at least one column")

  # -- dummy use cases
  expect_null(has_date(NULL))
  expect_null(has_date(NA))

})
