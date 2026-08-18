

test_that("use_plot_theme works", {

  # -- create folder
  testdata_path <- create_folder()

  # -- function calls
  expect_no_error(use_plot_theme(path = testdata_path))
  expect_true(file.exists(file.path(testdata_path, "plot_theme.R")))

  # -- delete folder
  clean_all(testdata_path)

})
