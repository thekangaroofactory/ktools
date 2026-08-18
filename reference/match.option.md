# Match Options

matches a named list against the one expected in function arguments

## Usage

``` r
match.option(fun, arg, value)
```

## Arguments

- fun:

  the reference of the function, without ()

- arg:

  the name of the argument to test

- value:

  the value to test

## Value

The list of options, including missing ones

## Examples

``` r

# function expecting a list as argument
foo <- function(options = list(a = 1, b = 2)){}

# match user input
match.option(foo, "options", list(a = 1))
#> $a
#> [1] 1
#> 
#> $b
#> [1] 2
#> 
```
