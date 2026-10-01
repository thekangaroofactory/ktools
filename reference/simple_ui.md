# Shiny Outputs

Wrapper around Shiny \*Output functions.

## Usage

``` r
simple_ui(id, output, type = "ui", ...)
```

## Arguments

- id:

  the id of the module.

- output:

  the name of the output.

- type:

  the type of output: "ui" (default), "text", "plot", "table".

- ...:

  other arguments to pass to the \*Output function.

## Value

an HTML tag.

## Details

`id` can be a vector of ids in case of sub module.

## Examples

``` r
simple_ui(id = "my_module", output = "my_output")
#> <div id="my_module-my_output" class="shiny-html-output"></div>
```
