

test_that("update_r_environ works", {

  # -- create folder
  testdata_path <- create_folder()

  use_r_environ(testdata_path)

  # -- function calls
  expect_true(update_r_environ(path = testdata_path))

  # -- delete folder
  clean_all(testdata_path)

  # -- negative test

  expect_warning(x <- update_r_environ(path = file.path(testdata_path, "dummy_folder")))
  expect_false(x)

})
