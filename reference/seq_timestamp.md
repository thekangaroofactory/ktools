# Generate a sequence of timestamps

**\[deprecated\]**

## Usage

``` r
seq_timestamp(n = 2)
```

## Arguments

- n:

  an integer representing the desired output vector length (see details)

## Value

a numeric vector of timestamps

## Details

n is expected to receive an integer. If a decimal value is provided,
then round() will be used, which means that 2.8 will return a length 3
vector.

## Examples

``` r
if (FALSE) { # \dontrun{
seq_timestamp(n = 2)} # }
```
