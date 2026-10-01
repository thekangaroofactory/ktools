# Update .Renviron File

Add an environment variable to the project.

## Usage

``` r
update_r_environ(path = getwd(), key, value)
```

## Arguments

- path:

  the path to the .Renviron file (default is working directory).

- key:

  a character string for the name of the variable.

- value:

  the value to be assigned to the variable.

## Value

a logical (TRUE if success, else FALSE)

## See also

[`use_r_environ()`](https://thekangaroofactory.github.io/ktools/reference/use_r_environ.md)

## Examples

``` r
if (FALSE) { # \dontrun{
update_r_environ(key = "MY_VAR", value = "my_value")
} # }
```
