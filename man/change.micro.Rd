% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mf_dynamics_functions.R
\name{change.micro}
\alias{change.micro}
\title{change microfilariae number per human}
\usage{
change.micro(
  dat,
  num.comps,
  mf.cpt,
  num.mf.comps,
  ws,
  DT,
  time.each.comp,
  mu.rates.mf,
  fec.rates,
  mf.move.rate,
  up,
  kap,
  iteration,
  treat.vec,
  give.treat,
  treat.start
)
}
\arguments{
\item{dat}{main matrix with mf inputs for each individual}

\item{num.comps}{number of age classes in adult worms (fecundity rate is a function of adult worm age), default = 21 age classes (specified by c_max in Hamley et al. 2019).}

\item{mf.cpt}{age class under consideration.}

\item{num.mf.comps}{number of age classes in mf (same as adult worm), default = 21 age classes (specified by c_max in Hamley et al. 2019).}

\item{ws}{column in main matrix where worm age compartments start for each individual (row in the main matrix).}

\item{DT}{timestep}

\item{time.each.comp}{duration fo each age class in mf (default value ins 0.125 year; q_M in Hamley et al. 2019).}

\item{mu.rates.mf}{mf mortality rate (modelled as a weibull distribution, with mu.mf1 (y_M) and mu.mf2 (d_M) parameters) as a function of age.}

\item{fec.rates}{fecundity rate in adult female worms (m(a) in Hamley et al. 2019); given by epsilon (1.158), fec.w.1 (F), fec.w.2 (fec.w.2).}

\item{mf.move.rate}{determines mf aging (moving rate to the next age class); given by 1 / duration spent in each mf age class.}

\item{up}{constant to allow for very large yet finite mf effect upon treatment (mu in Hamley et al. 2019; default value of 9.6 x 10-3) & determines extent of IVM induced mortality (with kap).}

\item{kap}{shape parameter for excess mf mortality following IVM treatment (kappa in Hamley et al. 2019; default value of 1.25).}

\item{iteration}{iteration moving through each timepoint (based on timestep).}

\item{treat.vec}{vector contains how long since each person treated, mortality rate due to ivermectin decays with time since treatment.}

\item{give.treat}{input (if 1 then treatment given).}

\item{treat.start}{treatment start time.}
}
\value{
vector for each individual in population (to replace specific mf age compartment column for all individuals in main matrix)
}
\description{
function calculates change in the number of microfilariae (mf) (offspring of adult worms) for each mf age compartment in each human using RK4 method
this is called in ep.equi.sim for each mf age class.
}
