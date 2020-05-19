source("helpers.R")
# User Interface

ui <- fluidPage(
  navbarPage(
    title="scRNA-seq",
    theme=shinytheme("cerulean"),
    source("ui-index.R",local=TRUE)$value,
    ## =========================================================================== ##
    ## DOWNLOAD DATA TABS
    ## =========================================================================== ##
    source("ui-tab-fixed-data.R",local=TRUE)$value,
    ## =========================================================================== ##
    ## Visualization TABS
    ## =========================================================================== ##
    source("ui-tab-de-test.R",local=TRUE)$value,
    source("ui-tab-clustering.R",local=TRUE)$value,
    source("ui-tab-heat-maps.R",local=TRUE)$value,
    source("ui-tab-violin-plots.R",local=TRUE)$value
  )
)

# Server

server <- function(input, output, session){
  source("server-fixed-data.R",local = TRUE)
  source("server-de-test.R",local=TRUE)
  source("server-clustering.R",local=TRUE)
  source("server-heat-maps.R",local=TRUE)
  source("server-violin-plots.R",local=TRUE)
}

# Shiny App Object
shinyApp(ui = ui, server = server)