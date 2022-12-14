% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mf_dynamics_functions.R
\name{derivmf.one}
\alias{derivmf.one}
\title{microfilariae age class 1 derivatives}
\usage{
derivmf.one(fert.worms, mf.in, ep.in, mf.mort, mf.move, mp, k.in)
}
\arguments{
\item{fert.worms}{matrix (or vector?) of fertile females worms in all age-classes per individual.}

\item{mf.in}{matrix of mf in first age-class per individual.}

\item{ep.in}{fecundity of female worms (based on fec.rates in adult female worms (m(a) in Hamley et al. 2019))}

\item{mf.mort}{mf.mu rate specified for first age class in each human}

\item{mf.move}{determines mf aging (moving rate to the next age class).}

\item{mp}{vector (?) length of human population}

\item{k.in}{previous k (for k1 = 0) for RDK4 method.}
}
\value{
vector for each individual
}
\description{
function called during RK4 for first age class of microfilariae (mf), which is a function of fertile adult female worms.
}
