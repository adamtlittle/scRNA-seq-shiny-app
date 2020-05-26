  # tmpgeneids = pbmc$geneids
  # data_analyzedgenes = as.character(unlist(tmpgeneids))

  #tmpynames = pbmc$data_long%>%select(-unique_id,-sampleid,-group,-one_of("rep"))%>%colnames()
  #updateSelectizeInput(session,'sel_gene', choices= data_analyzedgenes,server=TRUE)

  monocyte.de.markers <- FindMarkers(pbmc, ident.1 = "CD14+ Mono", ident.2 = "FCGR3A+ Mono")
  
  output$detable <- renderTable({
    head(monocyte.de.markers)
  })