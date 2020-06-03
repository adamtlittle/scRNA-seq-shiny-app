  output$featureplot1 <- renderPlotly({
    featureplot <- FeaturePlot(pbmc, features = input$select_gene2)
    HoverLocator(plot = featureplot, 
                        information = FetchData(pbmc, vars = c("ident", "nFeature_RNA")))
  
    })
  