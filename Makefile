.PHONY: all data
SHELL := /bin/bash

all: data
data: data/pbmc3k_filtered_gene_bc_matrices.tar.gz data/pbmc3k_raw_gene_bc_matrices.tar.gz data/pbmc3k_analysis.tar.gz data/analysis data/raw_gene_bc_matrices data/filtered_gene_bc_matrices

data/pbmc3k_filtered_gene_bc_matrices.tar.gz:
	wget -O $@ https://cf.10xgenomics.com/samples/cell-exp/1.1.0/pbmc3k/pbmc3k_filtered_gene_bc_matrices.tar.gz

data/pbmc3k_raw_gene_bc_matrices.tar.gz:
	wget -O $@ https://cf.10xgenomics.com/samples/cell-exp/1.1.0/pbmc3k/pbmc3k_raw_gene_bc_matrices.tar.gz

data/pbmc3k_analysis.tar.gz:
	wget -O $@ https://cf.10xgenomics.com/samples/cell-exp/1.1.0/pbmc3k/pbmc3k_analysis.tar.gz

data/analysis: data/pbmc3k_analysis.tar.gz
	tar -xf $< -C data/
	touch $@

data/raw_gene_bc_matrices: data/pbmc3k_raw_gene_bc_matrices.tar.gz
	tar -xf $< -C data/
	touch $@

data/filtered_gene_bc_matrices: data/pbmc3k_filtered_gene_bc_matrices.tar.gz
	tar -xf $< -C data/
	touch $@
