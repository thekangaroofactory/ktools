# Source Code

Source all files from a given path.

## Usage

``` r
source_code(path, verbose = FALSE)
```

## Arguments

- path:

  a character vector of the path to explore.

- verbose:

  a logical value (default = FALSE). If TRUE, then details about sourced
  files will be sent to the console.

## Value

an integer, how many functions have been attached to the environment.

## Details

Given path is explored with "\*.R" extension pattern. Sub-directories
will be explored as well.

## Examples

``` r
if (FALSE) { # \dontrun{
source_code("./R")
} # }
```
