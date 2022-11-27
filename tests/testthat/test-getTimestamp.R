

# -- call function
feedback  <- getTimestamp()

# -- test type
expect_true(is.numeric(feedback))

# -- test nb of digits
expect_identical(floor(log10(feedback)) + 1, 13)


# -- call function
feedback  <- getTimestamp(k = 1)

# -- test nb of digits
expect_identical(floor(log10(feedback)) + 1, 10)
