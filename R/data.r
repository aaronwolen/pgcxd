#' PGC Cross Disorder Summary Statistics
#'
#' Summary statistics for the 5 individual disorders used in the Psychiatric
#' Genomics Consortium (PGC) cross disorder analysis, including autism spectrum
#' disorder (`aut`), attention deficit-hyperactivity disorder (`adhd`), bipolar
#' disorder (`bip`), major depressive disorder (`mdd`), and schizophrenia
#' (`scz`).
#'
#' @format A data frame with 11 variables:
#' - **`snpid`**: SNP rs identifier
#' - **`hg18chr`**: hg18 chromosome (1-22)
#' - **`bp`**: hg18 base position of SNP
#' - **`a1`**: reference allele (not necessarily minor allele)
#' - **`a2`**: alternate allele
#' - **`or`**: odds ratio from the logistic regression including PCA covariates
#' - **`se`**: standard error of the odds ratio
#' - **`pval`**: asymptotic p-value
#' - **`info`**: INFO score from imputation, ratio of variances can exceed 1
#' - **`ngt`**: number of studies in which this SNP directly genotyped (not imputed)
#' - **`CEUaf`**: frequency of `a1` in HapMap3 CEU (HapMap2 for BIP)
#'
#' @source https://www.med.unc.edu/pgc/results-and-downloads
#'
#' @references
#' 1. Neale et al., Meta-analysis of genome-wide association studies of
#' attention- deficit/hyperactivity disorder. J. Am. Acad. Child Adolesc.
#' Psychiatry 49, 884 (Sep, 2010).
#' 2. Psychiatric GWAS Consortium Bipolar Disorder Working Group, Large-scale
#' genome-wide association analysis of bipolar disorder identifies a new
#' susceptibility locus near ODZ4. Nature Genetics 43, 977 (2011).
#' 3. Major Depressive Disorder Working Group of the PGC, A mega-analysis of
#' genome-wide association studies for major depressive disorder. Molecular
#' Psychiatry. (2013). DOI: 10.1038/mp.2012.21.
#' 4. Schizophrenia PGC, Genome-wide association study of schizophrenia
#' identifies five novel loci. Nature Genetics 43, 969 (2011).
#' 5. Cross-disorder group of the Psychiatric Genomics Consortium,
#' Identification of risk loci with shared effects on five major psychiatric
#' disorders: a genome-wide analysis. Lancet, epub (2013).
#'
#' @name pgc
NULL

#' @rdname pgc
"adhd"
#' @rdname pgc
"aut"
#' @rdname pgc
"bip"
#' @rdname pgc
"mdd"
#' @rdname pgc
"scz"

