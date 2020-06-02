tabPanel("Dimension Plot",

  titlePanel("Dimension Plot"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(),
  
    # Main Panel
    mainPanel(
        plotOutput('dimplot1'),
        width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel
