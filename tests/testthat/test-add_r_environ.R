

test_that("add_r_environ works", {

  # -- create folder
  testdata_path <- file.path(system.file("tests", "testthat", package = "ktools"), "testdata")
  dir.create(testdata_path)
  use_r_environ(testdata_path)

  # -- function calls
  expect_true(add_r_environ(path = testdata_path))

  # -- delete folder
  unlink(testdata_path, recursive = TRUE)

  # -- negatove test
  expect_warning(x <- add_r_environ(path = testdata_path))
  expect_false(x)

})
