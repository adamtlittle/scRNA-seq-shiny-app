  
  new.cluster.ids <- c("Naive CD4 T", "Memory CD4 T", "CD14+ Mono", "B", "CD8 T", "FCGR3A+ Mono", 
                      "NK", "DC", "Platelet")
  
  names(new.cluster.ids) <- levels(pbmc)
  
  pbmc <- RenameIdents(pbmc, new.cluster.ids)
  
  output$dimplot1 <- renderPlot({
    DimPlot(pbmc, reduction = "umap", label = TRUE, pt.size = 0.5) + NoLegend()
  })