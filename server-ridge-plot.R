output$ridgeplot <- renderPlot({
  RidgePlot(pbmc, features = 'LYZ')
})