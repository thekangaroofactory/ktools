# Copy Package Template Files.

Copy Package Template Files.

## Usage

``` r
copy_template(template, pkg = "ktools", path = getwd(), filename = NULL)
```

## Arguments

- template:

  the name of the template file to be copied.

- pkg:

  the name of the package where to find the template.

- path:

  destination path where to copy the template (default = working
  directory).

- filename:

  an optional name for the copy.

## Value

a logical (see [`file.copy()`](https://rdrr.io/r/base/files.html)

## Details

By default, the function addresses templates delivered along with this
package (i.e. `pkg` = "ktools").

When `filename` is not provided, the copy will have same name as the
template without the "template\_" prefix pattern.

An error will be thrown if the template file is not found.

## Examples

``` r
if (FALSE) { # \dontrun{
copy_template(template = "template_shiny_server.R", path = "shinyapp", filename = "my_server.R")
} # }
```
