  output$featureplot1 <- renderPlot({
    #featureplot <- FeaturePlot(pbmc, features = input$select_gene2)
    #HoverLocator(plot = featureplot, information = FetchData(pbmc, vars = c("ident", "PC_1", "nFeature_RNA")))
    plot <- FeaturePlot(pbmc, features = "MS4A1")
    # HoverLocator(plot = plot, information = FetchData(pbmc, vars = c("ident", "PC_1", "nFeature_RNA")))
    plot
  })