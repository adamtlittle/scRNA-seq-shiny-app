  output$featureplot1 <- renderPlot({
    FeaturePlot(pbmc, features = features)
  })