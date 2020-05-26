  pbmc$groups <- sample(c("group1", "group2"), size = ncol(pbmc), replace = TRUE)
  
  features <- c("LYZ")
  
  output$featureplot1 <- renderPlot({
    FeaturePlot(pbmc, features = features)
  })