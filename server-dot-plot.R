output$dotplot <- renderPlot({
  DotPlot(pbmc, features = input$select_gene_dot) + RotatedAxis()
})