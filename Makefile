.PHONY: all data
SHELL := /bin/bash

all: data
data: data/pbmc3k_filtered_gene_bc_matrices.tar.gz data/pbmc3k_raw_gene_bc_matrices.tar.gz data/pbmc3k_analysis.tar.gz data/analysis data/raw_gene_bc_matrices data/filtered_gene_bc_matrices data/HTA08_v01_A05_Science_human_fig1.h5ad data/pbmc3k.h5ad

data/pbmc3k_filtered_gene_bc_matrices.tar.gz:
	wget -O $@ https://cf.10xgenomics.com/samples/cell-exp/1.1.0/pbmc3k/pbmc3k_filtered_gene_bc_matrices.tar.gz
	md5sum -c <(printf "f76d73bf7a582aaf32b798bcae9574d3  data/pbmc3k_filtered_gene_bc_matrices.tar.gz\n")

data/pbmc3k_raw_gene_bc_matrices.tar.gz:
	wget -O $@ https://cf.10xgenomics.com/samples/cell-exp/1.1.0/pbmc3k/pbmc3k_raw_gene_bc_matrices.tar.gz
	md5sum -c <(printf "c4b13320be301d276c5a3aed69c94344  data/pbmc3k_raw_gene_bc_matrices.tar.gz\n")

data/pbmc3k_analysis.tar.gz:
	wget -O $@ https://cf.10xgenomics.com/samples/cell-exp/1.1.0/pbmc3k/pbmc3k_analysis.tar.gz
	md5sum -c <(printf "0326d4d960fcc15fc228d6fb5f0e9852  data/pbmc3k_analysis.tar.gz\n")

data/analysis: data/pbmc3k_analysis.tar.gz
	tar -xf $< -C data/
	touch $@

data/raw_gene_bc_matrices: data/pbmc3k_raw_gene_bc_matrices.tar.gz
	tar -xf $< -C data/
	touch $@

data/filtered_gene_bc_matrices: data/pbmc3k_filtered_gene_bc_matrices.tar.gz
	tar -xf $< -C data/
	touch $@

data/HTA08_v01_A05_Science_human_fig1.h5ad:
	wget -O $@ https://app.cellatlas.io/thymus-development/dataset/8/download
	touch $@

data/pbmc3k.h5ad:
	wget -O $@ https://github.com/chanzuckerberg/cellxgene/raw/main/example-dataset/pbmc3k.h5ad
	md5sum -c <(printf "5b308a08c17dbd5f09176a0f276a27d9  data/pbmc3k.h5ad\n")
	touch $@
