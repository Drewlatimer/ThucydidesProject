library(shiny)
source("draft2.r")

#import data

a <- as.data.frame(read.csv("dd.csv", header = FALSE))

# get your statistics

b <- sd(as.numeric(a[,2])) #std deviation
c <- mean(as.numeric(a[,2])) #mean
d <- median(as.numeric(a[,2])) #median
e <- range(as.numeric(a[,2]))

f <- sort.int(as.numeric(a[,2]), decreasing = TRUE)

#server

shinyServer(function(input, output) {

  input$select <- renderText({ 
    paste("You have selected", input$select)
  })
  output$title <- renderText({ 
    paste("Standard Deviation of the Corpus' Depenency Distance", b,
          "Mean Dependency Distance of the Corpus", c,
          "Median Dependency Distance of the Corpus", d,
          "Range of Dependency Distances of the Corpus", e,
          "Your passage is", )
  })
  output$plot1 <- renderPlot({
    
  })
  
  })

