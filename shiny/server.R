library(shiny)
shinyServer(
 function(input, output) {
   x <- reactive({input$id1/((input$id2/100)*(input$id2/100))})
   output$text1 <- renderText({x() })
 }
)


