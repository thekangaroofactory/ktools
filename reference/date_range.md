# Compute date range

Compute specific date range between two dates.

**\[deprecated\]**

## Usage

``` r
date_range(min, max, type = "this_year")
```

## Arguments

- min:

  a Date for the lower value

- max:

  a Date for the higher value

- type:

  an optional character vector, to set the strategy (default =
  "this_year")

## Value

a Date vector c(start, end)

## Examples

``` r
date_range(min = Sys.Date()-365, max = Sys.Date()+365, type = "this_year")
#> Warning: 'date_range' is deprecated.
#> Use 'Use filter_date() instead' instead.
#> See help("Deprecated")
#> [1] "2026-01-01" "2026-12-31"
```
