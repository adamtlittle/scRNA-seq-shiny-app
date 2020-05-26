output$dotplot <- renderPlot({
  DotPlot(pbmc, features = features) + RotatedAxis()
})