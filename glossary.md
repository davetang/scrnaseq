# Glossary

Initiated from [Best practices for single-cell analysis across modalities](https://www.nature.com/articles/s41576-023-00586-w) and gradually expanded upon.

* Adaptive immune receptor (AIR) - Transmembrane complex of proteins expressed on T and B cells that is key for the recognition of potential hazardous antigens and pathogens invading the body.

* Ambient RNA - mRNA counts that originate from other lysed cells in the input solution and do not belong to the cell captured in the droplet itself.

* Antibody-derived tags (ADTs) - Antibodies (also known as soluble immunoglobulins) are Y-shaped proteins used by the immune system to identify and neutralize pathogens by recognizing antigens. ADTs are directly conjugated DNA-barcode oligonucleotides that can be used to recover expressed surface proteins.

* Antigens - Substances recognized as non-self that induce an immune response and lead to the production of antibodies.

* Barcodes - Unique known nucleic acid sequences of fixed length used to label individual cells to enable tracking through space and time.

* Batch effects - Confounding effects that result from technical differences in data generation across different batches, such as samples obtained through different experimental set-ups or from different laboratories.

* CDR3 - Whereas complementarity-determining region 1 (CDR1) and CDR2 are encoded in the germline V genes, CDR3 loops are assembled from V(D)J segments, giving rise to the variability of adaptive immune receptors.

* Cell fate - A cell's final cell type that is established by corresponding, specific transcriptional programmes.

* Cell–cell communication - Interactions of cells through secreted ligands and plasma membrane receptors, secreted enzymes, extracellular matrix proteins or cell–cell adhesion proteins and gap junctions.

* Cell-type deconvolution - Decomposing the cell-type composition of individual barcode regions based on a reference data set to obtain abundances or proportions of individual cells within a barcode region.

* Cell segmentation - Processing of microscopic image domains into segments that represent individual cells.

* Chain pairing - Assignment of cells to V(D)J chain types such as orphans, single pair, extra VJ/VDJ or multichains.

* Cis-regulatory elements (CREs) - Regions of non-coding DNA, such as promoters, enhancers and silencers — that control the transcription of nearby genes.

* Clonotype - Collection of T or B cells that descended from an antecedent cell, have the same adaptive immune receptors and henceforth recognize the same epitopes.

* Compositional data - Comprises multi-dimensional data points (for example, cell-type composition) in which each component (or part) carries only proportional or relative abundance information about some whole.

* Confounding sources of variation - Technical artefacts that arise from library preparation and sequencing, and biological confounders such as cell cycle status, which cause systematic bias and may distort biological findings.

* Differential gene expression (DGE) - The inference of statistically significant differences in expression between groups such as healthy and diseased.

* Embeddings - An embedding is a mapping of data from one space to another, often to a space of lower dimensions. This transformation aims to preserve important properties of the data while making it easier to work with.

* Epitopes - The parts of antigens that are recognized by antibodies, B cells or T cells to potentially stimulate immune responses.

* Gene set enrichment - Grouping genes with shared characteristics together and testing for over-representation.

* Graph neural networks - A deep-learning approach to do inference on input data represented in the form of a graph. For example, in spatial transcriptomics, cells are typically represented as nodes in graphs obtained through spatial proximity.

* Highly variable genes - A measure to identify genes that vary in terms of gene expression across all cells present in the data set.

* K nearest-neighbours graph (KNN graph) - A computational data structure in which cells are represented as nodes in a graph. Based on distance metrics such as the Euclidean distance on a principal-component reduced expression, cells are connected to their K most similar cells. K is commonly set to be between 5 and 100 depending on the data set.

* Latent semantic indexing (LSI) - A dimension reduction method that uses term frequency inverse document frequency transformation (TFIDF) followed by singular value decomposition (SVD).

* Lineage tracing - Tracking physiological or pathological changes by exogenous or endogenous cell markers such as DNA mutations.

* Major histocompatibility complex (MHC) - Surface proteins that display or ‘present’ small peptides (epitopes) on the cell surface for T and B cells to potentially react to. Presented endogenous self-antigens prevent the immune system from targeting its own cells, whereas presented pathogen-derived peptides alarm nearby immune cells.

* Nucleosome signal - The ratio of long fragments resulting from one or multiple histones bound between the Tn5 transposition sites and short nucleosome-free fragments; the ratio is small in high-quality single-cell assay for transposase-accessible chromatin sequencing (scATAC-seq) data.

* Optimal transport - Mathematical framework to estimate the optimal transport plan of mass between two (discrete) distributions.

* Phase portrait - For any given gene, the phase portrait visualizes splicing kinetics as a parametric curve (with time as a parameter).

* Pseudobulks - Aggregated cells within a biological replicate whereby the data from every single cell is combined via sum or mean of counts into a single pseudo-sample to resemble a bulk RNA experiment.

* Pseudoreplication - Also known as subsampling. Pseudoreplication occurs when replicates are not statistically independent, but are treated as if they were, such as cell samples from a single individual.

* Reference mapping - The process of leveraging and transferring information from a reference data set to a query.

* RNA velocity - Ratios of spliced mRNA, unspliced mRNA and mRNA degradation. Positive ratios (velocities) indicate recent increases in unspliced transcripts followed by upregulation of spliced transcripts. Negative velocities indicate downregulation. Examining velocities across genes can provide insight into future states of individual cells.

* Scaling - Normalization of gene expression levels that scales gene counts to zero mean and unit variance.

* Somatic hypermutation - Mechanism of B cell receptors to allow the immune system to adapt its response to unseen threats. Somatic hypermutation is triggered when B cells engage antigens, which results in the introduction of point mutations in the variable regions of the V(D)J genes. Cells harbouring mutagenized antibodies with a high affinity for the antigen proliferate preferentially (known as affinity maturation).

* Spatially variable genes (SVGs) - Genes with variable expression levels between individual locations in the spatial transcriptomics data set.

* Spectratyping - Measuring the heterogeneity of complementarity-determining region 3 (CDR3) regions by their length diversity across different cell types or conditions.

* Trajectory inference - Also known as pseudotime analysis. Ordering of cells along a trajectory based on gene expression similarity.

* Transcription factor motif (TF motif) - DNA sequence pattern that is specifically recognized by a sequence-specific TF. It is commonly represented as a logo diagram representing the most informative DNA positions by height.

* Uniform Manifold Approximation and Projection (UMAP) - A technique used for dimensionality reduction that aims to preserve the topological structure of the data, focusing on preserving both local and global relationships. It is particularly designed for high-dimensional data visualisation. UMAP typically uses PCA as a preprocessing step to reduce the initial dimensionality of the data. This is particularly useful when the dimensionality of the original data is very high, as it can speed up the UMAP algorithm without significantly losing important structure.

* Variational autoencoders - A generative artificial neural network architecture that allows for statistical inference. Input data are sampled from a parameterized distribution (prior), and an encoder and decoder are trained jointly to minimize the reconstruction error between the updated prior probability (posterior) and its parametric approximation (variational posterior).

* V(D)J recombination - Somatic recombination in developing lymphocytes whereby variable (V), diversity (D) and joining (J) segments are randomly selected and joined to form the V region of a full-length receptor.

* V(D)J sequencing - Determination of protein sequence of the adaptive immune receptor (AIR) for both chains, from which the variable (V), diversity (D), joining (J) and constant (C) sequences are determined in addition to the complementarity-determining region (CDR) sequences.
