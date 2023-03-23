library(shiny)

# The User Interface (UI). In this case, it's simply a textbox and some text
# output.
ui <- fluidPage(
    textInput(           
        "text_input",         
        "Feed me some text!"  
    ),
    textOutput(         
        "text_output"   
    )
)

# Server without any reactive variables. 
basic_server <- function(input, output, session) {
    output$text_output <- renderText({
        if (nchar(input$text_input) > 0) {
            input$text_input
        } else {
            "I'm hungry!"
        }
    })
}

# Server with the output text put into a reactive variable (`text`).
reactive_server <- function(input, output, session) {
    text <- reactive({
        if (nchar(input$text_input) > 0) {
            input$text_input
        } else {
            "I'm hungry!"
        }
    })

    output$text_output <- renderText({
        text()
    })
}

shinyApp(ui, reactive_server)
