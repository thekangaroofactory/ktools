

test_that("add_r_environ works", {

  # -- create folder
  testdata_path <- create_folder()

  # -- function calls
  expect_snapshot(use_template(template = "global.R", package = "ktools", path = testdata_path))
  expect_true(file.exists(file.path(testdata_path, "global.R")))

  # -- delete folder
  clean_all(testdata_path)

  # -- negative test
  expect_snapshot(use_template(template = "dummy", package = "ktools", path = testdata_path))

})
