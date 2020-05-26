output$violinplot <- renderPlot({
  VlnPlot(pbmc, features = 'LYZ')
})