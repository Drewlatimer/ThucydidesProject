library(shiny)

shinyUI(fluidPage(
  titlePanel("Dependency Distance Stats"),
  
  sidebarLayout(
    sidebarPanel(position = "left",
    
    selectInput("select", label = h3("Choose a passage"), 
                choices = list("Book 1" = 1, "The Plague" = 2,
                               "Perikles' Last Speech" = 3), selected = 1)),
    mainPanel("Statistics", position = "right",
      textOutput("title"),
      textOutput("stats"),
      plotOutput("plots"))
  )
))

