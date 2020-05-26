tabPanel("Feature Plots",

  titlePanel("Feature Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene2",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = TRUE
                  ),
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('featureplot1')
    )
  
  ) # end sidebarLayout
) # end tabpanel