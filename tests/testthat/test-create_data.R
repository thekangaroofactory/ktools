
test_that("create_date works", {

  # -- when input is NA, function returns an empty data.frame (0 x 0)
  x <- create_data(colClasses = NA)
  expect_true(is.data.frame(x))
  expect_identical(dim(x), c(0L,0L))

  # -- standard use case
  x <- create_data(colClasses = c(id = "numeric", date = "Date", comment = "character"))
  expect_true(is.data.frame(x))
  expect_identical(dim(x), c(0L,3L))
  expect_identical(names(x), c("id", "date", "comment"))

})
