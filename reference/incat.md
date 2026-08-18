# Indented Cat

**\[experimental\]**

## Usage

``` r
incat(x, sep = "")
```

## Arguments

- x:

  R objects (see cat function for details)

- sep:

  a character vector of strings to append after each element (default is
  "").

## Value

None (invisible NULL)

## Details

When the function detects a direct call (i.e. not from another
function), then it basically just do cat otherwise it finds the calling
function name and print indented output based on callstack position.

## Examples

``` r
if (FALSE) { # \dontrun{
incat("This message")
} # }
```
