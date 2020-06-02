tabPanel("DE Tests",

  titlePanel("Differential Expression Tests"),

  # Organize Components into Panels
  sidebarLayout(
  
   # Left Side Panel
    sidebarPanel(
      use_bs_popover(),
      selectInput("cell_type_1",
                  label = "Select First PBMC Subtype",
                  choices = levels(pbmc),
                  multiple = FALSE
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
          bs_embed_popover(
            title = "Letter", content = "Choose a favorite", placement = "left"
          )
        ), # end selectInput
      selectInput("cell_type_2",
                  label="Select Second PBMC Subtype",
                  choices = levels(pbmc),
                  multiple = FALSE,
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Letter", content = "Choose a favorite", placement = "left"
            )
        ), # end selectInput
      selectInput("select_gene",
                  label="RNA-Seq Gene Name (Select 1 or more)",
                  choices = rownames(pbmc),
                  multiple = TRUE
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Letter", content = "Choose a favorite", placement = "left"
            )
        ),
      selectInput("test_type",
                  label="Select Test Type, default is Wilcox",
                  choices = list('wilcox', 'bimod', 'roc', 't', 'poisson', 'negbinom', 'LR', 'MAST', 'DESeq2'),
                  multiple = FALSE
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Letter", content = "Choose a favorite", placement = "left"
            )
        ),
    ),
    # Main Panel
    mainPanel(
      tableOutput('detable'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel
