output$heatmap <- renderPlot({
  DoHeatmap(subset(pbmc, downsample = 100), features = input$select_gene3, size = 3)
})