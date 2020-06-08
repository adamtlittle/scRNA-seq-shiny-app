tabPanel("Dimension Plot",

  titlePanel("Dimension Plot"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      tags$p("This dimension plot was created using UMAP non-linear dimensional reduction."),
      tags$p("Under normal circumstances, this analysis would not lead to the automatic 
             discovery and naming of cells. However, cell names were added to clusters 
             for the sake of illustrating the capabilities of non-linear dimensional reduction.")
    ),
  
    # Main Panel
    mainPanel(
        plotlyOutput('dimplot1'),
        width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel
