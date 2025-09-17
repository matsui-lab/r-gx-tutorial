# R Omics Expression Course (12×60min)

集中講義用のリポジトリ骨格です。**Rの基礎 → バルクRNA-seq → 遺伝子セット解析 → 共発現ネットワーク → scRNA-seq → 統合レポート**の順に進みます。各回は RMarkdown（.Rmd）で配布・実行可能です。

## 使い方（ローカル）
1. Clone:
   ```bash
   git clone <YOUR-REPO-URL>.git
   cd r-omics-expression-course
   ```
2. Rを起動し、依存をセットアップ（任意: renv を使用）
   ```r
   # install.packages("renv")   # 初回のみ
   # renv::init()               # 既存 lockfile がない場合
   # renv::restore()            # lockfile を用意したら
   ```
3. RStudio で各 `.Rmd` を Knit して動作確認。出力は `results/` に保存されます。

## ディレクトリ
- `course/`：各回の `.Rmd`（全てコメント付きの雛形）
- `data/`：配布用の軽量サブセット（raw/processed）
- `results/`：図と表（自動保存）
- `R/`：共通ユーティリティ（`common.R`）
- `scripts/`：補助スクリプト（Get data など）
- `.github/`：CI（R-CMD-check, Quarto Render の雛形）
- `docs/`：公開用（Actions でビルドして Pages に載せる想定）

## ライセンス
MIT