% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis_tools.R
\name{split_frequencies}
\alias{split_frequencies}
\title{Calculate which features the forest split on at each depth.}
\usage{
split_frequencies(forest, max.depth = 4)
}
\arguments{
\item{forest}{The trained forest.}

\item{max.depth}{Maximum depth of splits to consider.}
}
\value{
A matrix of split depth by feature index, where each value
is the number of times the feature was split on at that depth.
}
\description{
Calculate which features the forest split on at each depth.
}
\examples{
\donttest{
# Train a quantile forest.
n <- 50
p <- 10
X <- matrix(rnorm(n * p), n, p)
Y <- X[, 1] * rnorm(n)
q.forest <- quantile_forest(X, Y, quantiles = c(0.1, 0.5, 0.9))

# Calculate the split frequencies for this forest.
split_frequencies(q.forest)
}

}
