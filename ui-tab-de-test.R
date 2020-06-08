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
                  multiple = FALSE,
                  selected = "CD14+ Mono"
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
          bs_embed_popover(
            title = "First Cell Type", 
            content = "Expression Level shown in output under 'pct.1'", 
            placement = "left"
          )
        ), # end selectInput
      selectInput("cell_type_2",
                  label="Select Second PBMC Subtype",
                  choices = levels(pbmc),
                  multiple = FALSE,
                  selected = "FCGR3A+ Mono"
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Second Cell Type", 
              content = "Expression Level shown in output under 'pct.2'", 
              placement = "left"
            )
        ), # end selectInput
      selectInput("test_type",
                  label="Choose Statistical Test",
                  choices = list('wilcox', 'bimod', 'roc', 't', 'poisson', 'negbinom', 'LR', 'MAST', 'DESeq2'),
                  multiple = FALSE
        ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Statistical Test", 
              content = "Non-parameteric Wilcoxon rank sum test is the default 
                         test, both more are available. Changes the order of genes
                          ranked by p-value.", 
              placement = "left"
            )
        ), # end selectInput
      numericInput("n_select",
                  label="Number of Gene Output",
                  value = 10,
                  min = 1, 
                  max = nrow(pbmc)
      ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Gene Output", 
              content = "Select the number of genes to output.", 
              placement = "left"
            )
        ), # end selectInput
      
      selectInput("select_gene",
                  label="Select Multiple Genes (optional)",
                  choices = rownames(pbmc),
                  multiple = TRUE
      ) %>% 
        shinyInput_label_embed(
          shiny_iconlink() %>%
            bs_embed_popover(
              title = "Gene Selector", 
              content = "Please use this feature with caution. Many genes do not
              have high enough expression levels to pass minimum requirement for 
              average logFC cacluation. Genes not meeting minimum requirements 
              will not output to the screen.", 
              placement = "left"
            )
        ), # end selectInput
      downloadButton("downloadData", "Download")
    ),
    # Main Panel
    mainPanel(
      tableOutput('detable'),
      width = main_width
    )
  
  ) # end sidebarLayout
) # end tabpanel
