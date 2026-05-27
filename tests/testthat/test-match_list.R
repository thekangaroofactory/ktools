

test_that("with_js works", {

  # -- all good (unchanged)
  expect_identical(match.list(x = list(foo = 1),
                              reference = list(foo = 1)),
                   list(foo = 1))

  # -- missing element
  expect_identical(match.list(x = list(foo = 1),
                              reference = list(foo = 0, bar = "dummy")),
                   list(foo = 1, bar = "dummy"))

  # -- wrong element type
  expect_error(match.list(x = list(foo = 1),
                          reference = list(foo = "1")))

})
