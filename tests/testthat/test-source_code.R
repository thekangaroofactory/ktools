

test_that("source_code works", {

  # -- call function
  expect_snapshot(source_code(path = file.path(find.package("ktools"), "R")))
  expect_snapshot(source_code(path = file.path(find.package("ktools"), "R"), verbose = TRUE))

})
