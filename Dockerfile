FROM rocker/verse:4.4.0

MAINTAINER Dave Tang <me@davetang.org>

ARG SEURATVER=5.1.0

RUN apt-get clean all && \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
      cmake \
      libssl-dev \
      libclang-dev \
      libxml2-dev \
      libcurl4-openssl-dev \
      libssl-dev \
      libfftw3-dev \
      libtiff-dev \
      libgsl-dev \
      libfontconfig1-dev \
      libharfbuzz-dev \
      libfribidi-dev \
      libproj-dev \
      libboost-all-dev \
      libmagick++-dev \
      libv8-dev \
      libudunits2-dev \
      libgdal-dev \
      libmpfr-dev \
      glpk-utils \
      libglpk-dev \
      libicu-dev \
      libhdf5-dev \
      python3-pip \
      patch \
	&& apt-get clean all && \
	apt-get purge && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN R -q -e 'install.packages(c("BiocManager", "remotes", "optparse"))'
RUN R -q -e 'remotes::install_version("SeuratObject", version = "5.0.2", repos = "https://cran.ism.ac.jp/", quiet = FALSE)'
RUN R -q -e "remotes::install_version('Seurat', version = '${SEURATVER}', repos = 'https://cran.ism.ac.jp/', quiet = FALSE)"
RUN R -q -e 'library(Seurat)'
RUN R -q -e 'install.packages("hdf5r")'
RUN R -q -e 'BiocManager::install("glmGamPoi")'
RUN pip install scanpy==1.10.1 scvi-tools==1.1.2 spatialdata==0.1.2 celltypist==1.6.2
RUN R -q -e 'remotes::install_github("immunogenomics/presto")'
RUN R -q -e 'install.packages("harmony", repos = "https://cran.ism.ac.jp/")'
RUN R -q -e 'remotes::install_github("satijalab/seurat-data")'
RUN R -q -e 'BiocManager::install("multtest"); install.packages("metap")'
RUN R -q -e 'BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")'
RUN R -q -e 'BiocManager::install("EnsDb.Hsapiens.v86")'
RUN R -q -e 'BiocManager::install("JASPAR2020")'
RUN R -q -e 'BiocManager::install("DirichletMultinomial")'
RUN R -q -e 'BiocManager::install("TFBSTools")'
RUN R -q -e 'BiocManager::install("DropletUtils")'
RUN R -q -e 'remotes::install_github("satijalab/seurat-wrappers")'
RUN R -q -e 'library(SeuratWrappers)'
RUN R -q -e 'remotes::install_github("satijalab/azimuth", ref = "master")'
RUN R -q -e 'library(Azimuth)'

COPY --chown=rstudio:rstudio rstudio-prefs.json /home/rstudio/.config/rstudio
