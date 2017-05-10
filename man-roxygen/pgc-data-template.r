#' <%= name %> Summary Statistics
#'
#' Summary statistics for the <%= disorder %> (<%= name %>) subset of PGC's
#' cross disorder analysis.
#'
#' @format A data frame with 11 variables:
#' \describe{
#' \item{\code{snpid}}{SNP rs identifier}
#' \item{\code{hg18chr}}{hg18 chromosome (1-22)}
#' \item{\code{bp}}{hg18 base position of SNP}
#' \item{\code{a1}}{reference allele (not necessarily minor allele)}
#' \item{\code{a2}}{alternate allele}
#' \item{\code{or}}{odds ratio from the logistic regression including PCA
#' covariates}
#' \item{\code{se}}{standard error of the odds ratio}
#' \item{\code{pval}}{asymptotic p-value}
#' \item{\code{info}}{INFO score from imputation, ratio of variances can exceed
#' 1}
#' \item{\code{ngt}}{number of studies in which this SNP is directly genotyped
#' (not imputed)}
#' \item{\code{CEUaf}}{frequency of `a1` in HapMap3 CEU (HapMap2 for BIP)}
#' }
#'
#' @source \url{https://www.med.unc.edu/pgc/results-and-downloads}
#'
#' @references
#' <%= reference %> DOI: \href{https://doi.org/<%= doi %>}{<%= doi %>}.
