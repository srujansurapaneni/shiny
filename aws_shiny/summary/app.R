## Only run examples in interactive R sessions
ui <- fluidPage(
  tags$head(tags$link(rel="stylesheet",type="text/css",href="style1.css")),
  textAreaInput("caption", "Paste the text that needs to be summarized below", "input text here", width = "1000px"),
  verbatimTextOutput("value")
  )

server <- function(input, output) {
  output$value <- renderText({ 
  
                             #Start to summarize the input text here  
                             
                            b="hellothere"
                            system2('py',args=c('summry.py',b),stdout=TRUE)
                             
    
                             })
  }
  
shinyApp(ui, server)
