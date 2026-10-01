# Generate Uuid

Compute unique identifier.

## Usage

``` r
uuid()
```

## Value

a numeric.

## Details

By default
[`getTimestamp()`](https://thekangaroofactory.github.io/ktools/reference/getTimestamp.md)
gives a value up to the millisecond.

In some use cases, for example when a sequence of ids need to be
generated grammatically, multiple identical values will be generated
within the same millisecond.

This wrapper calls
[`getTimestamp()`](https://thekangaroofactory.github.io/ktools/reference/getTimestamp.md)
with `k = 1000000` to get a value up to the microsecond. This is usually
enough the get unique value for example when it's called from applying a
function over a list.

## Examples

``` r
uuid()
#> [1] 1.790876e+15

# showing what the function is trying to solve
any(duplicated(replicate(100, getTimestamp())))
#> [1] TRUE
any(duplicated(replicate(100, uuid())))
#> [1] FALSE
```
