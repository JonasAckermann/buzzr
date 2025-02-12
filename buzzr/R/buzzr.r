#' Lint and Praise
#'
#' This function uses lintr to check for best practices and outputs positive comments.
#' @param file The R file to lint.
#' @export
lint_and_praise <- function(file) {
  library(lintr)
  # I do not know where to put this
  #install.packages("beepr")
  library(beepr)
  
  lintr_output <- lint(file)
  
  if (length(lintr_output) == 0) {
    beep()
    message("*EXTREMELY LOUD CORRECT BUZZER*")
  } else {
    for (issue in lintr_output) {
      message("You horse's ass! Don't do: ", issue$message)
    }
  }
}