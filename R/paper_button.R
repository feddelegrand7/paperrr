
paper_button <- function(inputId,
                         label,
                         size = "default",
                         fill = NULL,
                         outline_col = NULL,
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

  class_0 <- switch(size,

         "default" = "paper-btn",
         "large"   = "btn-large",
         "small"   = "btn-small",
         "block"   = "btn-block",

         )

  if (!is.null(fill) & is.null(outline_col)) {

    class <- paste(class_0, paste0("btn-", fill))

  } else if (!is.null(outline_col) & is.null(fill)) {

    class <- paste(class_0, paste0("btn-",
                                 outline_col,
                                 "-outline"))

  } else if (!is.null(outline_col) & !is.null(fill)) {

    stop("one of 'fill' or 'outline_col' must be NULL")

  } else {

    class <- class_0
  }

  p_button_final <- shiny::tagAppendAttributes(p_button,
                                               class = class)

  return(
    tagList(
      paper_dependency(),
      p_button_final
    )
  )


}

