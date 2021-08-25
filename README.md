[![Project Status](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE)
[![GitHub commit](https://img.shields.io/github/last-commit/pcm-dpc/COVID-19)](https://github.com/klauswiese/pnlt/commits)
![](https://visitor-badge.laobi.icu/badge?page_id=klauswiese.klauswiese/Planet) 

# Package to download Planet Scope images (4.77 m res)

[Norway’s International Climate and Forests Initiative](https://www.nicfi.no/) Imagery Program paid millions so we can all have access to [planet](https://www.planet.com/) high resolution images for monitoring the tropical forest. There are several other planet-products, but those are not part of the approach here.

This is a very experimental package and have only been tested in Linux (I am sure this will not work on Windows, and i am not planning to make it so).


\| [`Planet - NICFI Account`](#1-planet---nicfi-account) \| [`Planet Python client`](#2-planet-python-client) \|
[`Install Planet Package`](#3-install-planet-package) \| [`First Steps`](#4-first-steps) \|


## 1. planet - NICFI Account

First you need an account on planet platform to access Planet Scope Imaginary, this can be done [here](https://www.planet.com/nicfi/)

## 2. Planet Python client

Second you must install the planet python client, open your terminal and install planet. All documentation available [here](https://github.com/planetlabs/planet-client-python)


```console
pip install planet
```


## 3. Install Planet Package


```r
devtools::install_github("klauswiese/Planet")
```


## 4. First Steps
### 4.1 Available Image Collections

Planet have daily images taken by dove satellites (with this type of account we do not have access to daily images), derivate from this images they generate biannual composites (mostly cloud free) and monthly images for monitoring forest in the tropics.

### 4.1.1 Planet Scope Tropical Normalized Analysis Biannual Archive

As in rigth now (August 7 2021), there are 10 composites:
```r
    Second semester of 2015
    First semester of 2016
    Second semester of 2016
    First semester of 2017
    Second semester of 2017
    First semester of 2018
    Second semester of 2018
    First semester of 2019
    Second semester of 2019
    First semester of 2020
```

### 4.1.2 Planet Scope Tropical Normalized Analysis Monthly Monitoring

For the monthly monitoring only exist for september, october, november and december of 2020 and january, february, march, april, may, june and july from 2021.

## 4.2 PlanetScopeNICFI()

This function is to see the images available to download.

```r
library(Planet)
PlanetScopeNICFI()

$`Biannual Collection`
   PS_Tropical_Normalized_Analytic_Biannual
1                             December 2015
2                                 June 2016
3                             December 2016
4                                 June 2017
5                             December 2017
6                                 June 2018
7                             December 2018
8                                 June 2019
9                             December 2019
10                                June 2020

$`Monthly Collection`
  PS_Tropical_Normalized_Analytic_Monthly
1                          September 2020
2                            October 2020
3                           November 2020
4                           December 2020
5                            January 2021
6                           February 2021
7                              March 2021
8                              April 2021
9                                May 2021
10                              June 2021
11                              July 2021
```

## 4.3 PlanetScopeInit(), PlanetScopeBiannual() and PlanetScopeMonthly()

PlanetScopeInit() is for initialize the planet python client, this function needs the email account, the password and the directory where you put the planet client. In a linux SO you can find the directory by typing in your terminal:

```console
which planet

#~/miniconda3/bin/planet
```

This will display the directory where your planet python client is installed. Now you have all the elements to run this package.

```r
library(Planet)

# 1. Initialize ----

#Data for initialize
Email <- "the email you use to create planet - NICFI account"
Password <- "The password you set"
DirPlanet <- "~/miniconda3/bin/planet"

#Initialize the planet Python client
PlanetScopeInit(DirPlanet = DirPlanet, 
                Email = Email, 
                Password = Password)
                  
# 2. Monthly ----

#Data to download Planet Scope Monthly Image
AOI <- "~/To/Your/vector/directory/AOI.shp"
Name <- "TheNameYouLike"
Year <- 2021 
Month <- 6

#Execute function
PlanetScopeMonthly(Name = Name, 
                    AOI = AOI, 
                    DirPlanet = DirPlanet, 
                    Year = Year, 
                    Month = Month)
# 3. Biannual ----

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
```
