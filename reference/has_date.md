# Find Date Column(s)

Detects Date and/or POSIXct column(s) in a data.frame

## Usage

``` r
has_date(x, single = TRUE)
```

## Arguments

- x:

  a data.frame object

- single:

  a logical (default TRUE) if it should return only the first column

## Value

the name of the column(s) or NA if no date column is found

## Examples

``` r
has_date(data.frame(date = Sys.Date()))
#> [1] "date"
has_date(data.frame(date = Sys.Date(), update = Sys.Date()), single = FALSE)
#> [1] "date"   "update"
has_date(data.frame(date = Sys.Date(), update = Sys.Date()), single = TRUE)
#> [1] "date"
```
