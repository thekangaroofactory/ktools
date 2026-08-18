# Compute Timestamp

Compute a numeric timestamp to be used as UUID.

## Usage

``` r
getTimestamp(k = 1000, digits = 0, silent = FALSE)
```

## Arguments

- k:

  a numeric (default = 1000), used as a multiplication factor

- digits:

  an integer (default = 0) passed to round() function

- silent:

  an optional (default = FALSE) logical. If TRUE, no traces will go to
  the console

## Value

a numeric

## Details

The function returns a unique numeric up to the millisecond. Output
should not be used as a unique id if users / systems may call it more
than one time per millisecond.

## See also

[`uuid()`](https://thekangaroofactory.github.io/ktools/reference/uuid.md)

## Examples

``` r
# compute up to the second timestamp
getTimestamp(k = 1, digits = 0)
#> [1] 1787050919

# compute up to the millisecond timestamp
getTimestamp(k = 1000)
#> [1] 1.787051e+12
getTimestamp()
#> [1] 1.787051e+12
```
