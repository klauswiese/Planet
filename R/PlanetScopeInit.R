PlanetScopeInit <- function(DirPlanet, Email, Password){
  #Initialize the planet Python client
  Inicializar <- paste0(DirPlanet, " init ", "--email ", Email, " --password ", Password)
  system(Inicializar)
}