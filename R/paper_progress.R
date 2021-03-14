

paper_progress <- function(progression, style = "primary") {

  shiny::tags$div(class = "row",
    shiny::tags$div(class = "progress margin-bottom",
      shiny::tags$div(class = paste0("bar ", style, " w-", progression))
    )

  )











}
