output$violinplot <- renderPlot({
  VlnPlot(pbmc, features = input$select_gene4)
})