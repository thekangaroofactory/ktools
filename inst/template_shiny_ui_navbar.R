

# ------------------------------------------------------------------------------
# User-interface definition of the Shiny application
# ------------------------------------------------------------------------------

page_navbar(

  # -- Footer
  # fillable = FALSE,
  # footer = p(style = "font-size:9pt;margin-top:20px;", "© xxx"),

  # -- Header / css
  # header = tags$link(rel = "stylesheet", type = "text/css", href = "./css/style.css"),

  # -- Theme
  theme = bs_theme(
    bg = "#2d3037",
    fg = "#FFF",
    primary = "orange",
    secondary = "#ececec",
    # base_font = font_google("xxx")
    ),

  # -- Title
  title = "App Title",

  # -- First tab
  nav_panel(title = "Nav_1",
            class = "p-5",

            # -- content
            p("Something goes here")),

  # -- Second tab
  nav_panel(title = "Nav_2",
            class = "p-5",

            # -- content
            p("Something goes here too"))

)
