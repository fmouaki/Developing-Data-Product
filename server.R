pmt1 <- function(AmountIn, MaturityIn, RateIn) {
  
  Amount<-as.numeric(AmountIn)
  Maturity<-as.numeric(MaturityIn)
  YRRate<-as.numeric(RateIn)
  MonthlyRate<-YRRate/12/100
  months<-Maturity*12
  pmt(Amount,months,MonthlyRate)
  
}


library(shiny)
library(tvm)  

shinyServer
(
  
  function(input, output) 
  {
    
    
    output$Amount <- renderText({input$AmountIn})
    output$Maturity <- renderText({input$MaturityIn})
    output$Rate <- renderText({input$RateIn})
    
    output$PMT<-renderText({pmt1(input$AmountIn,input$MaturityIn,input$RateIn)})
    
    
    
    
    
  }
)
