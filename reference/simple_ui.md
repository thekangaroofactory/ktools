# Output Shiny UI

Basic wrappers around \*Output functions

## Usage

``` r
simple_ui(id, output, type = "ui", ...)
```

## Arguments

- id:

  the id of the module. Can be a vector of ids in case of sub module.

- output:

  the name of the output

- type:

  the type of output: ui (default), text, plot, table

- ...:

  other arguments to pass to the \*Output function

## Value

the ui object

## Examples

``` r
simple_ui(id = "my_module", output = "my_output")
#> <div id="my_module-my_output" class="shiny-html-output"></div>
```
