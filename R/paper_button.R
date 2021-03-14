
paper_button <- function(inputId,
                         label,
                         size = "default",
                         fill = NULL,
                         icon = NULL,
                         width = NULL,
                         ...) {

  p_button <- shiny::actionButton(
                      inputId,
                      label,
                      icon,
                      width,
                      ...)

  p_button$attribs$class <- NULL


  if (size == "default") {

    return(
      tagList(
        paper_dependency(),
        p_button
      )
    )
  }

  class <- switch(size,

         "default" = "paper-btn",
         "large"   = "btn-large",
         "small"   = "btn-small",
         "block"   = "btn-block",

         )

  class_filled <- paste(class, paste0("btn-", fill))

  p_button_final <- shiny::tagAppendAttributes(p_button,
                                               class = class_filled)

  return(
    tagList(
      paper_dependency(),
      p_button_final
    )
  )


}

