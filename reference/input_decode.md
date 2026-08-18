# Decode Input Value

Split an input value with pattern "namespace-action_value" into a named
vector.

## Usage

``` r
input_decode(x)
```

## Arguments

- x:

  the (input) value to decode.

## Value

a named vector c(namespace, action, value) or c(action, value)

## Details

The function is used together with the
[`action_link()`](https://thekangaroofactory.github.io/ktools/reference/action_link.md)
/
[`onclick_event()`](https://thekangaroofactory.github.io/ktools/reference/onclick_event.md)
functions.

## Examples

``` r
input_decode("module1-add_leg_896")
#> namespace    action     value 
#> "module1" "add_leg"     "896" 
input_decode("add_leg_896")
#>    action     value 
#> "add_leg"     "896" 
```
