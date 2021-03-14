#' Apply the paperCSS styling
#'
#' @return called for the side effect of applying the
#' paperCSS styling using a CDN
#'
#' @description the function must be called only once,
#' preferably at the beginning of the Shiny app.
#'
#' @export
#'
#' @examples
#'
#' if (interactive()) {
#'
#' ui <- fluidPage(
#'
#'     paperize(),
#'
#'     h1("Hello paperrr")
#' )
#'
#' server <- function(input, output) {}
#'
#' shinyApp(ui, server)
#' }

paperize <- function() {

  htmltools::tags$head(tags$link(
    href = "https://unpkg.com/papercss@1.8.2/dist/paper.min.css",
    rel="stylesheet"
  ))

}
