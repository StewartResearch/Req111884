# Get some data on a species, or species, from an online portal

#install packages you might need

Require("dplyr")
Require("sf")
Require("sp")
Require("raster")
install.packages("here")

## Example here today includes a data set I found on OpenCanada on
# the number of canadian species by ecosystem, from 19702 through 2018:

# website: https://data-donnees.az.ec.gc.ca/data/species/protectrestore/great-blue-heron-species-at-risk-british-columbia/pacific-great-blue-heron-ardea-herodias-fannini-potential-area-of-occupancy-british-columbia/?lang=en
#CSV file available

CanadaSpecies<-read.csv("CanadianSpeciesByEcosystem.csv")
head(CanadaSpecies)
#headers are missing, but will leave for now (running out of time)

#Simple data exploration code:

plot(CanadaSpecies$X.1)
plot(CanadaSpecies$Canadian.species.index.by.system..1970.to.2018, CanadaSpecies$X.1) #year by number of Terrestrial species
#ugly labels, but no time to fix!

#stat exploring data
source("HighstatlibV6.R")
install.packages("here")
source(here("data", "zuur_ieno_elphick_2010", "HighstatLib.r"))

#conduct Zuur data exploration
#bring in landscape data: e.g. Landcover of Canada:
# 
