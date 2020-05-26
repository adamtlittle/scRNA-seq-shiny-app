tabPanel("DE Tests",

  titlePanel("Differential Expression Tests"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("cell_type_1",
                  label = "Select First PBMC Subtype",#or Ensembl ID",
                  choices = levels(pbmc),
                  multiple = FALSE
      ), # end selectInput
      selectInput("cell_type_2",
                  label="Select Second PBMC Subtype",#or Ensembl ID",
                  choices = levels(pbmc),
                  multiple = FALSE,
      ), # end selectInput
      selectInput("select_gene",
                  label="RNA-Seq Gene Name (Select 1 or more)",#or Ensembl ID",
                  choices = NULL,
                  multiple = TRUE#,
                  #options = list(
                                  #placeholder = 
                                  #'Start typing to search for a gene name'# or ID',
                                 #) #,
                  ), # end selectInput
    ),
  
    # Main Panel
    mainPanel(
      tableOutput('detable')
    )
  
  ) # end sidebarLayout
) # end tabpanel
