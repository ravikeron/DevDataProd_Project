library(shiny)

shinyUI(
  
  pageWithSidebar(
    # Application title
    headerPanel("Organization Assessment"),
    sidebarPanel(
      h3('Application Description'),
      p('This sample application is developed to assess an organization for performance on 
        the basis of inputs received for  Optimized Business Process and Flexibility to Customize. 
        The inputs are taken and  applied to a function to arrive at the assessment score. 
        Based on the score the performance is classified as Good Performance or requires improvement'),
      h3('How the application works'),
      p('Enter values between 1 and 5 in the input fields for Optimized Business Process and 
        Flexibility to Customize under the Assessment Inputs and click on the submit button. The Results panel displays the assessment score
        and the where the organization stands. A small 
        formula(Optimized Business Process * Flexibility to Customize * 4) is used to arrive at the score'),
      p('If the input value is either below 1 or beyond 5 the score gives a message input out of bounds and 
        assessment is null')
    ),
    mainPanel(
      h3('Assessment Inputs'),
      numericInput('Optimized_Business_Process', 'Optimized Business Process', 1, min = 1, max = 5, step = 1),
      numericInput('Flexibility_to_Customize', 'Flexibility to Customize', 1, min = 1, max = 5, step = 1),
      submitButton('Submit'),
      
      h3('Results of Assessment'),
      h4('Optimized Business Process entry'),
      verbatimTextOutput("Optimized_Business_Process"),
      h4('Flexibility to Customize entry'),
      verbatimTextOutput("Flexibility_to_Customize"),
      h4('The Assessment score is '),
      verbatimTextOutput("Assessment"),
      h4('Organization is assesed as'),
      verbatimTextOutput('Assessment_text')
      
    )
  )
)