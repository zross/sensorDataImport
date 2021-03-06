# *****************************************************************************
# Create PostgreSQL Database ---------------------------
# *****************************************************************************

#' This function will run the shiny app.
#' Thanks to Dean Attali: http://bit.ly/1bDae2R
#' 
#' @param sdf
#' @return user.
#' @examples
#' add(1, 1)
#' add(10, 1)
#' @export
runShiny <- function(example, package="sensorDataImport") {
  # locate all the shiny app examples that exist
  #example<-"nyc"
  validExamples <- list.files(system.file("shiny-apps", package = package))
  print(validExamples)
  
  validExamplesMsg <-
    paste0(
      "Valid examples are: '",
      paste(validExamples, collapse = "', '"),
      "'")
  
  
  # if an invalid example is given, throw an error
  if (missing(example) || !nzchar(example) || !example %in% validExamples) {
    stop(
      'Please run `runExample()` with a valid example app as an argument.\n',
      validExamplesMsg,
      call. = FALSE)
  }
  
  # find and launch the app
  appDir <- system.file("shiny-apps", example, package=package)
  #pp
  shiny::runApp(appDir, launch.browser = TRUE)
  #shiny::runApp("C:/Users/Zev Ross/R/win-library/3.1/bikeData/shiny-apps/nyc")
}