

test_that("toupperfirst works", {

  # -- call function
  x  <- toupperfirst("this is a test")

  # -- test type
  expect_true(is.character(x))

  # -- test value
  expect_identical(x, "This is a test")

})


test_that("toupperfirst with num works", {

  # -- call function
  x  <- toupperfirst(1)

  # -- test type
  expect_true(is.character(x))

  # -- test value
  expect_identical(x, "1")

})
