output$heatmap <- renderPlot({
  DoHeatmap(subset(pbmc, downsample = 100), features = 'LYZ', size = 3)
})