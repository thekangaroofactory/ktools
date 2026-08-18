

test_that("scan_code works", {

  # -- call
  x <- scan_code()

  # -- tests
  expect_all_true(is.data.frame(x))
  expect_identical(names(x), c("total", "code", "comment", "doc", "spacing"))

})
