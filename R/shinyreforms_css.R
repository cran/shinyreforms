#' Constructs a shinyreforms dependency.
#' @return A list containing the shinyreforms style dependency.
#' @importFrom htmltools htmlDependency
shinyReformsDependency <- function() {
  list(htmltools::htmlDependency(
    "shinyreforms",
    as.character(utils::packageVersion("shinyreforms")),
    c(file = system.file(package = "shinyreforms")),
    stylesheet = "shinyreforms.css"
  ))
}

#' Adds a shinyreforms dependency to a tag object.
#'
#' @param htmlTag A shiny HTML tag.
#'
#' @return The input htmlTag with the shinyreforms.css dependency
#'  added.
#'
#' @examples
#' if(interactive()){
#' shinyReformsPage(shiny::fluidPage(...))
#' }
#' @importFrom htmltools htmlDependencies
#' @export
shinyReformsPage <- function(htmlTag) {
  dependency <- shinyReformsDependency()

  old <- attr(htmlTag, "html_dependencies", TRUE)

  htmltools::htmlDependencies(htmlTag) <- c(old, dependency)
  htmlTag
}
