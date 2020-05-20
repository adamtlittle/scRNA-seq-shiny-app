tabPanel("DE Tests",

  titlePanel("Differential Expression Tests"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(),
  
    # Main Panel
    mainPanel(
      tableOutput('detable')
    )
  
  ) # end sidebarLayout
) # end tabpanel
