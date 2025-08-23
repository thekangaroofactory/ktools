

test_that("trace_level works", {

  # -- init
  # force unset
  trace_level(0)

  # -- function calls
  expect_true(is.na(trace_level()))
  expect_message(trace_level(1), "Trace level = 1")
  expect_message(trace_level(2), "Trace level = 2")
  expect_message(trace_level(0), "Trace level = OFF")
  expect_true(is.na(trace_level()))

})
