#' Title
#'
#' @param title
#' @param meta
#' @param text_lead
#' @param text
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#'
#' if (interactive()) {
#'
#'ui <- fluidPage(
#'  paperize(),
#'
#'  paper_article(
#'    title = "Introduction to paperrr",
#'    meta = "written by Mohamed El Fodil Ihaddaden",
#'    text_lead = "the package relies on the awesome paperCSS library.
#'                 Lorem ipsum dolor sit, amet consectetur adipisicing elit.
#'                 Quos, laborum commodi eaque vitae ad, labore minus necessitatibus,
#'                 fugiat et nemo in impedit! Facilis harum dolorem voluptates,
#'                 voluptatibus laboriosam facere aut?",
#'    text = "Lorem ipsum, dolor sit amet consectetur adipisicing elit.
#'            Debitis nobis quisquam enim amet explicabo maxime,
#'            quasi temporibus fugit, ducimus velit animi voluptas,
#'            autem repellendus optio!
#'            Officiis fugiat voluptas cum blanditiis!
#'            Lorem ipsum dolor sit amet consectetur adipisicing elit.
#'            Quis eius quidem dignissimos. Quod ratione officiis fugit,
#'            provident, assumenda ullam aliquid fuga aspernatur sapiente excepturi,
#'            consectetur corporis qui voluptatem nisi adipisci."
#'  )
#')
#'
#'server <- function(input, output) {}
#'
#'shinyApp(ui = ui, server = server)
#' }
#'




paper_article <- function(title,
                          meta,
                          text_lead,
                          text,
                          ...) {


  shiny::tags$article(

    class = "article",

    shiny::tags$h1(
      class = "article-title",
      title
    ),

    shiny::tags$p(
      class = "article-meta",
      meta
    ),

    shiny::tags$p(
      class = "text-lead",
      text_lead
    ),

    shiny::tags$p(
      text
    ),

    ...

  )

}





