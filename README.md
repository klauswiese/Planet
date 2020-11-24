# Package to download Planet Scope images (4.77 m res) 

The Norway’s International Climate and Forests Initiative Imagery Program paid millions so that we can all have access to high resolution images for monitoring the tropical forest.There are several other planet-products, but those are not part of the approach here.

This is a very expirimental package and have only been tested in Linux.

# 1. Planet - NICFI Account

First you need an account on planet platform to access Planet Scope Imaginary, this can be done [here](https://www.planet.com/nicfi/)

# 2. Planet Python client

Second you must install the planet python client, open your terminal and install planet. All documentation available [here](https://github.com/planetlabs/planet-client-python)
```
pip install planet

```

# 3. Install Planet Package

```
devtools::install_github("klauswiese/Planet")
```

# 4. First Steps

## 4.1 Available Image Collections

Planet have daily images taken by dove satellites (with this type of account we do not have access to daily images), derivate from this images they generate biannual composites (mostly cloud free) and monthly images for monitorig forest in the tropics. 

### 4.1.1 Planet Scope Tropical Normalized Analysis Biannual Archive

As in rigth now (Octuber 30 2020), there are 4 composites:
- First semester of 2017
- Second semester of 2017
- First semester of 2018
- Second semester of 2018
- First semester of 2019
- Second semester of 2019
- First semester of 2020

### 4.1.2 Planet Scope Tropical Normalized Analysis Monthly Monitoring

For the monthly monitoring only exist for September and october 2020.

## 4.2 PlanetScopeNICFI()

This function is to see the images avalilable to download.

```
library(Planet)
PlanetScopeNICFI()

#$`Biannual Collection`
#  PS_Tropical_Normalized_Analytic_Biannual
#1                                June 2017
#2                            December 2017
#3                                June 2018
#4                            December 2018
#5                                June 2019
#6                            December 2019
#7                                June 2020

#$`Monthly Collection`
#  PS_Tropical_Normalized_Analytic_Monthly
#1                          September 2020
#2                            October 2020

```

## 4.3 PlanetScopeInit(), PlanetScopeBiannual() and PlanetScopeMonthly()

PlanetScopeInit() is for initialize the planet python client, this function needs the email account, the password and the directory whehe you put the planet client. In a linux SO you can find the directory by typing in your terminal: 

```
which planet
```
This will display the directory where your planet python client is installed. Now you have all the elements to run this package.

```
library(Planet)

# 1. Initialize ----

#Data for initialize
Email <- "the email you use to create planet - NICFI account"
Password <- "The password you set"
DirPlanet <- "~/anaconda3/bin/planet"#My case

#Initialize the planet Python client
PlanetScopeInit(DirPlanet = DirPlanet, 
                Email = Email, 
                Password = Password
                  
# 2. Monthly ----

#Data to download Planet Scope Monthly Image
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
