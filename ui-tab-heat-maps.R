tabPanel("Heat Maps",

  titlePanel("Inputs"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(),
  
    # Main Panel
    mainPanel(
      plotOutput('heatmap')
    )
  
  ) # end sidebarLayout
) # end tabpanel