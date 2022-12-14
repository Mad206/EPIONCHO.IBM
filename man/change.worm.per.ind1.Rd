% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adult_worm_dynamics_functions.R
\name{change.worm.per.ind1}
\alias{change.worm.per.ind1}
\title{change.worm.per.ind1}
\usage{
change.worm.per.ind1(
  treat.vec,
  lambda.zero,
  DT,
  omeg,
  ws,
  compartment,
  total.dat,
  mort.rates,
  time.each.comp,
  new.worms.m,
  w.f.l.c,
  num.comps
)
}
\arguments{
\item{treat.vec}{vector of treatment values (1 or 0) for each individual in the population}

\item{lambda.zero}{per-capita rate that female worms lose their fertility (W_FF) & return to non-fertile state (W_FN); default value of 0.33 year-1}

\item{DT}{timestep}

\item{omeg}{per-capita rate that female worms progress from non-fertile (W_FN) to fertile (W_FF); default is 0.59 year-1}

\item{ws}{starting worm compartment (first age class) - this is column 28 in the main matrix}

\item{compartment}{which worm age-compartment (iteration k)}

\item{total.dat}{main matrix containing different worm compartments for age-classes}

\item{mort.rates}{vector of mortality rates (adult worms) for each age class/category}

\item{time.each.comp}{Duration of each age class for adult worms (q_W in Hamley et al. 2019 supp); 1 year default}

\item{new.worms.m}{vector of (binomial) drawn adult male worms from last column of delay matrix}

\item{w.f.l.c}{vector for worms coming from previous compartment (0 when k ==1)}

\item{num.comps}{number of age compartments for each worm category}
}
\value{
list containing vector/values of a) lambda values per individual, b) mortality value for females per individual c) buman pop size
d) number of current non-fertile female worms per individual e) number of current fertile female worms per individual
f) treatment or no treatment value per individual g) omega value per individual h) total male worms per individual i) male worms lost per individual
}
\description{
Extracting key columns from overall matrix & evaluating different worm categories (for a specific age class of worms in each individual population).
These vectors are important for the next functions to calculate change in number of adults in one adult worm age class for all people.
}
