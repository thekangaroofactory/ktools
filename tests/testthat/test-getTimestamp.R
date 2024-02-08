

test_that("getTimestamp works", {

  # -- call function
  x  <- getTimestamp()

  # -- test type
  expect_true(is.numeric(x))

  # -- test nb of digits
  expect_identical(floor(log10(x)) + 1, 13)

})


test_that("getTimestamp k = 1 works", {

  # -- call function
  x  <- getTimestamp(k = 1)

  # -- test nb of digits
  expect_identical(floor(log10(x)) + 1, 10)

})


test_that("getTimestamp silent = TRUE works", {

  # -- call function
  x  <- getTimestamp(silent = TRUE)

  # -- test nb of digits
  expect_identical(floor(log10(x)) + 1, 13)

})

