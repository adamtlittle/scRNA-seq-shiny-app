source("helpers.R")
# User Interface

ui <- fluidPage(
  navbarPage(
    title="Oh, hello.",
    theme=shinytheme("cerulean"),
    source("ui-index.R",local=TRUE)$value,
    ## =========================================================================== ##
    ## DOWNLOAD DATA TABS
    ## =========================================================================== ##
    source("ui-tab-fixed-data.R",local=TRUE)$value
    ## =========================================================================== ##
    ## Visualization TABS
    ## =========================================================================== ##
  )
)

# Server

server <- function(input, output, session){
  source("server-fixed-data.R",local = TRUE)
}

# Shiny App Object
shinyApp(ui = ui, server = server)