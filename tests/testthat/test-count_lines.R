

test_that("count_lines works", {

  # -- prepare data
  infile <- tempfile()
  lines <- "#' This\n#'\n\n# comment\np <- 1\n\nif(p==1) print(p)\n"
  writeLines(lines, infile)

  # -- function calls
  expect_message(x <- count_lines(infile, verbose = TRUE))
  expect_vector(x, ptype = integer(), size = 5)

})
