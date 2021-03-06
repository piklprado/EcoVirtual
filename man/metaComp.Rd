\name{metaComp}
\alias{metaComp}

\title{
Metapopulation Competition Model
}

\description{
Simulate a metapopulation dynamics with two competing species, a superior and an inferior competitor. Includes the possibility of habitat destruction in the model.
}

\usage{
metaComp(tmax, rw, cl, fi1, fi2, i1, i2, pe, D=0, anima=TRUE)
}

\arguments{
  \item{tmax}{
maximum simulation time.
}
  \item{cl}{
number of columns for the simulated landscape.
}
  \item{rw}{
number of rowns for the simulated landscape.
}
  \item{fi1}{
initial fraction of patches occupied by the superior competitor.
}
  \item{fi2}{
initial fraction of patches occupied by the inferior competitor.
}
  \item{i1}{
colonization coefficient for the superior competitor.
}
  \item{i2}{
colonization coefficient for the inferior competitor.
}
  \item{pe}{
probability of extinction (equal for both species).
}
  \item{D}{
proportion of habitat destroyed.
}
  \item{anima}{
logical; if TRUE, show simulation frames.
}
}

\details{
This function uses the metapopulationa model with internal colonization (see function metaCi in \code{\link{metapopulation}}) for the superior competitor. The inferior competitor can only occupy empty patches and is displaced by the superior competitor if it occupies the same patch.

The argument 'D' inserts the influences of habitat destruction in the model.

The number of patches in the simulated landscape is defined by rw*cl. 
}

\value{
'metaComp' returns a graphic with the simulated landscapes and the results of the proportion of patch occupied by both species. 

This function also return an invisible array with the simulation results.


}
 
\references{
Stevens, M.H.H. 2009. A primer in ecology with R. New York, Springer.

Gotelli, N.J. 1991. Metapopulation models: the rescue effect, the propagule rain, and the core-satellite hypothesis. The American Naturalist 138:768-776.
}

\author{
Alexandre Adalardo de Oliveira and Paulo Inacio Prado \email{ecovirtualpackage@gmail.com}
}

\seealso{
	\code{\link{comCompete}},
        \url{http://ecovirtual.ib.usp.br}

}

\examples{
\dontrun{
metaComp(tmax=100,cl=20,rw=20,fi1=0.1,fi2=0.4,i1=0.4,i2=0.5,pe=0.25)
metaComp(tmax=100,cl=20,rw=20,fi1=0.1,fi2=0.4,i1=0.4,i2=0.5,pe=0.25, D=0.1)
}
}

\keyword{metapopulation}
\keyword{simulation}
