\name{iplot.list}
\alias{iplot.list}
\alias{iplot.set}
\alias{iplot.next}
\alias{iplot.prev}
\alias{iplot.cur}
\alias{iplot.off}
\title{
Interactive plots management functions.
}
\description{
  These functions are used to manage currently open iPlots. Exactly one
  of the open iPlots is the current plot. Every newly created iPlot
  automatically becomes the current plot. Any plot specific functions, such
  as \code{\link{ilines}} operate on the current plot.

  Please note that the functions below are provided for convenience
  only. It is also possible to use plot objects directly without using
  the plot list. Each function creating a new iPlot directly returns
  the plot object which can then be used to any subsequent calls to
  \code{ilines}, \code{iplot.opt} etc.
  
  \code{\link{iplot.list}} returns all currently registered iPlots
  (even if they are hidden).
    
  \code{\link{iplot.cur}} returns the ID of the current plot.
  
  \code{\link{iplot.next}} and \code{\link{iplot.prev}} return the ID
  of the next resp. previous plot in the list relative to the plot
  specified by the argument.
  
  \code{\link{iplot.set}} makes the plot with the specified ID current.
  
  \code{\link{iplot.off}} closes the plot. 
}
\usage{
iplot.list()
iplot.cur()
iplot.next(which=iplot.cur())
iplot.prev(which=iplot.cur())
iplot.set(which=iplot.next())
iplot.off(plot=iplot.cur())
}
\arguments{
  \item{which}{An integer specifying a plot number.}
  \item{plot}{Plot object or plot number of a plot to close.}
}
\seealso{
\code{\link{ilines}}, \code{\link{iplot}}, \code{\link{ihist}}, \code{\link{ibar}}
}
\examples{
data(iris)
attach(iris)
iplot(Sepal.Width,Petal.Width)
ibar(Species)
iplot.list()
}
\keyword{iplot}

