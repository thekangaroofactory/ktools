

test_that("copy_template works", {

  # -- create folder
  testdata_path <- create_folder()

  # -- function calls
  expect_no_error(copy_template(template = "global.R", pkg = "ktools", path = testdata_path))
  expect_true(file.exists(file.path(testdata_path, "global.R")))

  # -- delete folder
  clean_all(testdata_path)

  # -- negative test
  # when template does not exist
  expect_error(copy_template(template = "dummy", pkg = "ktools", path = testdata_path))

})
