

test_that("source_code works", {

  # -- baseline
  env_before <- utils::lsf.str(envir = globalenv())

  # -- call function
  expect_no_error(source_code(path = file.path(find.package("ktools"), "R"), verbose = TRUE))

  # -- check
  env_after <- utils::lsf.str(envir = globalenv())
  expect_true(length(env_after) >= length(env_before))

  # -- cleanup environment
  rm(list = ls())

})
