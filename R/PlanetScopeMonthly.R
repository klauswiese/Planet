#Function to download Monthly Planet Scope Images

PlanetScopeMonthly <- function(Name, DirPlanet, AOI, Year=2020, Month=9){

  #Crear carpeta para descargar imagen
  Cimagen <- paste0("PS_", Name, "_", Year, "_", Month)
  if(file.exists(Cimagen) == FALSE) dir.create(Cimagen)
  
  #bounding box
  Sitio <- read_sf(AOI)
  Sitio <- st_transform(Sitio, crs = 4326)
  xmin <- st_bbox(Sitio)[1]
  xmax <- st_bbox(Sitio)[3]
  ymin <- st_bbox(Sitio)[2]
  ymax <- st_bbox(Sitio)[4]
  Extent <- paste(xmin, ymin, xmax, ymax, sep=",")
  
  
  Month2 <- ifelse(Month < 10, paste0("0", Month), Month)
  
  Selection <- paste0(" mosaics download planet_medres_normalized_analytic_", Year ,"-", Month2, "_mosaic ")
  
  #Image selection
  #Selection <- ifelse(Year == 2020 & Month == 9, " mosaics download planet_medres_normalized_analytic_2020-09_mosaic ", "No Data Avalaible For That Month")
  
  print(Selection)
  
  #Sentencia de descarga
  Descarga <- paste0(DirPlanet, Selection,
                     "--bbox=", Extent, " --dest ", paste0(getwd(), "/", Cimagen))
  system(Descarga)
}
