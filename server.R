library(shiny)
library(DT)

server <- function(input, output, session){
  
  NamesData <- data.frame(
    FName = c("John", "Jane", "Barbara"),
    LName = c("Doe", "Deer", "Ann")
  )
  
  output$NamesTable <- renderDT({
    DT::datatable(NamesData)
  })
  
  observeEvent(input$Refresh, {
    UpdatedNames <- data.frame(
      FName = c("Richard", "Karen", "Barbara"),
      LName = c("Carpenter", "Carpenter", "Ann")
    )
    
    DT::replaceData(proxy = dataTableProxy("NamesTable"), data = UpdatedNames)
  })
}