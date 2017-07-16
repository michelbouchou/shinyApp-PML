

library(shiny)
library(scales)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$plot <- renderPlot({
          set.seed(18)
          nbPoints <- input$numeric
          opacity <- input$opacity
          dataX <- runif(nbPoints, min = -100, max = 100)
          dataY <- runif(nbPoints, min = -100, max = 100)
          dataType <- ifelse(input$showColor, "blue", "black")
          df <- data.frame(X = dataX, Y = dataY)
          plot(df$X, df$Y, col = alpha(dataType, opacity), pch = 16)
    
  })
  
})
