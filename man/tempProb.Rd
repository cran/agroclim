% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tempProb.R
\name{tempProb}
\alias{tempProb}
\title{Probability of exceed a predefined temperature value}
\usage{
tempProb(mx, dates, thres = 20, month = NULL)
}
\arguments{
\item{mx}{vector of daily (usually maximum) temperature series.}

\item{dates}{vector of dates corresponding with daily temprature series}

\item{thres}{temperature threshold considered to trigger occurrence.}

\item{month}{integer between 1 and 12 indicating the month to compute the probability.}
}
\value{
A numeric vector with annual values is returned.
}
\description{
Calculates the first day in the year where the probability of temperature over a threshold is higher than a predefined threshold.
}
\examples{

  tempProb(mx = daily_tmax,
  dates = seq.Date(as.Date('1981-01-01'),
                             as.Date('2010-12-31'), by ='day'),
  thres = 20,
  month = NULL)


}
