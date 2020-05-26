  # tmpgeneids = pbmc$geneids
  # data_analyzedgenes = as.character(unlist(tmpgeneids))

  #tmpynames = pbmc$data_long%>%select(-unique_id,-sampleid,-group,-one_of("rep"))%>%colnames()
  #updateSelectizeInput(session,'sel_gene', choices= data_analyzedgenes,server=TRUE)

  output$detable <- renderTable({
    if (input$cell_type_1 == input$cell_type_2) {
      "Please select two different PBMC cell types."
    } else {
      FindMarkers(pbmc, 
                  ident.1 = input$cell_type_1, 
                  ident.2 = input$cell_type_2, 
                  features = input$select_gene,
                  test.use = input$test_type,
                  verbose=TRUE
                  )
    }
  })