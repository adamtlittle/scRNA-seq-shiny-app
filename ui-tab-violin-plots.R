tabPanel("Violin Plots",

  titlePanel("Inputs"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene4",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = TRUE
      ),
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('violinplot')
    )
  
  ) # end sidebarLayout
) # end tabpanel
