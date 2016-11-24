#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(devtools)
if(!"LiquidGaugeR" %in% installed.packages())
  install_github("jayusor/LiquidGaugeR")

library(LiquidGaugeR)

# Define UI for application that draws a histogram
ui <- fluidPage(

  # Application title
  titlePanel("Liquid Gauge"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",post = "%",
                  "Select number:",
                  min = 1,
                  max = 100,
                  value = round(runif(1)*100))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      liquid_gaugeOutput("distPlot")

    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  output$distPlot <- renderLiquid_gauge({

    liquid_gauge(input$bins)

  })
}

# Run the application
shinyApp(ui = ui, server = server)

