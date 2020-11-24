#Función para ver los productos NICFI disponibles


PlanetScopeNICFI <- function(){
  NICFI_BI <- data.frame("PS_Tropical_Normalized_Analytic_Biannual" = c("June 2017",
                                                                        "December 2017",
                                                                        "June 2018",
                                                                        "December 2018",
                                                                        "June 2019",
                                                                        "December 2019",
                                                                        "June 2020"))
  
  NICFI_Monthly <- data.frame("PS_Tropical_Normalized_Analytic_Monthly" = c("September 2020", "October 2020"))
  
  l <- list(NICFI_BI, NICFI_Monthly)
  names(l) <- c("Biannual Collection", "Monthly Collection")
  return(l)
}