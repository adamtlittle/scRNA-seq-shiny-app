tabPanel("DE Tests",

  titlePanel("Differential Expression Tests"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("cell_type_1",
                  label = "Select First PBMC Subtype",
                  choices = levels(pbmc),
                  multiple = FALSE
      ), # end selectInput
      selectInput("cell_type_2",
                  label="Select Second PBMC Subtype",
                  choices = levels(pbmc),
                  multiple = FALSE,
      ), # end selectInput
      selectInput("select_gene",
                  label="RNA-Seq Gene Name (Select 1 or more)",
                  choices = rownames(pbmc),
                  multiple = TRUE
                  ),
      selectInput("test_type",
                  label="Select Test Type, default is Wilcox",
                  choices = list('wilcox', 'bimod', 'roc', 't', 'poisson', 'negbinom', 'LR', 'MAST', 'DESeq2'),
                  multiple = FALSE
      ),
    ),
    # Main Panel
    mainPanel(
      tableOutput('detable')
    )
  
  ) # end sidebarLayout
) # end tabpanel
