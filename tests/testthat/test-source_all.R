

test_that("source_all works", {

  # -- capture env functions before
  x_before <- lsf.str()

  # -- call function
  x <- source_all(path = "./R")

  # -- capture env functions after
  x_after <- lsf.str()

  # -- test that env has more functions (or same...)
  expect_true(length(x_after) >= length(x_before))

  # -- test value
  expect_type(x, "integer")

})
