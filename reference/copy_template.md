# Copy Package Template Files

Copy Package Template Files

## Usage

``` r
copy_template(template, pkg = "ktools", path = getwd(), filename = NULL)
```

## Arguments

- template:

  the name of the template file to be copied

- pkg:

  the name of the package where to find the template (default = ktools)

- path:

  destination path where to copy the template (default = working
  directory)

- filename:

  the name of the copy (optional)

## Value

the output of the file.copy function call

## Details

When `filename` is not provided, the copy will have same name as the
template without the "template\_" prefix pattern.

An error will be thrown if the template file is not found.

## Examples

``` r
if (FALSE) { # \dontrun{
copy_template(template = "template_shiny_server.R", path = "shinyapp", filename = "my_server.R")
} # }
```
