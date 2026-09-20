

test_that("onclick_event works", {

  expect_identical(onclick_event("foo"),
                   "Shiny.setInputValue(\"foo\", this.id, {priority: \"event\"})")

  expect_identical(onclick_event(target = "btn_clicked"),
                   "Shiny.setInputValue(\"btn_clicked\", this.id, {priority: \"event\"})")

  expect_identical(onclick_event(target = "btn_clicked", value = 12, namespace = "module"),
                   "Shiny.setInputValue(\"module-btn_clicked\", 12, {priority: \"event\"})")

  expect_identical(onclick_event(target = "btn_clicked", value = list(a = 1, b = "2"), namespace = "module"),
                   "Shiny.setInputValue(\"module-btn_clicked\", {\"a\":1,\"b\":\"2\"}, {priority: \"event\"})")

})
