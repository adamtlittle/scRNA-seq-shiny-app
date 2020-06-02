  # tmpgeneids = pbmc$geneids
  # data_analyzedgenes = as.character(unlist(tmpgeneids))

  #tmpynames = pbmc$data_long%>%select(-unique_id,-sampleid,-group,-one_of("rep"))%>%colnames()
  #updateSelectizeInput(session,'sel_gene', choices= data_analyzedgenes,server=TRUE)

  output$detable <- renderTable({
    
      FindMarkers(pbmc, 
                  ident.1 = input$cell_type_1, 
                  ident.2 = input$cell_type_2, 
                  features = input$select_gene,
                  test.use = input$test_type,
                  verbose=TRUE
                  )[1:input$n_select,]
  
  },
    rownames = TRUE,
    striped = TRUE,
    bordered = TRUE,
    hover = TRUE)
  
    # Downloadable csv of selected dataset ----
  output$downloadData <- downloadHandler(
    filename = function() {
      paste("pbmc-", Sys.Date(), ".csv", sep="")
    },
    content = function(file) {
      write.csv(data, file)
    }
  )