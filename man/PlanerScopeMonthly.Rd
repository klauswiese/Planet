\name{PlanetScopeMonthly}
\alias{PlanetScopeMonthly}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Planet Scope Monthly composite for the tropics from NICFI
}
\description{
Download Planet Scope imagesfrom NICFI project using planet python client}
\usage{
  PlanetScopeMonthly(Name, DirPlanet, AOI, Year, Month)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Name}{Text to name the folder for download images}
  \item{DirPlanet}{Directory to planet API install}
  \item{AOI}{Directory to Area of Interest Vector (any format sf can read ex: .GPKG, .shp)}
  \item{Year}{2020 by default, only year with available images}
  \item{Month}{9 for september, the are monthy images for september (9) 2020, october (10) 2020 and november (11) 2020}
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


#Data to download Planet Scope Image
AOI <- "~/To/Your/vector/directory/AOI.shp"
Name <- "TheNameYouLike"
Year <- 2020
Month <- 9

#Execute function
PlanetScopeMonthly(Name = Name, 
                    AOI = AOI, 
                    DirPlanet = DirPlanet, 
                    Year = Year, 
                    Month = Month)
  
}

