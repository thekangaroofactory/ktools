

test_that("add_r_environ works", {

  # -- create folder
  testdata_path <- file.path(system.file("tests", "testthat", package = "ktools"), "testdata")
  dir.create(testdata_path)

  # -- function calls
  expect_snapshot(use_template(template = "global.R", package = "ktools", path = testdata_path))
  expect_true(file.exists(file.path(testdata_path, "global.R")))

  # -- delete folder
  unlink(testdata_path, recursive = TRUE)

  # -- negative test
  expect_snapshot(use_template(template = "dummy", package = "ktools", path = testdata_path))

})
