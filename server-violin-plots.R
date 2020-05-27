output$violinplot <- renderPlot({
  if (is.null(input$select_gene4)) {
    "Please select at least gene from the dropbown menu."
  } else {
    VlnPlot(pbmc, features = input$select_gene4)
  }
})