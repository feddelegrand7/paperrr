

#' Title
#'
#' @param title
#' @param subtitle
#' @param text
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#' if (interactive()) {
#' ui <- fluidPage(
#'   paperize(),
#'   paper_card_plain(
#'     title = "The R Programming language",
#'     subtitle = tags$a(href = "https://google.com", "click here"),
#'     text = "R is a programming language and free software environment for statistical
#'             computing and graphics supported by the R Foundation for
#'             Statistical Computing. The R language is widely used among
#'             statisticians and data miners for developing statistical software and data analysis.",
#'     h1(a(href = "https://google.com", "click here")),
#'
#'   )
#' )
#'
#' server <- function(input, output) {}
#' shinyApp(ui = ui, server = server)
#' }


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









