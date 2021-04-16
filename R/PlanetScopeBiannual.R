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
      
  Selection <-      ifelse(Year == 2015 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2015-12_2016-05_mosaic ",  
                      ifelse(Year == 2016 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2016-06_2016-11_mosaic ",
                        ifelse(Year == 2016 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2016-12_2017-05_mosaic ",
                          ifelse(Year == 2017 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2017-06_2017-11_mosaic ",  
                            ifelse(Year == 2017 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2017-12_2018-05_mosaic ",
                              ifelse(Year == 2018 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2018-06_2018-11_mosaic ", 
                                ifelse(Year == 2018 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2018-12_2019-05_mosaic ", 
                                  ifelse(Year == 2019 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2019-06_2019-11_mosaic ", 
                                    ifelse(Year == 2019 & Semester == 2, " mosaics download planet_medres_normalized_analytic_2019-12_2020-05_mosaic ", 
                                      ifelse(Year == 2020 & Semester == 1, " mosaics download planet_medres_normalized_analytic_2020-06_2020-08_mosaic ", 
                                             "No Data Avalaible For That Semester"))))))))))
  

  print(Selection)
  
  #Sentencia de descarga
  Descarga <- paste0(DirPlanet, Selection,
                     "--bbox=", Extent, " --dest ", paste0(getwd(), "/", Cimagen))
  system(Descarga)
  
  #Lista de imágenes
  #t.lst <- list.files(Cimagen, pattern=".tif", full.names=TRUE)
  
  #Lista de imágenes descargadas
  #out.tmp <- paste0("./", Cimagen,"/t_list.txt")
  
  #Directorio para guardar mosaico virtual
  #vrt.tmp <- paste0("./", Cimagen, "/", Cimagen, ".vrt")
  
  #Guardar txt con lista de imágenes
  #cat(t.lst, sep="\n", file=out.tmp)
  
  #Crear imagen virtual
  #system(paste0('gdalbuildvrt -input_file_list ', out.tmp, ' ', vrt.tmp))
}
