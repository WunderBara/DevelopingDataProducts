library(shiny)
shinyUI(pageWithSidebar(
 headerPanel("Calculate your BMI"),
 sidebarPanel(
 h3('Enter your values'),
 numericInput('id1', 'Your weigth (Kilograms)', 60.5, min = 50, max = 150, step = 1),
 numericInput('id2', 'Your heigth (Centimeters)', 175, min = 140, max = 210, step = 1),
 submitButton('Submit')
 ),
 mainPanel(
 h3("Introduction"),
 p("BMI (Body Mass Index) is a measurement of body fat based on height and weight that applies to both men and women between the ages of 18 and 65 years."),
 p("BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 20 and 25. A score below 20 indicates that you may be underweight; a value above 25 indicates that you may be overweight."),
   
 h3("Your BMI results"),
 textOutput('text1'),
 
 h3("BMI Classification"),
 p("18.5 or less - Underweight"),
 p("18.5 to 24.99 - Normal Weight"),
 p("25 to 29.99 -	Overweight"),
 p("30 or above - Obesity")
 )
))

