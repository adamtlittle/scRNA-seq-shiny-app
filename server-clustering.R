  output$featureplot1 <- renderPlot({
    FeaturePlot(pbmc, features = input$select_gene2)
  })