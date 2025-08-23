

test_that("add_r_environ works", {

  # -- create folder
  testdata_path <- create_folder()
  use_r_environ(testdata_path)

  # -- function calls
  expect_true(add_r_environ(path = testdata_path))

  # -- delete folder
  clean_all(testdata_path)

  # -- negatove test
  expect_warning(x <- add_r_environ(path = "/"))
  expect_false(x)

})
