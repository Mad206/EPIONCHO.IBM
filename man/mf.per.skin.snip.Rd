% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mf_dynamics_functions.R
\name{mf.per.skin.snip}
\alias{mf.per.skin.snip}
\title{calculate mf per skin snip}
\usage{
mf.per.skin.snip(
  ss.wt,
  num.ss,
  slope.kmf,
  int.kMf,
  data,
  nfw.start,
  fw.end,
  mf.start,
  mf.end,
  pop.size
)
}
\arguments{
\item{ss.wt}{weight of the skin snip}

\item{num.ss}{number of skin snips taken (default set to 2)}

\item{slope.kmf}{slope value governing linear relationship between degree of mf overdispersion and adult female worms}

\item{int.kMf}{initial value governing linear relationship between degree of mf overdispersion and adult female worms}

\item{data}{data is the matrix tracking age compartments of mf and W per individual}

\item{nfw.start}{column (first age compartment) in matrix where non-fertile female worms begin}

\item{fw.end}{column (last age compartment) in matrix where fertile female worms end}

\item{mf.start}{column (first age compartment) in matrix where mf begin}

\item{mf.end}{column (last age compartment) in matrix where mf ends}

\item{pop.size}{human population size}
}
\value{
element (1) in list is mean of mf per skin snip; element (2) contains all mf per skin snip for each individual
}
\description{
function calculates number of mf in skin snip for all people.
people are tested for the presence of mf using a skin snip, we assume mf are overdispersed in the skin.
}
