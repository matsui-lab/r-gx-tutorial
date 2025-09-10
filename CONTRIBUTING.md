# Contributing

- 1PR＝1トピック。小さく、再現可能に。
- コードは **コメント必須**。Rmd は冒頭に目的・入力・出力を明記。
- データは `data/raw/` に配置し、配布可否に注意（秘匿データは入れない）。
- 図表は `results/fig/` と `results/table/` に保存。ファイル名は `<回>_<短い説明>.<ext>`。
- 大きなバイナリは Git LFS を検討。

## ブランチ・PR
- `main`: 安定版
- `dev`: 作業ブランチ
- 命名例: `feat/dge-batch`, `fix/qc-pca`, `docs/syllabus`