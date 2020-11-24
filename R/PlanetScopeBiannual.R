#Function to download Biannual Planet Scope Images

PlanetScopeBiannual <- function(Name, DirPlanet, AOI, Year, Semester){

  #Crear carpeta para descargar imagen
  Cimagen <- paste0("PS_", Name, "_", Year, "_", Semester)
  if(file.exists(Cimagen) == FALSE) dir.create(Cimagen)
  
  #bounding box
  Sitio <- read_sf(AOI)
  Sitio <- st_transform(Sitio, crs = 4326)
  xmin <- st_bbox(Sitio)[1]
  xmax <- st_bbox(Sitio)[3]
  ymin <- st_bbox(Sitio)[2]
  ymax <- st_bbox(Sitio)[4]
  Extent <- paste(xmin, ymin, xmax, ymax, sep=",")
  
  
  
  #Image selection
      
  Selection <-  ifelse(Year == 2017 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2017-06_2017-11_mosaic ",  
                  ifelse(Year == 2017 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2017-12_2018-05_mosaic ",
                    ifelse(Year == 2018 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2018-06_2018-11_mosaic ", 
                        ifelse(Year == 2018 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2018-12_2019-05_mosaic ", 
                          ifelse(Year == 2019 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2019-06_2019-11_mosaic ", 
                             ifelse(Year == 2019 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2019-12_2020-05_mosaic ", 
                                    ifelse(Year == 2020 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2020-06_2020-08_mosaic ", "No Data Avalaible For That Semester")))))))
  
  print(Selection)
  
  #Sentencia de descarga
  Descarga <- paste0(DirPlanet, Selection,
                     "--bbox=", Extent, " --dest ", paste0(getwd(), "/", Cimagen))
  system(Descarga)
    
}
