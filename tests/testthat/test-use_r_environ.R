

test_that("use_r_environ works", {

  # -- create folder
  testdata_path <- create_folder()

  # -- function calls
  expect_true(use_r_environ(testdata_path))
  expect_true(file.exists(file.path(testdata_path, ".Renviron")))

  # -- delete folder
  clean_all(testdata_path)

})
