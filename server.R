# vim: ts=2:sw=2
#Data Products
#project
# SERVER

library(shiny)
library(ggplot2)

df <- read.csv("data/df.csv")

shinyServer
(
  function(input, output) 
  {
    output$param <- renderText({paste("You have selected ", input$param)})
    h <- renderTable({df[,input$param]})
    output$hist <- renderPlot(
      {ggplot(df, aes(x = df[,input$param]), environment = environment()) +
      #{ggplot(df, aes(x = FacRankDesc), environment = environment()) +
          geom_histogram() +
          theme_bw() +
          ggtitle(paste0("Count of ", input$param)) +
          ylab(paste0("Number of Enrollments by ", input$param)) +
          xlab(input$param) +
          theme(axis.text = element_text(size = 8)) + 
          coord_flip() 
},
height = 800
)
}
)
#p <- ggplot(df, aes(x = Term), environment = environment()) + geom_bar() + theme_bw() + ggtitle(paste0("Count of Term")) + ylab(paste0("Number of Enrollments by  Term")) + xlab("Term") + theme(axis.text = element_text(size = 8)) + coord_flip() 
