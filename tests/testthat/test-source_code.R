

test_that("source_code works", {

  # -- call function
  expect_snapshot(source_code(path = "./R"))
  expect_snapshot(source_code(path = "./R", verbose = TRUE))

})
