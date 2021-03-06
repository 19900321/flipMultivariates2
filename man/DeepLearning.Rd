% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deeplearning.R
\name{DeepLearning}
\alias{DeepLearning}
\title{Fit a neural network model}
\usage{
DeepLearning(formula, data = NULL, subset = NULL, weights = NULL,
  output = "Accuracy", missing = "Exclude cases with missing data",
  normalize = TRUE, seed = 12321, show.labels = FALSE,
  hidden.nodes = 10, max.epochs = 100)
}
\arguments{
\item{formula}{A formula of the form \code{groups ~ x1 + x2 + ...}
That is, the response is the grouping factor and the right hand side
specifies the (non-factor) discriminators, and any transformations, interactions,
or other non-additive operators apart from \code{.} will be ignored.}

\item{data}{A \code{\link{data.frame}} from which variables specified
in formula are preferentially to be taken.}

\item{subset}{An optional vector specifying a subset of observations to be
used in the fitting process, or, the name of a variable in \code{data}. It
may not be an expression.}

\item{weights}{An optional vector of sampling weights, or the
name of a variable in \code{data}. It may not be an expression.}

\item{output}{One of \code{"Accuracy"}, \code{"Prediction-Accuracy Table"}, \code{"Cross Validation"}
or \code{"Network Layers"}.}

\item{missing}{How missing data is to be treated. Options:
\code{"Error if missing data"},
\code{"Exclude cases with missing data"}, or
\code{"Imputation (replace missing values with estimates)"}.}

\item{normalize}{Logical; if \code{TRUE} all predictor variables are normalized to have zero mean
and unit variance.}

\item{seed}{The random number seed.}

\item{show.labels}{Shows the variable labels, as opposed to the labels, in the outputs, where a
variables label is an attribute (e.g., attr(foo, "label")).}

\item{hidden.nodes}{A \code{\link{vector}} that specifies the number of hidden nodes in each
hidden layer (and hence implicitly the number of hidden layers). Alternatively, a comma-delimited
string of integers may be provided.}

\item{max.epochs}{Integer; the maximum number of epochs for which to train the network.}
}
\description{
Fit a neural network model
}
\details{
Categorical predictor variables are converted to binary (dummy) variables.

The model is trained first using a random 70% of the data (after any subset) while measuring the
cross-validation loss on the remaining 30% of the data. Training is stopped at the sooner of
\code{max.epochs} and 3 epochs of no improvement in cross-validation loss. The final model
is then retrained on all data (after any \code{"subset"}).
}
