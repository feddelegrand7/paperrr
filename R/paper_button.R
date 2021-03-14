
#' Creates a Shiny actionButton styled with paperCSS
#'
#' @param inputId the input ID that will be used to access the butfon
#' @param label the label of the button
#' @param size the size of the button, either the 'default', 'small',
#' 'large', 'block'. Defaults to 'default'.
#' @param fill the color that will be used to fill the button
#' @param outline_col the color of the outline of the button
#' @param icon an optional icon() to appear on the button
#' @param width the width of the button
#' @param ... names attributes to be applied to the button
#'
#' @return a Shiny button styled with paperCSS
#' @export
#'
#' @examples

paper_button <- function(inputId,
                         label,
                         size = "default",
                         fill = NULL,
                         outline_col = NULL,
                         icon = NULL,
                         width = NULL,
                         ...) {


  if (!(size %in% c('default', 'small', 'large', 'block'))) {

    stop("the 'size' parameter can take the following values:
         'default', 'small', 'large', 'block'")

  }

  # We create a Shiny Button
  p_button <- shiny::actionButton(
    inputId,
    label,
    icon,
    width,
    ...
  )

  # We remove the styling from the button by removing the class attribute
  p_button$attribs$class <- NULL

  # we transform the user input to the adequate class
  class_0 <- switch(size,

    "default" = "paper-btn",
    "large"   = "btn-large",
    "small"   = "btn-small",
    "block"   = "btn-block",
  )

  # below we add the fill and outline classes to the basic class

  ############# fill and outline_col block #######################

  if (!is.null(fill) & is.null(outline_col)) {
    class <- paste(class_0, paste0("btn-", fill))
  } else if (!is.null(outline_col) & is.null(fill)) {
    class <- paste(class_0, paste0(
      "btn-",
      outline_col,
      "-outline"
    ))
  } else if (!is.null(outline_col) & !is.null(fill)) {
    stop("one of 'fill' or 'outline_col' must be NULL")
  } else {
    class <- class_0
  }

  ##############################################################

  # We append the final attribute to the basic shiny button
  # so that we get out paper attribute

  p_button_final <- shiny::tagAppendAttributes(p_button,
    class = class
  )

  # Finally, we return the paper button with the paper.min.css

  return(
      p_button_final
  )
}
