# Create .Renviron File

Create .Renviron File

## Usage

``` r
use_r_environ(path = getwd())
```

## Arguments

- path:

  the path where to create the file.

## Value

a logical (see [`file.create()`](https://rdrr.io/r/base/files.html))

## Details

By default, `path` is set to the working directory.

## See also

[`update_r_environ()`](https://thekangaroofactory.github.io/ktools/reference/update_r_environ.md)

## Examples

``` r
if (FALSE) { # \dontrun{
use_r_environ()
} # }
```
