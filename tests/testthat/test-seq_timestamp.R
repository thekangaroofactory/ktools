

test_that("seq_timestamp works", {

  n <- 5

  # -- function call
  x <- seq_timestamp(n = n)

  # -- check
  expect_equal(length(x), n)

})
