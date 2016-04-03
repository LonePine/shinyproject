# shiny project ui file
library(shiny)
# We look at the 'ToothGrowth' data set which explores the effect of Vitamin C
# on Tooth Growth in guinea pigs
library(datasets)

# Define the overall UI

shinyUI(bootstrapPage(

  selectInput(inputId = "n_breaks",
              label = "Number of bins in histogram (approximate):",
              choices = c(10, 20, 35, 50),
              selected = 20),

   plotOutput(outputId = "toothgrowthPlot", height = "300px")

      )
    )


