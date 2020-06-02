  
  new.cluster.ids <- c("Naive CD4 T", "Memory CD4 T", "CD14+ Mono", "B", "CD8 T", "FCGR3A+ Mono", 
                      "NK", "DC", "Platelet")
  
  names(new.cluster.ids) <- levels(pbmc)
  
  pbmc <- RenameIdents(pbmc, new.cluster.ids)
  
  output$dimplot1 <- renderPlot({
    dimplot <- DimPlot(pbmc, reduction = "umap", label = TRUE, pt.size = 0.5) + NoLegend()
    # select.cells <- 
    # CellSelector(plot = dimplot)
    dimplot
    #Idents(pbmc, cells = select.cells) <- "NewCells"
    #newcells.markers <- FindMarkers(pbmc, ident.1 = "NewCells", ident.2 = "CD14+ Mono", min.diff.pct = 0.3, only.pos = TRUE)
    # head(newcells.markers)
    })
  