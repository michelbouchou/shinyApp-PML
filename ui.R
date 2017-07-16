library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("People in a city"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
            numericInput("numeric", "How many points plotted ?",
                         value = 1000, min = 500, max = 3000, step = 10),
            sliderInput("opacity",
                   "Ratio of opacity :",
                   min = 0,
                   max = 1,
                   value = 100),
            checkboxInput("showColor", "Blue color ?", value = FALSE)
       
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
            h3("Some kind of plot"),
            plotOutput("plot")
    )
  )
))
