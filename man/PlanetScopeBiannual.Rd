\name{PlanetScopeBiannual}
\alias{PlanetScopeBiannual}

\title{
  Planet Scope Monthly composite for the Planet Scope Tropical Normalized Analytic Biannual Archive from NICFI
}
\description{
Download Planet Scope imagesfrom NICFI project using planet python client}
\usage{
  PlanetScopeBiannual(Name, DirPlanet, AOI, Year, Semester)
}

\arguments{
  \item{Name}{Text to name the folder for download images}
  \item{DirPlanet}{Directory to planet API install}
  \item{AOI}{Directory to Area of Interest Vector (any format sf can read ex: .GPKG, .shp)}
  \item{Year}{Image year}
  \item{Semester}{first or second semester of the year}
}

\value{Planet scoper biannual composite for the area of interest}

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
Semester <- 1

#Execute function
PlanetScopeMonthly(Name = Name, 
                    AOI = AOI, 
                    DirPlanet = DirPlanet, 
                    Year = Year, 
                    Semester = Semester)
  
}

