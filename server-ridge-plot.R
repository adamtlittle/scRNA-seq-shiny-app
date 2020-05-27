output$ridgeplot <- renderPlot({
  RidgePlot(pbmc, features = input$select_gene_ridge)
})