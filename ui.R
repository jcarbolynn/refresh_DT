library(shiny)
library(DT)

ui <- fluidPage(
  DTOutput("NamesTable"),
  actionButton("Refresh", "Refresh Table")
)