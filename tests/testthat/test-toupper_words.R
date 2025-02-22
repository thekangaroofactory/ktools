

test_that("toupper_words works", {

  # -- call function
  x  <- toupper_words("this is an example")

  # -- test type
  expect_true(is.character(x))

  # -- test value
  expect_identical(x, "This Is An Example")

})
