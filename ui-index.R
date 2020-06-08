tabPanel("Home Page",
         
  titlePanel("sc-RNA Visualization with STRAVA"),
         
  # Organize Components into Panels
  sidebarLayout(
           
  # Left Side Panel
  sidebarPanel(
    tags$p("Ideally, we would like the user to be able to upload their own 
           processed data sets, but this is outside of the scope of this project."),
           
    tags$p("This app will eventually accept .rds files pre-processed with Seurat."),
    
    #fileInput('file', 'Choose .rds file to upload',
              #accept = '.rds',
              #)
  ),
           
  # Main Panel
  mainPanel(
    tags$p("STRAVA stands for 'Single-cell Transcriptomics RNA Analytical Visualization Application.'"),
    
    tags$p("The purpose of this app is to allow researchers to identify and interpret points 
    of heterogeneity from single-cell transcriptomic measurements through differential 
    expression testing and multiple visualizations."),
    
    tags$p("All data pre-processing, analysis, differential expression testing, and 
    visualization were done using the R package Seurat. The web app was developed using Shiny."),
    
    width = main_width
    )
           
 ) # end sidebarLayout
) # end tabpanel

