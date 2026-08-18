# Update Renviron File

The function adds a variable to the project .Renviron file.

## Usage

``` r
update_r_environ(path = getwd(), key = "DEBUG", value = "TRUE")
```

## Arguments

- path:

  the path of the .Renviron file (default is working directory)

- key:

  the name of the variable (default = DEBUG)

- value:

  the value to be assigned to the variable (default = "TRUE")

## Value

TRUE if success, else FALSE

## Examples

``` r
if (FALSE) { # \dontrun{
update_r_environ(key = "MY_VAR", value = "my_value")
} # }
```
