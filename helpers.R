library(shiny)
library(Seurat)
library(SeuratData)
library(tidyverse)
library(shinythemes)


# Read in analyzed data
pbmc <- readRDS(file="pbmc.rds")
markers <- FindMarkers(pbmc, ident.1 = "CD14+ Mono", ident.2 = "FCGR3A+ Mono")