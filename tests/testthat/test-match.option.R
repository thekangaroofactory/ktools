

test_that("match.option works", {

  foo <- function(options = list(bar = TRUE, zoo = 1)) NULL

  expect_equal(match.option(fun = foo, arg = "options", value = NULL), list(bar = TRUE, zoo = 1))
  expect_equal(match.option(fun = foo, arg = "options", value = list(bar = TRUE)), list(bar = TRUE, zoo = 1))
  expect_equal(match.option(fun = foo, arg = "options", value = list(bar = FALSE)), list(bar = FALSE, zoo = 1))
  expect_equal(match.option(fun = foo, arg = "options", value = list(bar = TRUE, zoo = 1)), list(bar = TRUE, zoo = 1))

})
