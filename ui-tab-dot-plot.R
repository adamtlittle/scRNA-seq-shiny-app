tabPanel("Dot Plots",

  titlePanel("Dot Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene_dot",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = TRUE,
                  selected = features,
      ),
    ),
    # Main Panel
    mainPanel(
      plotOutput('dotplot'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel