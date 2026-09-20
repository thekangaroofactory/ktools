# Action Link Input(s)

Wrapper function around shiny::actionLink() to produce multiple action
links with unique ids but same target input.

## Usage

``` r
action_link(
  id,
  pattern = "action_link",
  label = "",
  icon = NULL,
  target,
  value = "this.id",
  namespace = NULL,
  event = TRUE,
  as_character = FALSE,
  ...
)
```

## Arguments

- id:

  a vector or list of ids.

- pattern:

  the pattern to generate the actionLink ids.

- label:

  the label of the link.

- icon:

  an optional icon (passed to
  [`shiny::actionLink()`](https://rdrr.io/pkg/shiny/man/actionButton.html)).

- target:

  the name of the target input.

- value:

  an optional value to pass to the target input.

- namespace:

  an option character string, for the id of the module.

- event:

  a logical if shiny should treat the click as an event.

- as_character:

  a logical if the shiny.tag should be returned or a character value.

- ...:

  Named attributes to pass to the shiny::actionLink() function.

## Value

a list or a vector of length 1.

## Details

The actionLink `inputId` will be computed based on `namespace`,
`pattern` and `id` so that it should be unique across different module
instances.

All produced actionLinks will target the same input entry with different
values. By default, it will send the id of the link, which could be used
a character string to decode.

This behavior can be tuned to send a list (see
[`onclick_event()`](https://thekangaroofactory.github.io/ktools/reference/onclick_event.md)).
When `value` is a list, the id will be added to that list so that one
can detect what link was clicked.

When the target input belongs to a shiny module server, the id of the
module server instance should be passed to `namespace`.

## See also

[`onclick_event()`](https://thekangaroofactory.github.io/ktools/reference/onclick_event.md),
[`shiny::actionLink()`](https://rdrr.io/pkg/shiny/man/actionButton.html)

## Examples

``` r
if (FALSE) { # \dontrun{
# basic use case (single actionLink):
action_link(id = "foo", label = "click", target = "on_click")

# Send tag id to the target input:
# input$on_click will get "action_link_1", "action_link_2", "action_link_3"
action_link(id = c(1,2,3), label = "click", target = "on_click", value = NULL)

# Send specific pattern to the target input:
# input$on_click will get "do_this_1", "do_this_2" or "do_this_3"
action_link(id = c(1,2,3), label = "click", target = "on_click", pattern = "do_this")

# Send specific value to the target input:
# input$on_click will get "do_this" no matter what link is clicked
action_link(id = c(1,2,3), label = "click", target = "on_click", value = "do_this")

# Send a list of values to the target input:
# input$on_click will get list(a = 1, id = 1) after clicking on the first link
action_link(id = c(1,2,3), label = "click", target = "on_click", value = list(a = 1))

# Use with Shiny module:
action_link(id = c(1,2,3), label = "click", target = "on_click",
            pattern = "do_this", namespace = "module_id")
} # }
```
