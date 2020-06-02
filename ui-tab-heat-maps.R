tabPanel("Heat Maps",

  titlePanel("Inputs"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene3",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = TRUE,
                  selected = features
      ),
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('heatmap'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel