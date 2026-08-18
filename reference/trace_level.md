# Set Trace Level

A helper function to set the trace level that will be printed by
[catl](https://thekangaroofactory.github.io/ktools/reference/catl.md)

## Usage

``` r
trace_level(level = NULL)
```

## Arguments

- level:

  an integer (or NULL)

## Value

Nothing or the active trace level.

## Details

`level` is used to define the level of trace printed by
[catl](https://thekangaroofactory.github.io/ktools/reference/catl.md).
Use 0 to set the trace OFF or NULL to get the current trace level.

## See also

[`catl()`](https://thekangaroofactory.github.io/ktools/reference/catl.md)

## Examples

``` r
trace_level()
#> [1] NA
trace_level(2)
#> Trace level = 2
trace_level(0)
#> Trace level = OFF
```
