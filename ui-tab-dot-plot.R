tabPanel("Dot Plots",

  titlePanel("Dot Plots"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene_dot",
                  label="Multiple Gene Selection",
                  choices = rownames(pbmc),
                  multiple = TRUE,
                  selected = features,
      ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Multiple Gene Selection", 
              content = "Please select genes from the data you would like to 
              concurrently visualize.", 
              placement = "left"
            )
        ), # end selectInput
    ),
    # Main Panel
    mainPanel(
      plotOutput('dotplot'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel