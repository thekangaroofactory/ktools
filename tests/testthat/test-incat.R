

test_that("incat direct call works", {

  # -- function call
  expect_no_error(incat("direct call"))

})


test_that("incat direct call works", {

  test <- function(x)
    incat(x)

  # -- function call
  expect_no_error(test("indirect call"))

})
