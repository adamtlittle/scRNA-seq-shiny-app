tabPanel("Ridge Plots",

  titlePanel("Ridge Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene_ridge",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = TRUE
      ),
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('ridgeplot')
    )
  
  ) # end sidebarLayout
) # end tabpanel