source("helpers.R")
# User Interface
pbmc <- readRDS('pbmc.rds')
features <- c("LYZ", "CCL5", "IL32", "PTPRCAP", "FCGR3A", "PF4")
main_width <- 6

## =========================================================================== ##
## User Interface
## =========================================================================== ##

ui <- fluidPage(
  navbarPage(
    title="STRAVA",
    theme=shinytheme("cerulean"),
    ## =========================================================================== ##
    ## Homepage
    ## =========================================================================== ##
    source("ui-index.R",local=TRUE)$value,
    ## =========================================================================== ##
    ## Visualization Tabs
    ## =========================================================================== ##
    source("ui-tab-de-test.R",local=TRUE)$value,
    source("ui-tab-fixed-data.R",local=TRUE)$value,
    source("ui-tab-clustering.R",local=TRUE)$value,
    source("ui-tab-heat-maps.R",local=TRUE)$value,
    source("ui-tab-violin-plots.R",local=TRUE)$value,
    source("ui-tab-ridge-plot.R",local=TRUE)$value,
    source("ui-tab-dot-plot.R",local=TRUE)$value
  )
)

## =========================================================================== ##
## Server
## =========================================================================== ##

server <- function(input, output, session){
  source("server-index.R",local=TRUE)
  source("server-de-test.R",local=TRUE)
  source("server-fixed-data.R",local = TRUE)
  source("server-clustering.R",local=TRUE)
  source("server-heat-maps.R",local=TRUE)
  source("server-violin-plots.R",local=TRUE)
  source("server-ridge-plot.R",local=TRUE)
  source("server-dot-plot.R",local=TRUE)
}

## =========================================================================== ##
## Shiny App Object
## =========================================================================== ##

shinyApp(ui = ui, server = server)


