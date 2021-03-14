

#' Title
#'
#' @param progression
#' @param style
#'
#' @return
#' @export
#'
#' @examples
#' if (interactive()) {
#' ui <- fluidPage(
#'   paperize(),
#'   paper_progress(progression = 50),
#'   paper_progress(progression = 50, style = "success"),
#'   paper_progress(progression = 50, style = "danger"),
#'   paper_progress(progression = 50, style = "secondary")
#' )
#'
#' server <- function(input, output) {}
#'
#' shinyApp(ui = ui, server = server)
#' }


paper_progress <- function(progression,
                           label = paste0(progression,"%"),
                           style = "primary") {

  shiny::tags$div(class = "row",
    shiny::tags$div(class = "progress margin-bottom",
      shiny::tags$div(class = paste0("bar ", style, " w-", progression), label)
    )

  )











}
