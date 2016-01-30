library(shiny)


shinyUI(
  
  
  fluidPage(
    
    titlePanel("Price of Consumption over one year"),
    
    # Generate a row with a sidebar
    sidebarLayout(
      
      # sidebar with one input
      sidebarPanel(
        selectInput("energy", "Energy Types:",
                    choices=c("Gas", "Electricity", "Water")),
        selectInput("year", "Year:",
                    choices=c("2012", "2013", "2014")),
        hr(),
        helpText("Data from my renovated house (since 2012).", br(),
                 "Select the type of energy and the year to get the appropriate bar plot.")),
      
      # spot for the barplot
      mainPanel(
        plotOutput("plot1")))))

###References- youtube,stackoverflow,github