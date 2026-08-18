

test_that("seq_timestamp works", {

  n <- 5

  # -- function call
  expect_warning(x <- seq_timestamp(n = n))

  # -- check
  expect_equal(length(x), n)

  # -- test check arg
  expect_warning(x <- seq_timestamp(n = 2.5))

})
