#' Lint and Praise
#'
#' This function uses lintr to check for best practices and outputs positive comments.
#' @param file The R file to lint.
#' @export
lint_and_praise <- function(file) {
  library(lintr)
  
  lintr_output <- lint(file)
  
  if (length(lintr_output) == 0) {
    message("Great job! No linting issues found.")
  } else {
    for (issue in lintr_output) {
      message("Keep up the good work! Consider improving: ", issue$message)
    }
  }
}