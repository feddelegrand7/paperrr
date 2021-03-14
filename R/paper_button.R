
paper_button <- function(inputId,
                         label,
                         size = "default",
                         fill = NULL,
                         outline_col = NULL,
                         icon = NULL,
                         width = NULL,
                         ...) {

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
