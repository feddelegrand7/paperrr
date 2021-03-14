

paper_card_plain <- function(title,
                             subtitle,
                             text,
                             ...) {
    shiny::tags$div(
      class = "card",
      style = "width: 20rem;",
      shiny::tags$div(
        class = "card-body",
        shiny::tags$h4(class = "card-title", title),
        shiny::tags$h5(class = "card-subtitle", subtitle),
        shiny::tags$p(class = "card-text", text),
        ...
      )
    )
  }









