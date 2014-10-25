# vim: ts=2:sw=2
#Data Products
#project
# UI

library(shiny)
library(ggplot2)

shinyUI
(
  fluidPage
  (
    titlePanel("University Enrollment Application"),
    sidebarLayout
    (
      position = "right",
      sidebarPanel(
        selectInput("param", label = "From the following list, select the category by which to see the enrollment count.", choices =  c("Faculty Ranks" = "FacRankDesc", "Section Locations" = "Sections", "Enrollments per Term" = "Term", "Academic Level" = "SecLev", "Grade Distribution" = "Grade", "Enrollments per College" = "Colleges", "Student Locations" = "Students", "Student Programs" = "Programs", "Enrollments by Subject" = "Subj"), selected = NULL, multiple = FALSE, selectize = TRUE)
        ),



        mainPanel
        (
          #if (!grepl("Please", textOutput("param"))) { plotOutput("hist") },
          #var <- ifelse(grepl('Please', textOutput("param")), 1, 0),
          #h6("This is the condition created by the application: ", var),
          #conditionalPanel(textOutput('param') == 'Please make a selection', 'this is the conditional statement. IF branch'),
          #conditionalPanel(textOutput('param') != 'Please make a selection', 'this is the conditional statement. ELSE branch'),
          #conditionalPanel(var, 'this is the conditional statement. IF branch'),
          #conditionalPanel(var, 'this is the conditional statement. ELSE branch'),


            h3("Instructions"),
            p("This application displays the count of enrollments for the 2013-2014 Academic Year by the designated categories. To display the enrollment counts, please choose a category from the select box at the right. The options are listed below."), 
            p("Faculty Rank, enrollments by faculty rank", style = 'font-size: 10pt'),
            p("Section Locations, enrollments by the location of the course section", style = 'font-size: 10pt'),
            p("Term, enrollments by semester or term", style = 'font-size: 10pt'),
            p("Grades, enrollments by final grade", style = 'font-size: 10pt'),
            p("Student Locations, enrollments by the current home location of the student", style = 'font-size: 10pt'),
            p("Programs, enrollments by academic program (the display does not adjuct", style = 'font-size: 10pt'),
            p("Subject, enrollments by the department of the course section", style = 'font-size: 10pt'),
            h3(textOutput("param")),
            h3(textOutput("h")),
            plotOutput("hist")
            #h1(grepl(":upper", textOutput("param"), perl = TRUE))
            #if (textOutput("param") == grepl("\\w", textOutput("param"), perl = TRUE)) { h1(textOutput("param")) }
          #plotOutput("distPlot")
      )#mainPanel


    )#sidebarLayout
  )#fluidPage
)#shinyUI
