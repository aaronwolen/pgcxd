% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{adhd}
\alias{adhd}
\title{ADHD Summary Statistics}
\format{A data frame with 11 variables:
\describe{
\item{\code{snpid}}{SNP rs identifier}
\item{\code{hg18chr}}{hg18 chromosome (1-22)}
\item{\code{bp}}{hg18 base position of SNP}
\item{\code{a1}}{reference allele (not necessarily minor allele)}
\item{\code{a2}}{alternate allele}
\item{\code{or}}{odds ratio from the logistic regression including PCA
covariates}
\item{\code{se}}{standard error of the odds ratio}
\item{\code{pval}}{asymptotic p-value}
\item{\code{info}}{INFO score from imputation, ratio of variances can exceed
1}
\item{\code{ngt}}{number of studies in which this SNP is directly genotyped
(not imputed)}
\item{\code{CEUaf}}{frequency of `a1` in HapMap3 CEU (HapMap2 for BIP)}
}}
\source{
\url{https://www.med.unc.edu/pgc/results-and-downloads}
}
\usage{
adhd
}
\description{
Summary statistics for the Attention deficit-hyperactivity disorder (ADHD) subset of PGC's
cross disorder analysis.
}
\references{
Neale et al., Meta-analysis of genome-wide association studies of attention-deficit/hyperactivity disorder. J. Am. Acad. Child Adolesc. Psychiatry 49, 884 (Sep, 2010). DOI: \href{https://doi.org/10.1016/j.jaac.2010.06.008}{10.1016/j.jaac.2010.06.008}.
}
\seealso{
Other PGC datasets: \code{\link{aut}}, \code{\link{bip}},
  \code{\link{mdd}}, \code{\link{scz}}
}
\keyword{datasets}
