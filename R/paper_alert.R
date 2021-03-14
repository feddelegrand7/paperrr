
paper_alert <- function(text, type = "primary") {

  shiny::tags$div(
    text,
    class = paste("alert", paste0("alert-", type))
  )
}

