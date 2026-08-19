# Action Link Input(s)

Wrapper function around shiny::actionLink() to produce multiple action
links with unique inputId's and same target input.

## Usage

``` r
action_link(
  id,
  label,
  target,
  value = NULL,
  namespace = NULL,
  pattern = "action_link",
  as_character = FALSE
)
```

## Arguments

- id:

  a vector or list of ids.

- label:

  the label for the actionLink.

- target:

  the name of the target input.

- value:

  an optional value to pass to the target input

- namespace:

  the namespace function to use.

- pattern:

  the pattern to generate unique inputId's.

- as_character:

  a logical if the shiny.tag should be returned or a character value.

## Value

a list of shiny tags or character values.

## Details

The actionLink inputId will be computed based on `ns("pattern_id")` so
that it should be unique across different module instances.

All produced actionLinks will target the same input with different
values. `input$target` will receive the inputId, from which one can
extract the source id for example.

If used from the main server, skip `namespace`.

## Examples

``` r
if (FALSE) { # \dontrun{
# -- basic use case (single actionLink):
action_link(id = "foo", label = "click", target = "on_click")

# -- Send tag id to the target input:
# input$on_click will get "action_link_1", "action_link_2", "action_link_3"
action_link(id = c(1,2,3), label = "click", target = "on_click", value = NULL)

# -- Send specific pattern to the target input:
# input$on_click will get "do_this_1", "do_this_2" or "do_this_3"
action_link(id = c(1,2,3), label = "click", target = "on_click", pattern = "do_this")

# -- Send specific value to the target input:
# input$on_click will get "do_this" no matter what link is clicked
action_link(id = c(1,2,3), label = "click", target = "on_click", value = "do_this")

# -- Use with Shiny module:
action_link(id = c(1,2,3), label = "click", target = "on_click",
            pattern = "do_this", namespace = "mod1")
} # }
```
