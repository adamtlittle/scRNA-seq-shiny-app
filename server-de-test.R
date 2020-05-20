  
  monocyte.de.markers <- FindMarkers(pbmc, ident.1 = "CD14+ Mono", ident.2 = "FCGR3A+ Mono")
  
  output$detable <- renderTable({
    head(monocyte.de.markers)
  })