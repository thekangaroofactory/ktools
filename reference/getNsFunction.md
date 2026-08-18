# Use Package Function in Do Call

Trick to solve the use of :: for package functions in do.call()

## Usage

``` r
getNsFunction(x)
```

## Arguments

- x:

  the name of the function, most probably as pkg::fun()

## Value

the value of the exported function name in namespace pkg

## Examples

``` r
if (FALSE) { # \dontrun{
getNsFunction("pkg::fun")
} # }
```
