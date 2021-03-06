% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correct_d.R
\encoding{UTF-8}
\name{correct_glass_bias}
\alias{correct_glass_bias}
\title{Correct for small-sample bias in Glass' \ifelse{latex}{\eqn{\Delta}}{\ifelse{html}{\out{&#916;}}{delta}} values}
\usage{
correct_glass_bias(delta, nc, ne, use_pooled_sd = rep(FALSE, length(delta)))
}
\arguments{
\item{delta}{Vector of Glass' \ifelse{latex}{\eqn{\Delta}}{\ifelse{html}{\out{&#916;}}{delta}} values.}

\item{nc}{Vector of control-group sample sizes.}

\item{ne}{Vector of experimental-group sample sizes.}

\item{use_pooled_sd}{Logical vector determining whether the pooled standard deviation was used (\code{TRUE}) or not (\code{FALSE}; default).}
}
\value{
Vector of d values corrected for small-sample bias.
}
\description{
Correct for small-sample bias in Glass' \ifelse{latex}{\eqn{\Delta}}{\ifelse{html}{\out{&#916;}}{delta}} values
}
\details{
The bias correction is estimated as:

\deqn{\Delta_{c}=\Delta_{obs}\frac{\Gamma\left(\frac{n_{control}-1}{2}\right)}{\Gamma\left(\frac{n_{control}-1}{2}\right)\Gamma\left(\frac{n_{control}-2}{2}\right)}}{delta_c = delta * gamma((nc - 1) / 2) / (sqrt((nc - 1) / 2) * gamma((nc - 2) / 2))}

where \eqn{\Delta}{delta} is the observed effect size, \eqn{\Delta_{c}}{delta_c} is the
corrected estimate of \ifelse{latex}{\eqn{\Delta}}{\ifelse{html}{\out{&#916;}}{delta}},
\eqn{n_{control}}{nc} is the control-group sample size, and
\eqn{\Gamma()}{gamma()} is the \link[base:gamma]{gamma function}.
}
\examples{
correct_glass_bias(delta = .3, nc = 30, ne = 30)
}
\references{
Hedges, L. V. (1981). Distribution theory for Glass’s estimator of effect
size and related estimators. \emph{Journal of Educational Statistics, 6}(2),
107–128. \url{https://doi.org/10.2307/1164588}
}
