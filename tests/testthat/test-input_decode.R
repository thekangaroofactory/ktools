

test_that("input_decode works", {

  # -- baseline
  x <- input_decode("module1-add_leg_896")
  expect_type(x, "character")
  expect_identical(names(x), c("namespace", "action", "value"))
  expect_identical(x[['namespace']], "module1")
  expect_identical(x[['action']], "add_leg")
  expect_identical(x[['value']], "896")

  # -- no module (namespace)
  x <- input_decode("add_leg_896")
  expect_type(x, "character")
  expect_identical(names(x), c("action", "value"))
  expect_identical(x[['action']], "add_leg")
  expect_identical(x[['value']], "896")

})
