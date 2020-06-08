tabPanel("Violin Plots",

  titlePanel("Inputs"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      selectInput("select_gene4",
                  label="Gene Selection",
                  choices = rownames(pbmc),
                  multiple = FALSE,
                  selected = "LYZ"
      ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Gene Selection", 
              content = "Please select the gene from the data you would like to visualize.", 
              placement = "left"
            )
        ), # end selectInput
    ),
  
    # Main Panel
    mainPanel(
      plotOutput('violinplot'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel
