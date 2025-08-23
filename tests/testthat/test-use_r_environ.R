

test_that("use_r_environ works", {

  # -- create folder
  testdata_path <- file.path(system.file("tests", "testthat", package = "ktools"), "testdata")
  dir.create(testdata_path)

  # -- function calls
  expect_true(use_r_environ(testdata_path))
  expect_true(file.exists(file.path(testdata_path, ".Renviron")))

  # -- delete folder
  unlink(testdata_path, recursive = TRUE)

})
