tabPanel("Feature Plots",

  titlePanel("Feature Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene2",
                  label="Gene Selection",
                  choices = rownames(pbmc),
                  selected = "LYZ",
                  multiple = FALSE
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Gene Selection", 
              content = "Please select the gene from 
              the data you would like to visualize. 
              Refer to the dimension plot 
              to map highlighted areas to cell type clusters.", 
              placement = "left"
            )
        ), # end selectInput
    ),
  
    # Main Panel
    mainPanel(
      plotlyOutput('featureplot1'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel
