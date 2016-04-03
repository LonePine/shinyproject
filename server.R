# server file for shinyproject
library(shiny)
library( datasets)

# We look at the 'ToothGrowth' data set which explores the effect of Vitamin C
# on Tooth Growth in guinea pigs

# Define a server for the Shiny App
shinyServer(function(input, output) {
  # Fill in the spot we created for a plot
  output$toothgrowthPlot <- renderPlot({
 
    hist (ToothGrowth$len, col = "Yellow",
    breaks = as.numeric(input$n_breaks))
    abline(v = median(ToothGrowth$len),col = "blue", lwd = 4 )

  } )
} )
