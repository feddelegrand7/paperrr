

#' Creates a badges
#'
#' @param text the text that will be displayed inside the badge
#' @param type the type
#'
#' @return
#' @export
#'
#' @examples

paper_badge <- function(text, type = NULL) {

      shiny::tags$span(class = paste("badge", type),
                       text)
}
