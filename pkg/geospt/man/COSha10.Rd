\name{COSha10}
\alias{COSha10}
\docType{data}
\title{
Soil organic carbon database at a sampling depth of 0-10 cm
}
\description{
Soil organic carbon database of samples taken in different land covers and soil types at La Libertad Research Center at a sampling depth of 0-10 cm
}
\usage{data(COSha10)}
\format{
  A data frame with 122 observations on the following 10 variables.
  \describe{
    \item{\code{ID}}{ID of each sampling site}
    \item{\code{x}}{\emph{x}-coordinate of each site. Spatial reference system: UTM 18N}
    \item{\code{y}}{\emph{y}-coordinate of each site. Spatial reference system: UTM 18N}
    \item{\code{DA10}}{measured soil bulk density (g cm\eqn{^{-3}})}
    \item{\code{CO10}}{measured soil carbon concentration (\%)}
    \item{\code{COB1r}}{land cover at each sampling site in 2007. See details below}
    \item{\code{S_UDS}}{soil type at each sampling site. See details below}
    \item{\code{COSha10}}{calculated total soil carbon stock (t ha\eqn{^{-1}}). See details below}
    \item{\code{Cor4DAidep}}{total soil carbon stock (t ha\eqn{^{-1}}) corrected by soil compaction factors}
    \item{\code{CorT}}{corrected total soil carbon stock with Box-Cox transformation applied}
  }
}
\details{
A total of 150 samples for a 0-10 cm depth were collected and analyzed for soil bulk density and organic carbon concentration in 2007 at La Libertad Research Center in Villavicencio, Colombia. The samples were taken in soils under different land cover: rice crops (\code{Az}), citrus crops (\code{Ci}), forest plantations (\code{Cpf}), annual crops (\code{Ctv}), grasses (\code{P}), and oil palm crops (\code{Pl}).
In the soil type names, the first two letters correspond to the short name of the soil series, the lower-case letters indicate the type of slope, and the number denotes the type of soil drainage. 

Total soil carbon stock \eqn{COSha} was calculated as follows (Guo & Gifford, 2002):
\deqn{
COSha=DA*CO*d
}
where \eqn{DA} is soil bulk density (g cm\eqn{^{-3}}), \eqn{CO} is soil organic carbon concentration (\%) and \eqn{d} is sampling depth (cm). 

Given that the data did not fit a normal distribution, a Box-Cox transformation was applied as follows (Box & Cox, 1964):
\deqn{
Y'=\frac{Y^{\lambda}-1}{\lambda}
}
where \eqn{Y} corresponds to the original variable and \eqn{Y'} corresponds to the transformed variable, for \eqn{\lambda} different to zero. When \eqn{\lambda} equals zero, \eqn{Y'=\ln{Y}}. \eqn{\lambda} is the parameter that minimizes the mean square error of the regression model.

Some samples were discarded for the design of sampling networks. The complete database and description can be found in Santacruz (2010) and in Santacruz (2011). 
}
\source{
Santacruz, A. 2010. \emph{Design of optimal spatial sampling networks for the monitoring of soil organic carbon at La Libertad Research Center through the application of genetic algorithms}. M.Sc. Thesis. National University of Colombia, Bogot�. 162 p. (In Spanish)
}
\references{
Santacruz, A., 2011. \emph{Evolutionary optimization of spatial sampling networks. An application of genetic algorithms and geostatistics for the monitoring of soil organic carbon}. Editorial Acad�mica Espa�ola. 183 p. ISBN: 978-3-8454-9815-7 (In Spanish) 

Box, G., Cox, D., 1964. \emph{An analysis of transformations}. Journal of the Royal Statistical Society. Series B (Methodological) 26 (2), 211-252.

Guo, L., Gifford, R., 2002. \emph{Soil carbon stocks and land use change: a meta analysis}. Global Change Biology 8, 345-360.
}
\seealso{
\code{\link{COSha10map}} 
}
\examples{
data(COSha10)
str(COSha10)
}
\keyword{datasets}