

paper_badge <- function(text, type = NULL) {


      shiny::tags$span(class = paste("badge", type),
                       text)



}
