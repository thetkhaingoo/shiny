library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Temperature Converter F to C and Vice Versa"),
    sidebarPanel(
        h3("Fahrenheit to celsius conversion"),
        p("Fahrenheit is a temperature scale used for describing temperatures in Fahrenheit degrees (°F)
It is most commonly used in the United States in weather forecasts and to describe temperatures inside houses, offices, etc."),
        p("Celsius, or centigrade, is also a temperature scale that describes temperatures in Celius degrees (°C) and it is used in (almost) everywhere else outside the US."),
        strong("Some notable degrees"),
        p("212 °F = 100 °C = boiling point of water"),
        p("32 °F = 0 °C = freezing point of water"),
        p("The conversion formulas between °F and °C are:"),
        p("[°C] = ([°F] - 32) × 5/9"),
        p("[°F] = [°C] × 9/5 + 32")
        
 
    ),

    mainPanel(
         h4("To convert from Fahrenheit to Celsius"),
         numericInput('f','Please enter Fahrenheit:',32),
         span(textOutput('c'),style="color:blue"),
         br(),
         br(),
         h4("To convert from Celsius to Fahrenheit"),
         numericInput('c','Please enter Celsius   :',0),
         span(textOutput('f'),style="color:blue"),
         br(),
         br(),
         h4("How to use this application"),
         p("This application is built for Developing Data Product course 
          offered by Johns Hopkins Bloomberg School of Public Health
          on Coursera. The app is built with Shiny in R-Studio and 
          hosted on Shiny.io site. Basically, this application helps
          users convert Fahrenheit to Celsius and vise versa."),
         p("To convert degree from Fahrenheit to Celsius, the user need to 
          type in the degree (just the number not sympol or any other
          character) to the box below Please enter Fahrenheit: and the 
          app will convert and display the Celsius scale degree 
          below."),
         p("Similarly, to convert from Celsius to Fahrenheit, the user can 
          use the Please enter Celsius : box. ")
        )
    
    
    ))