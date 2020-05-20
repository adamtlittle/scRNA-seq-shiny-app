  pbmc$groups <- sample(c("group1", "group2"), size = ncol(pbmc), replace = TRUE)
  
  features <- c("LYZ", "CCL5", "IL32", "PTPRCAP")
  
  output$featureplot1 <- renderPlot({
    FeaturePlot(pbmc, features = features)
  })