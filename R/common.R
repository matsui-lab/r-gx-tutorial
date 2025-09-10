# common.R — 共通ユーティリティ ---------------------------------------------
# 目的：図・表の保存と簡易QCヘルパ
suppressWarnings(suppressMessages({
  if (!requireNamespace("ggplot2", quietly = TRUE)) install.packages("ggplot2")
  if (!requireNamespace("readr", quietly = TRUE)) install.packages("readr")
  if (!requireNamespace("here", quietly = TRUE)) install.packages("here")
}))
dir.create(here::here("results","fig"), recursive = TRUE, showWarnings = FALSE)
dir.create(here::here("results","table"), recursive = TRUE, showWarnings = FALSE)

save_plot <- function(p, name, w=6, h=4){
  # 図を results/fig に保存する。p は ggplot オブジェクト。
  stopifnot(inherits(p, "ggplot"))
  fp <- here::here("results","fig", name)
  ggplot2::ggsave(fp, p, width=w, height=h)
  message("Saved: ", fp)
  invisible(fp)
}

save_table <- function(x, name){
  # テーブルを results/table に CSV 保存する。
  stopifnot(is.data.frame(x) || is.matrix(x))
  fp <- here::here("results","table", name)
  readr::write_csv(as.data.frame(x), fp)
  message("Saved: ", fp)
  invisible(fp)
}