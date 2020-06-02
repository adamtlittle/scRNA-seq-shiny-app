tabPanel("Feature Plots",

  titlePanel("Feature Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene2",
                  label="RNA-Seq Gene Name",
                  choices = rownames(pbmc),
                  multiple = FALSE
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Letter", content = "Choose a favorite", placement = "left"
            )
        ), # end selectInput
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('featureplot1'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel