

test_that("catl works", {

  # -- function calls
  expect_silent(catl("Awesome message here"))
  expect_output(catl("Awesome message here", debug = 1), "Awesome message here")

})
