## Only run examples in interactive R sessions
ui <- fluidPage(
  textAreaInput("caption", "Paste the text that needs to be summarized below", "input text here", width = "1000px"),
  verbatimTextOutput("value")
  )

server <- function(input, output) {
  output$value <- renderText({ 
  
                             #Start to summarize the input text here  
                             library(algorithmia)
                             input <- input$caption
                             client <- getAlgorithmiaClient("simITYeMiL/Q0xcxqNBy8oM5ma71")
                             algo <- client$algo("nlp/Summarizer/0.1.6")
                             result <- algo$pipe(input)$result
                             #inputvar <- input$caption 
                             #gsub("e", "", inputvar)
                             #genericSummary(inputvar,k=1)
    
                             })
  }
  
shinyApp(ui, server)
