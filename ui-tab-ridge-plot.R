tabPanel("Feature Plots",

  titlePanel("Ridge Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(),
  
    # Main Panel
    mainPanel(
      plotOutput('ridgeplot')
    )
  
  ) # end sidebarLayout
) # end tabpanel