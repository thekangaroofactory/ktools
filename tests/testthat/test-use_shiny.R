

test_that("use_shiny works", {

  # -- create folder
  testdata_path <- create_folder()

  # -- function calls
  expect_no_error(use_shiny(testdata_path, module = TRUE))
  expect_true(file.exists(file.path(testdata_path, "shinyapp", "server.R")))

  # -- delete folder
  clean_all(testdata_path)

})
