# Package to download Planet Scope images (4.77 m res) 

The Norway’s International Climate and Forests Initiative Imagery Program paid millions so that we can all have access to high resolution images for monitoring the tropical forest. There are varoios other productos from planet, there are several other products, but those are not part of the approach here.

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

Planet have daily images taken by dove satellites (with this type of account we dont have access to daily images), derivate from this images they generate biannual composites (mostly cloud free) and monthly images for monitorig forest in the tropics. 

### 4.1.1 Planet Scope Tropical Normalized Analysis Biannual Archive

As in rigth now (Octuber 30 2020), there are 4 composites:

- Second semester of 2018
- First semester of 2019
- Second semester of 2019
- First semester of 2020

### 4.1.2 Planet Scope Tropical Normalized Analysis Monthly Monitoring

For the monthly monitoring only exist for September 2020.

## 4.2 PlanetScopeNICFI()

THis funtion is to see the images avalilable to download.

```
library(Planet)
PlanetScopeNICFI()

#$`Biannual Collection`
#  PS_Tropical_Normalized_Analytic_Biannual
#1                            December 2018
#2                                June 2019
#3                            December 2019
#                                June 2020

#$`Monthly Collection`
#  PS_Tropical_Normalized_Analytic_Monthly
#1                          September 2020



```
