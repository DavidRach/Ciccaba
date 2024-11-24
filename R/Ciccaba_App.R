#' Deploy a Shiny app to input daily monitoring recordings.
#'
#' @importFrom shiny runApp
#'
#' @return Launches the Shiny app
#' @export
#'
#' @examples
#'
#' Ciccaba_App()
Ciccaba_App <- function() {
    runApp(
    system.file("shiny", package="Ciccaba"),
    display.mode = "normal")
}
