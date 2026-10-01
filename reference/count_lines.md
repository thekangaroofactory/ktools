# Code Stats

Builds a basic code counts report.

## Usage

``` r
count_lines(con, verbose = FALSE)
```

## Arguments

- con:

  a connection object or a character string (passed to
  [readLines](https://rdrr.io/r/base/readLines.html)).

- verbose:

  a logical (FALSE by default) if counts should be printed to the
  console.

## Value

a named vector.

## Details

The report will contain the following information:

- total

- code

- comment

- documentation

- spacing

Code lines ending with a comment are counted as code lines (hence
ignored from comments).

## See also

[`scan_code()`](https://thekangaroofactory.github.io/ktools/reference/scan_code.md)

## Examples

``` r
infile <- tempfile()

lines <- "#' This\n#'\n\n# comment\np <- 1\n\nif(p==1) print(p)\n"

writeLines(lines, infile)
count_lines(infile)
#>   total    code comment     doc spacing 
#>       8       3       1       1       3 
```
