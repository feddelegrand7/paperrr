#' An internal function for paper.css HTML depedency
#'
#' @noRd
#'


paper_dependency <- function() {
  htmltools::htmlDependency(
    name = "paper",
    version = "1.8.2",
    package = "paperrr",
    src = c(file = "paper"),
    stylesheet = "paper.min.css",
    all_files = FALSE
  )
}
