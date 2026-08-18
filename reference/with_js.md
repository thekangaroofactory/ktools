# Manage Package JavaScript Dependency

Checks whether a specific dependency is already inserted in the UI with
this function, and perform the insert if necessary.

## Usage

``` r
with_js(package, src, script, session = shiny::getDefaultReactiveDomain())
```

## Arguments

- package:

  the name of the package

- src:

  where to find the script (see htmltools::htmlDependency() for details)

- script:

  the script to include (relative to src)

- session:

  the session object of the Shiny server (or
  shiny::getDefaultReactiveDomain())

## Value

NULL (invisibly)

## Details

The function is designed to be called from another function that creates
/ updates a widget that requires JavaScript so that the user does not
need to manage the dependency manually.

When `session` is NULL, the function will return without doing anything.
This is useful when the function is called from ui side. The JavaScript
dependency will be attached next time the function is called from server
side. This is because the session\$userData object cannot be updated
from ui side.

## Examples

``` r
if (FALSE) { # \dontrun{
with_js(package = "ktag", src = "assets", script = "js/ktag.js",
session = shiny::getDefaultReactiveDomain())
} # }
```
