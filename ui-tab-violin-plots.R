tabPanel("Violin Plots",

  titlePanel("Inputs"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene4",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = FALSE,
                  selected = "LYZ"
      ),
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('violinplot'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel
