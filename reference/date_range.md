# Date Range

Compute specific range between two dates.

**\[deprecated\]**

## Usage

``` r
date_range(min, max, type = "this_year")
```

## Arguments

- min:

  a Date for the lower value.

- max:

  a Date for the higher value.

- type:

  an optional character vector, to set the strategy (default =
  "this_year").

## Value

a Date vector c(start, end).

## Examples

``` r
if (FALSE) { # \dontrun{
date_range(min = Sys.Date()-365, max = Sys.Date()+365, type = "this_year")
} # }
```
