

test_that("onclick_event works", {

  # -- single link
  x <- action_link(id = "foo", label = "click", target = "on_click")
  expect_type(x, "list")
  expect_identical(length(x), 1L)
  expect_identical(attributes(x[[1]])$class, "shiny.tag")

  # -- Send tag id to the target input
  x <- action_link(id = c(1,2,3), label = "click", target = "on_click", value = NULL)
  expect_type(x, "list")
  expect_identical(length(x), 3L)
  expect_identical(attributes(x[[1]])$class, "shiny.tag")

  # -- Send specific pattern to the target input:
  x <- action_link(id = c(1,2,3), label = "click", target = "on_click", pattern = "do_this")
  expect_type(x, "list")
  expect_identical(length(x), 3L)
  expect_identical(attributes(x[[1]])$class, "shiny.tag")

  # -- Send specific value to the target input:
  x <- action_link(id = c(1,2,3), label = "click", target = "on_click", value = "do_this")
  expect_type(x, "list")
  expect_identical(length(x), 3L)
  expect_identical(attributes(x[[1]])$class, "shiny.tag")

  # -- Use with Shiny module:
  x <- action_link(id = c(1,2,3), label = "click", target = "on_click", pattern = "do_this", namespace = "mod1")
  expect_type(x, "list")
  expect_identical(length(x), 3L)
  expect_identical(attributes(x[[1]])$class, "shiny.tag")

  # -- as_character
  x <- action_link(id = "foo", label = "click", target = "on_click", as_character = T)
  expect_type(x[[1]], "character")

})
