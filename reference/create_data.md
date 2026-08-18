# Create Data

Builds an empty data.frame from a vector of colClasses.

## Usage

``` r
create_data(colClasses)
```

## Arguments

- colClasses:

  a named vector of classes to be used to build the data.frame.

## Value

a data.frame

## Details

The names of the vector will be used to name the columns and the values
to cast the columns to the given classes.

If NA is given as input for colClasses, then read.table() will return an
empty data.frame (0 obs. of 0 variables)

## Examples

``` r
create_data(colClasses = c(id = "numeric", date = "Date", comment = "character"))
#> [1] id      date    comment
#> <0 rows> (or 0-length row.names)
```
