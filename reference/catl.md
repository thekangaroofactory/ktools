# Wrapper Around Cat

This wrapper function aims at enabling a trace level mechanism that
relies on the [cat](https://rdrr.io/r/base/cat.html) function.

## Usage

``` r
catl(..., level = 1, debug = Sys.getenv("TRACE_LEVEL"), newline = TRUE)
```

## Arguments

- ...:

  R objects as defined in [cat](https://rdrr.io/r/base/cat.html)

- level:

  a numeric value indicating the level of trace

- debug:

  an optional (usually omitted) value to indicate the level of trace to
  be displayed

- newline:

  a logical. If TRUE (default), new line `"\n"` will be added

## Value

None (invisible NULL)

## Details

The goal is to provide a trace level mechanism that can be disabled in a
production context (as printing output to the console or file is
costly).

The different levels are left flexible.

By default, `debug` is set to `Sys.getenv("TRACE_LEVEL")` If the
environment variable is not set, no output will be produced (silent
mode) When the variable is set, the function will pass calls with level
\<= debug to the original [cat](https://rdrr.io/r/base/cat.html)
function.

The
[trace_level](https://thekangaroofactory.github.io/ktools/reference/trace_level.md)
function can be used to activate a specific trace level.

## Examples

``` r
# silent unless TRACE_LEVEL is set
catl("Awesome message here")

# force print no matter if TRACE_LEVEL is set
catl("Awesome message here", debug = 1)
#> Awesome message here 

# demonstrate trace levels
catl("Awesome message here", level = 2, debug = 1)
catl("Awesome message here", level = 1, debug = 2)
#> Awesome message here 
```
