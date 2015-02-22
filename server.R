library(shiny)
shinyServer(
    function(input,output,session){
         output$f = renderText({paste("You entered",input$c,"C which is =",as.numeric(input$c) *9/5+32,"F")})
         output$c = renderText({paste("You entered",input$f,"F which is =", (as.numeric(input$f)-32)*5/9,"C")})
 
  
    }
)