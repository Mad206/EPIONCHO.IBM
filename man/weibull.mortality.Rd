% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adult_worm_dynamics_functions.R
\name{weibull.mortality}
\alias{weibull.mortality}
\title{weibull.mortality}
\usage{
weibull.mortality(DT, par1, par2, age.cats)
}
\arguments{
\item{DT}{timestep}

\item{par1}{shape parameter 1 in Weibull distribution (y_l in Hamley et al. 2019 supplementary material; equations S6 and S7)}

\item{par2}{shape parameter 2 in Weibull distribution (d_l in Hamley et al. 2019 supplementary material; equations S6 and S7)}

\item{age.cats}{vector of age categories for mf or adults worms (default is 21)}
}
\value{
vector of mortality rates (mf or adult worms) for each age class/category
}
\description{
age-dependent mortality for adult worms and microfilariae (mortality rates assumed to increase as a funcction of parasite age, according to a Weibull distribution of survival times)
}
