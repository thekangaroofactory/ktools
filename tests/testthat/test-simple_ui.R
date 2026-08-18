

test_that("simple_ui works", {

  # -- basic use case
  x <- simple_ui("foo", "bar")
  expect_type(x, "list")
  expect_identical(x$attribs$id, "foo-bar")
  expect_identical(x$attribs$class, "shiny-html-output")
  expect_identical(attributes(x)$class, "shiny.tag")

  # -- namespace
  x <- simple_ui(id = c("foo", "bar"), output = "zoo")
  expect_type(x, "list")
  expect_identical(x$attribs$id, "foo-bar-zoo")

  # -- types
  x <- simple_ui("foo", "bar", "text")
  expect_identical(x$attribs$class, "shiny-text-output")
  x <- simple_ui("foo", "bar", "plot")
  expect_identical(x$attribs$class, "shiny-plot-output")
  x <- simple_ui("foo", "bar", "table")
  expect_identical(x[[1]]$attribs$class, "datatables html-widget html-widget-output shiny-report-size")

})
