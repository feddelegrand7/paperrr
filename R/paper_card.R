
#' Title
#'
#' @param img_src
#' @param img_alt
#' @param title
#' @param subtitle
#' @param text
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#'
#' if (interactive()) {
#' ui <- fluidPage(
#'   paperize(),
#'   paper_card(
#'     img_src = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/R_logo.svg/724px-R_logo.svg.png",
#'     img_alt = "R logo",
#'     title = "The R Programming language",
#'     subtitle = "How Wikpedia defines R",
#'     text = "R is a programming language and free software environment for statistical
#'             computing and graphics supported by the R Foundation for
#'             Statistical Computing. The R language is widely used among
#'             statisticians and data miners for developing statistical software and data analysis."
#'   )
#' )
#'
#' server <- function(input, output) {}
#'
#' shinyApp(ui = ui, server = server)
#' }



paper_card <- function(img_src,
                       img_alt,
                       title,
                       subtitle,
                       text,
                       ...) {
  shiny::tags$div(
    class = "card",
    style = "width: 20rem;",
    shiny::tags$img(src = img_src, alt = img_alt),
    shiny::tags$div(
      class = "card-body",
      shiny::tags$h4(class = "card-title", title),
      shiny::tags$h5(class = "card-subtitle", subtitle),
      shiny::tags$p(class = "card-text", text),
      ...
    )
  )
}
