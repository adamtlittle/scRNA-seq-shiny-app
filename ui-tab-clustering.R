tabPanel("Feature Plots",

  titlePanel("Feature Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(),
  
    # Main Panel
    mainPanel(
      plotOutput('featureplot1')
    )
  
  ) # end sidebarLayout
) # end tabpanel