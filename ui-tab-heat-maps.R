tabPanel("Heat Maps",

  titlePanel("Inputs"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene3",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = TRUE
      ),
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('heatmap')
    )
  
  ) # end sidebarLayout
) # end tabpanel