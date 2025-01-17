if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak")
}



library(pak)
pak::pak(c(
  "tidyverse",
  "Seurat@4.3.0",
  "SCpubr",
  "scater",
  "org.Mm.eg.db",
  "clusterProfiler"
))


suppressMessages(library(tidyverse))
suppressMessages(library(Seurat))
suppressMessages(library(SCpubr))
suppressMessages(library(scater))
suppressMessages(library(org.Mm.eg.db))
suppressMessages(library(clusterProfiler))
print(iris)
View(iris)

Read10X(data.dir = "../../read/scRNA-Seq/WTAC_SCRNA8012500/filtered_feature_bc_matrix/")

suppressMessages(library(tidyverse))
suppressMessages(library(Seurat))
suppressMessages(library(SCpubr))
suppressMessages(library(scater))
suppressMessages(library(org.Mm.eg.db))
suppressMessages(library(clusterProfiler))
# WT
wt1 <- Read10X(
  data.dir = "../../read/scRNA-Seq/WTAC_SCRNA8012500/filtered_feature_bc_matrix/"
)
# wt2 <- Read10X(data.dir = "../../course_data//scRNA-Seq Module/WTAC_SCRNA8012501/filtered_feature_bc_matrix/")

# Scrambled
scr1 <- Read10X(
  data.dir = "../../read/scRNA-Seq/WTAC_SCRNA8012504/filtered_feature_bc_matrix/"
)
scr2 <- Read10X(
  data.dir = "../../read/scRNA-Seq/WTAC_SCRNA8012505/filtered_feature_bc_matrix/"
)