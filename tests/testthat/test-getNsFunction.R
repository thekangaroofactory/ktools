

test_that("getNsFunction works", {

  # -- function calls
  expect_true(is.function(getNsFunction("ktools::catl")))
  expect_false(is.function(getNsFunction("cat")))

})
