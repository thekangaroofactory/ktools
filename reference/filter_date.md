# Filter by Date Range

Filter a data.frame by specific date range.

## Usage

``` r
filter_date(x, colname = NULL, ref = Sys.Date(), unit = "month")
```

## Arguments

- x:

  a data.frame with a Date or POSIXct column

- colname:

  an optional character string to provide the name of the column to use
  in filter

- ref:

  an optional Date value to be used as a reference for the date range

- unit:

  a string to compute the date range (default = "month") (see
  [round_date](https://lubridate.tidyverse.org/reference/round_date.html))

## Value

a filtered data.frame

## Details

The purpose of this function is to make data navigation between date
range easier. By default, it will filter the input data.frame to keep
dates belonging to the current month.

## Examples

``` r
# -- this month (the default)
filter_date(data.frame(date = Sys.Date() - runif(n = 10, min = -50, max = 50)))
#>         date
#> 1 2026-08-07
#> 2 2026-08-21
#> 3 2026-08-18

# -- previous month
filter_date(data.frame(date = Sys.Date() - runif(n = 10, min = -50, max = 50)),
ref = Sys.Date() - as.integer(format(Sys.Date(), "%d")))
#>         date
#> 1 2026-07-11
#> 2 2026-07-01
```
