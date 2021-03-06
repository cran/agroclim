% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/combine_plots.R
\name{combine_plots}
\alias{combine_plots}
\title{Combine plots}
\usage{
combine_plots(plot1, plot2)
}
\arguments{
\item{plot1}{First plot to draw.}

\item{plot2}{Second plot that will be drawed over the first.}
}
\value{
A gtable object.
}
\description{
This function combines two plots build with ggplot2 and use both legends.
}
\examples{

library(ggplot2)
df <- mtcars[, c("disp", "qsec", "cyl")]
plot1 <- ggplot(df, aes(x=cyl, y=qsec)) +
         geom_point() + theme_bw()
plot2 <- ggplot(df, aes(x=disp, y=qsec, color = factor(cyl))) +
         geom_line() + theme_void() + theme(legend.position = c(0.9, 0.8))
cb <- combine_plots(plot1, plot2)
plot(cb)

}
