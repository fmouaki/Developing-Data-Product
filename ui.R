library(shiny)
#############################
shinyUI(pageWithSidebar
        (
          titlePanel("Monthly Mortgage Payment Calculator"),
          sidebarPanel
          (
            numericInput('AmountIn', 'Loan Amount in dollars', 0, min = 0, max = 100000000, step = 1000),
            selectInput('MaturityIn', 'Loan term in years', c(5,10,15,20,30), selected = NULL, multiple = FALSE, selectize = TRUE, width = NULL),
            sliderInput('RateIn', 'Interest rate per year  %',value=3,min=0,max=20,step=0.5)
            
          ),
          mainPanel
          (
            h3('You entered'),
            h4('Loan Amount:'),
            verbatimTextOutput("Amount"),
            h4('Loan term in years'),
            verbatimTextOutput("Maturity"),
            h4('Interest rate per year  %' ),
            verbatimTextOutput("Rate"),
            h4('Monthly Payment:'),
            verbatimTextOutput("PMT"),
            hr(),
            br(),
            h3('Documentation'),
            p('Above application calculates the monthly payment amount given a principal amount the term in years and the interest rate of the loan.'),
            p('The loan amount is a numeric value between  0 to 100,000,000.'),
            p('The loan term options are in years and should be among the values shown in the dropdown.'),
            p('The loan interest rate is a numeric value between  1 to 20 and increments/decrements in steps of 0.5'),
            p('After the user has entered all these values, the submit button needs to be clicked for the application to calculate the monthly payment amount.'),
            p('On the right side of the input values, the user is shown the values that were entered for verification and at the very bottom is the value for the monthly payment amount.')
          )
        )
)