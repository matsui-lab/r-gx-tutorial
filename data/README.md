# Data Bundle: airway subset + pbmc3k_small (10X-like)

Included:
- `data/processed/airway_counts_small.csv` — airway counts (synthetic NB; 500 genes × 6 samples)
- `data/processed/airway_meta_small.csv`   — airway metadata
- `data/raw/pbmc3k_small/` — **10X-formatted** small scRNA matrix for practice
  - `matrix.mtx`        — MatrixMarket coordinate integer
  - `features.tsv`      — feature IDs (gene symbols duplicated in col2), modality "Gene Expression"
  - `barcodes.tsv`      — cell barcodes

Notes:
- pbmc3k_small is **synthetic** and kept intentionally small (1000 genes × 300 cells) for fast runs.
- Compatible with Seurat: `Read10X("data/raw/pbmc3k_small")`.
- Use for scRNA **QC → normalization → clustering → markers → pseudo-bulk** exercises.