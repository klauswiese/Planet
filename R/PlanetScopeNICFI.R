#Función para ver los productos NICFI disponibles


PlanetScopeNICFI <- function(){
  NICFI_BI <- data.frame("PS_Tropical_Normalized_Analytic_Biannual" = c("December 2015",
                                                                        "June 2016",
                                                                        "December 2016",
                                                                        "June 2017",
                                                                        "December 2017",
                                                                        "June 2018",
                                                                        "December 2018",
                                                                        "June 2019",
                                                                        "December 2019",
                                                                        "June 2020"))
  
  NICFI_Monthly <- data.frame("PS_Tropical_Normalized_Analytic_Monthly" = c("September 2020", 
                                                                            "October 2020", 
                                                                            "November 2020",
                                                                            "December 2020", 
                                                                            "January 2021", 
                                                                            "February 2021",
                                                                            "March 2021",
                                                                            "April 2021",
                                                                            "May 2021",
                                                                            "June 2021",
                                                                            "July 2021",
                                                                            "August 2021",
                                                                            "September 2021",
                                                                            "October 2021",
                                                                            "November 2021",
                                                                            "December 2021",
                                                                            "January 2022",
                                                                            "Februery 2022",
                                                                            "march 2022",
                                                                            "April 2022")
                             )
  
  l <- list(NICFI_BI, NICFI_Monthly)
  names(l) <- c("Biannual Collection", 
                "Monthly Collection"
               )
  return(l)
}
