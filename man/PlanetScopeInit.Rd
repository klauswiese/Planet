\name{PlanetScopeInit}
\alias{PlanetScopeInit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Initialize the planet Python client
}
\description{
  Initialize the planet Python client}
\usage{
  PlanetScopeInit(DirPlanet, Email, Password)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DirPlanet}{Directory to planet API install}
  \item{Email}{Email for NICFI, you can create your account in https://www.planet.com/nicfi/}
  \item{Password}{Password for NICFI program}
}

\value{Planet scoper monthly composite for the area of interest}

\author{Klaus Wolfgang Wiese Acosta}


\examples{
  #Data to Initialize the planet Python client
  DirPlanet <- "~/anaconda3/bin/planet"
  Email <- "Your email for planet NICFI account"
  Password <- "Your passwrod for planet NICFI account"
  
  #Initialize the planet Python client
  PlanetScopeInit(DirPlanet = DirPlanet, 
                  Email = Email, 
                  Password = Password)
  
}

