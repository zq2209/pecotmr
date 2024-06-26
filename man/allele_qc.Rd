% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allele_qc.R
\name{allele_qc}
\alias{allele_qc}
\title{Match alleles between target_variants and ref_variants}
\usage{
allele_qc(
  target_variants,
  ref_variants,
  target_data,
  col_to_flip = NULL,
  match_min_prop = 0.2,
  remove_dups = TRUE,
  remove_indels = FALSE,
  remove_strand_ambiguous = TRUE,
  flip_strand = FALSE,
  remove_unmatched = TRUE,
  target_gwas = TRUE
)
}
\arguments{
\item{target_variants}{A data frame with columns "chrom", "pos", "A1", "A2" or strings in the format of "chr:pos:A2:A1"/"chr:pos_A2_A1".}

\item{ref_variants}{A data frame with columns "chrom", "pos", "A1", "A2" or strings in the format of "chr:pos:A2:A1"/"chr:pos_A2_A1".}

\item{target_data}{A data frame on which QC procedures will be applied.}

\item{col_to_flip}{The name of the column in target_data where flips are to be applied.}

\item{match_min_prop}{Minimum proportion of variants in the smallest data
to be matched, otherwise stops with an error. Default is 20%.}

\item{remove_dups}{Whether to remove duplicates, default is TRUE.}

\item{remove_indels}{Whether to remove INDELs, default is FALSE.}

\item{remove_strand_ambiguous}{Whether to remove strand SNPs (if any). Default is `TRUE`.}

\item{flip_strand}{Whether to output the variants after strand flip. Default is `FALSE`.}

\item{remove_unmatched}{Whether to remove unmatched variants. Default is `TRUE`.}

\item{flip}{Whether the alleles must be flipped: A <--> T & C <--> G, in which case
corresponding `col_to_flip` are multiplied by -1. Default is `TRUE`.}
}
\value{
A single data frame with matched variants.
}
\description{
Match by ("chrom", "A1", "A2" and "pos"), accounting for possible
strand flips and major/minor allele flips (opposite effects and zscores).
}
