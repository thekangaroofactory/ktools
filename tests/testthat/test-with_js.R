

test_that("with_js works", {

  expect_no_error(with_js(package = "foo", src = "assets", script = "test.js", session = NULL))
  expect_error(with_js(package = "foo", src = "assets", script = "test.js", session = list()))

})
