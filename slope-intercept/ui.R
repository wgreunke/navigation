#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Navigation"),

    # Sidebar with a slider input for number of bins
    fluidRow(
        column(4,
            
            selectInput("assumed_lat","What is your assumed latitude?", c(30,31,32,33,34)),
            selectInput("north_or_south", "Are you in the North or South?", c("N","S"))
            

        ),#column
        column(8,sliderInput("bins",
                              "Number of bins:",
                              min = 1,
                              max = 50,
                              value = 30) )#column 8
        ),#fluidRow
        
        # Show a plot of the generated distribution
        fluidRow( column(8
                              
            
        ),#column
        column(4, plotOutput("distPlot"))
        )#fluidrow

    )#fluidpage
)#ShinyUI

