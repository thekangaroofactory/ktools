# Compute Timestamp

Compute a numeric timestamp.

## Usage

``` r
getTimestamp(k = 1000, digits = 0, silent = FALSE)
```

## Arguments

- k:

  a numeric (default = 1000), used as a multiplication factor.

- digits:

  an integer (default = 0) to round the value.

- silent:

  an optional (default = FALSE) logical. If TRUE, no traces will go to
  the console.

## Value

a numeric.

## Details

By default (`k = 1000`), the function returns a numeric up to the
millisecond.

Output should not be used as a unique id if users / systems may call it
more than one time per millisecond.

## See also

[`uuid()`](https://thekangaroofactory.github.io/ktools/reference/uuid.md)

## Examples

``` r
# compute up to the second timestamp
getTimestamp(k = 1, digits = 0)
#> [1] 1790875567

# compute up to the millisecond timestamp
getTimestamp(k = 1000)
#> [1] 1.790876e+12
getTimestamp()
#> [1] 1.790876e+12
```
