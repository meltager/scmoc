This Code is for the scMoC : Single-Cell Multi-omics Clustering.  
It is an approach to identify cell clusters from data with co-measurements of scRNA-seq and scATAC-seq from the same cell. We overcome the high sparsity of the scATAC-seq data by using an imputation strategy that exploits the less-sparse scRNA-seq data available from the same cell. 
Subsequently, scMoC identifies clusters of cells by merging clusterings derived from both data domains individually. We tested scMoC on datasets generated using different protocols with variable data sparsity levels. 
We show that, due to its imputation scheme, scMoC 1) is able to generate informative scATAC-seq data due to its RNA guided imputation strategy, and 2) results in integrated clusters based on both RNA and ATAC information that are biologically meaningful either from the RNA or from the ATAC perspective.

