% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coldMonth.R
\name{coldMonth}
\alias{coldMonth}
\title{Coldest month of the year}
\usage{
coldMonth(mn, dates, type = "temp", ...)
}
\arguments{
\item{mn}{vector of daily minimum temperature series.}

\item{dates}{vector of dates corresponding with daily temperature series}

\item{type}{type of output. It can be "temp" for temperature or "month" for the number of the coldest month.}

\item{...}{any other argument. It is expected to be "na.rm" in case NA values are required to be removed.}
}
\value{
Depending on argument type, the output will be a numeric value with the month (type = "month") or with temperature (type = "temp").
}
\description{
Calculates the mean temperature of the coldest month of the year
}
\examples{


coldMonth(mn = daily_tmin,
           dates = seq.Date(as.Date('1981-01-01'),
            as.Date('2010-12-31'), by ='day'),
           type = 'temp',
           na.rm = TRUE)

}
