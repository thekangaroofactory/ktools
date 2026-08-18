# Match Lists

Matches a named list against a reference.

## Usage

``` r
match.list(x, reference)
```

## Arguments

- x:

  a named list to check.

- reference:

  a named list to use as a reference.

## Value

a matched list

## Details

The function will drop any element from `x` that does not fit with a
name found in `reference` and add missing ones.

It will also check that elements in `x` have same classes as matching
element in `reference`.

## Examples

``` r
match.list(x = list(foo = 1), reference = list(foo = 0, bar = "dummy"))
#> $foo
#> [1] 1
#> 
#> $bar
#> [1] "dummy"
#> 
```
