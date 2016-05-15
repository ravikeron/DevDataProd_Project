
library(shiny)

# Calculation for assessment score

assess_calculation <- function(a, b) {
if (a >= 1 & a <= 5 & b >= 1 & b <= 5)
  {v1 <- a * b 
v2 <- v1*4
return(v2) }
  else {return("Input out of bounds")}
}
#Final conclusion based on the assessment score
final_assessment <- function(i1) {
  if(i1 == "Input out of bounds"){return("")}
  else if (i1 >= 60) {
    return("Good Performance")}
  else if (i1 <60) {
    return("Improvement required")
  }
    
  }
    
    

shinyServer(
  function(input, output) {
    
      output$Optimized_Business_Process <- renderPrint({input$Optimized_Business_Process })
      output$Flexibility_to_Customize <- renderPrint({input$Flexibility_to_Customize})
      output$Assessment <- renderPrint({assess_calculation(input$Optimized_Business_Process, input$Flexibility_to_Customize)})
      
      output$Assessment_text <- renderPrint({final_assessment(assess_calculation(input$Optimized_Business_Process, input$Flexibility_to_Customize))})
 
        }
)