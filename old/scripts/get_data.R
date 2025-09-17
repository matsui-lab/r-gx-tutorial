# scripts/get_data.R — 配布用データ取得（軽量サブセット）
# 注意：ネットワークのない環境ではコメントアウトして事前同梱を使用。

if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
if (!requireNamespace("airway", quietly = TRUE)) BiocManager::install("airway")
if (!requireNamespace("SeuratData", quietly = TRUE)) install.packages("SeuratData")

library(airway)
data(airway)
# 軽量サブセットを作成して data/processed へ保存（例）
expr <- as.data.frame(SummarizedExperiment::assay(airway)[1:500, 1:6])
expr$gene <- rownames(expr)
readr::write_csv(expr, file = file.path("data","processed","airway_counts_small.csv"))
meta <- as.data.frame(SummarizedExperiment::colData(airway))[1:6, ]
meta$sample_id <- colnames(airway)[1:6]
meta$group <- ifelse(meta$dex == "trt", "treatment", "control")
readr::write_csv(meta[, c("sample_id","group")], file = file.path("data","processed","airway_meta_small.csv"))